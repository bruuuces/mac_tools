alias init="sh $TOOLS_DIR/script/gen_toolsrc.sh -f && source \"$TOOLS_ENV_DIR/.toolsrc\""
alias z=". $TOOLS_DIR/script/util/z.sh"

alias ov="cv; echo \"$UCENTER_PASSWORD\" | sudo openconnect --protocol=anyconnect --servercert=$VPN_TOPJOY_SERVER_CERT --user=$UCENTER_USERNAME --passwd-on-stdin $VPN_TOPJOY_HOST_IP:$VPN_TOPJOY_PORT >/dev/null 2>&1 &"
alias cv="ps -ax | grep -v 'sudo nohup openconnect' | grep 'openconnect' | grep -v 'grep' | awk '{print \$1}' | sudo xargs kill"

alias rc="mtl cfg -J -u"
alias r="cd /Users/zhangbin/work/topjoy/pandora/backend/server/gameserver && mvn compile"

alias svnc="svn cleanup --vacuum-pristines"

alias gmr=~/.tools/script/util/git_merge_request.sh
