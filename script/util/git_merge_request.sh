#!/bin/sh

remote_url=`git remote get-url origin`
host_url=$remote_url
host_url_len=${#host_url}
if [[ $remote_url == git@* ]];then
    host_url="https://"`echo "${remote_url:4:${host_url_len}-8}" | sed 's/:/\//g'`
elif [[ $remote_url == http://* ]];then
    host_url=${remote_url:0:${host_url_len}-4}
elif [[ $remote_url == https://* ]];then
    host_url=${remote_url:0:${host_url_len}-4}
fi
current_branch=`git branch | sed -n '/\* /s///p'`

/Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge ${host_url}/-/merge_requests/new\?merge_request\[source_branch\]\=${current_branch}\&merge_request\[target_branch\]\=$1
