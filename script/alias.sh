alias z=". $TOOLS_DIR/script/util/z.sh"

alias svnc="svn cleanup --vacuum-pristines"

alias gmr=~/.tools/script/util/git_merge_request.sh

alias klist="kubectl get pods -n game -o wide"
function kexec(){
    kubectl exec -it $1 -n game -- $2
}
function klog(){
    kubectl logs $1 -n game
}
function kswitch(){
    kubectl config use-context arn:aws-cn:eks:cn-north-1:429222372951:cluster/$1
}
function kshow(){
    kubectl describe pod $1 -n game
}
