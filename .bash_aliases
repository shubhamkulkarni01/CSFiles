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
# alias 'git'='hub'

alias 'rstudio'='docker run --rm -d --name rstudio -e PASSWORD=password -p 8787:8787 -v /c/Users/shubh/Documents/cs/math183:/home/rstudio rocker/verse; \
        /c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe \
        http://localhost:8787'

# alias 'jupyter'='docker run --rm --name jupyter-scipy-notebook -d -p 8888:8888 \
#               -v jupyter-scipy-notebook:/home/jovyan \
#               -v /c/Users/shubh/Documents/cs/jupyter:/home/jovyan/work \
#               -e JUPYTER_ENABLE_LAB=yes \
#               jupyter/scipy-notebook && sleep 2 && docker logs jupyter-scipy-notebook'

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
