alias init="sh $TOOLS_DIR/script/gen_toolsrc.sh -f && source \"$TOOLS_ENV_DIR/.toolsrc\""
alias ov="cv; echo \"$UCENTER_PASSWORD\" | sudo openconnect --protocol=anyconnect --servercert $VPN_TOPJOY_SERVER_CERT --user=$UCENTER_USERNAME --passwd-on-stdin $VPN_TOPJOY_HOST_IP:$VPN_TOPJOY_PORT >/dev/null 2>&1 &"
alias cv="ps -ax | grep -v 'sudo nohup openconnect' | grep 'openconnect' | grep -v 'grep' | awk '{print \$1}' | sudo xargs kill"

r(){
  ARG_STR=$@
  if [ $# -eq 0 ]; then
    ARG_STR="dev"
  fi
  skr cfg -l -cg -d $ARG_STR
}

alias ud="
cd $HOME/work/svn/doc
svn update
svnc
rsync -av --progress --delete $HOME/work/svn/doc/* \"$CLOUD_DRIVE_DIR/Documents/Vega/doc\"
cd $HOME/work/svn/devdoc
svn update
svnc
rsync -av --progress --delete $HOME/work/svn/devdoc/* \"$CLOUD_DRIVE_DIR/Documents/Vega/devdoc\"
cd ~
"

alias ue="
cd $HOME/work/svn/config
svn update
svnc
rsync -av --progress --delete $HOME/work/svn/config/* \"$CLOUD_DRIVE_DIR/Documents/Vega/config\"
cd $HOME/work/svn/config_release
svn update
svnc
rsync -av --progress --delete $HOME/work/svn/config_release/* \"$CLOUD_DRIVE_DIR/Documents/Vega/config_release\"
cd ~
"

alias uv="
cd $HOME/work/svn/winClient
svn update
svnc
cd ~
"
