#!/bin/sh

CMD=$0
TOOLSRC="$TOOLS_ENV_DIR/.toolsrc"

run(){
  if [ ! -f "$TOOLSRC" ]; then
    touch "$TOOLSRC"
  fi
  echo "#############################################" > "$TOOLSRC"
  echo "# THIS IS THE GENERATED FILE, DO NOT EDIT" >> "$TOOLSRC"
  echo "#############################################" >> "$TOOLSRC"
  echo "" >> "$TOOLSRC"

  VPN_TOPJOY_HOST_IP=`sh $TOOLS_DIR/script/util/get_ip.sh $VPN_TOPJOY_DOMAIN_NAME`
  echo "$VPN_TOPJOY_DOMAIN_NAME --> $VPN_TOPJOY_HOST_IP"
  echo "export VPN_TOPJOY_HOST_IP=$VPN_TOPJOY_HOST_IP" >> "$TOOLSRC"
  VPN_TOPJOY_SERVER_CERT=`echo "no" | openconnect --protocol=anyconnect $VPN_TOPJOY_HOST_IP:$VPN_TOPJOY_PORT 2>&1 | grep "\-\-servercert" | awk '{print($2)}'`
  echo "export VPN_TOPJOY_SERVER_CERT=$VPN_TOPJOY_SERVER_CERT" >> "$TOOLSRC"
  echo "--servercert=$VPN_TOPJOY_SERVER_CERT"
}

usage(){
  echo "usage: $CMD [-f]"
}

while [ $# -gt 0 ]; do
    case $1 in
        -f)
            echo "强制生成 TOOLSRC 配置文件"
            run
            exit 0
            ;;
        -h)
            usage
            exit 0
            ;;
        \?)
            usage
            exit 2
            ;;
    esac
done

if [ ! -f "$TOOLSRC" ]; then
  echo "生成 TOOLSRC 配置文件"
  run
  exit 0
fi
