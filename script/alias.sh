alias init="sh $TOOLS_DIR/script/gen_toolsrc.sh -f && source \"$TOOLS_ENV_DIR/.toolsrc\""
alias ov="cv; echo \"$UCENTER_PASSWORD\" | sudo openconnect --protocol=anyconnect --servercert $VPN_TOPJOY_SERVER_CERT --user=$UCENTER_USERNAME --passwd-on-stdin $VPN_TOPJOY_HOST_IP:$VPN_TOPJOY_PORT >/dev/null 2>&1 &"
alias cv="ps -ax | grep -v 'sudo nohup openconnect' | grep 'openconnect' | grep -v 'grep' | awk '{print \$1}' | sudo xargs kill"

alias r="skr cfg -l -cg -d dev"

alias ud="
cd $HOME/work/svn/devdoc
svn update
svnc
cd ~
"

alias ue="
cd $HOME/work/svn/config
svn update
svnc
cd $HOME/work/svn/config_release
svn update
svnc
cd $HOME/work/svn/config_online
svn update
svnc
cd $HOME/work/svn/config_preRelease
svn update
svnc
cd ~
"

alias uv="
cd $HOME/work/svn/winClient
svn update
svnc
cd ~
"

alias gmr=~/.tools/script/util/git_merge_request.sh
