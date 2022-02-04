alias 'HOME'='cd /c/Users/shubh'
alias 'GDRIVE'='cd /c/Users/shubh/Google\ Drive/School/UCSD'

alias 'net'='~/.setup-files/connect_check'

alias 'upload'='~/.scripts/upload'
alias 'download'='~/.scripts/download'
alias 'verifyFiles'='~/.scripts/verifyFiles'
alias 'finalcheck'='~/.scripts/finalcheck'
alias 'update'='~/.scripts/update'

alias 'ucsd'='net && ssh skulkarn@ieng6.ucsd.edu'
alias 'pi'='net && ssh skulkarn@pi-cluster-027.ucsd.edu'

alias 'll'='ls -Alh'

alias 'g'='git'
complete -o bashdefault -o default -o nospace -F __git_wrap__git_main g

alias 'k'='kubectl'
complete -o default -F __start_kubectl k

alias {kcreate,kc}='kubectl create'
alias {kdelete,kd}='kubectl delete'
alias {kjobs,kj}='kubectl get jobs'
alias {kpods,kp}='kubectl get pods'
alias {kdescribe,kdesc}='kubectl describe'
alias {kexec,ke}='kubectl exec -it'

alias 'fkill'='kill -9 $(jobs -p)'
alias 'py'='python'

alias 'cdd'='_cdd'

function _cdd() {
    if [[ $# > 0 ]]; then
      cd -P $1
    else 
      cd -P .
    fi
}

alias 'display'="export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0"
alias 'nodisplay'="export DISPLAY="

alias 'open'='wslview'

function _wait() {
    secs=$1
    while [ $secs -gt 0 ]; do
           echo -ne "$secs\033[0K\r"
              sleep 1
                 : $((secs--))
             done
}
alias wait='_wait'

alias s3api='aws s3api --endpoint-url https://s3.nautilus.optiputer.net'
alias resnap='node_modules/.bin/jest -u'
alias jest="./node_modules/.bin/jest"

alias 'coverage'='open coverage/lcov-report/index.html'

alias devpod='~/.setup_files/devpod'

alias battery='powercfg.exe /batteryreport /output report.html && wslview report.html && sleep 2 && rm report.html'

alias bat='batcat'
alias clip='clip.exe'
