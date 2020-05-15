alias 'CS'='cd /mnt/c/Users/shubh/Documents/cs'
alias 'HOME'='cd /mnt/c/Users/shubh'
alias 'gdrive'='cd /mnt/c/Users/shubh/Google\ Drive/School/UCSD'

alias 'java'='/mnt/c/Program\ Files/Java/jdk-11/bin/java.exe'
alias 'javadoc'='/mnt/c/Program\ Files/Java/jdk-11/bin/javadoc.exe'
alias 'javac'='/mnt/c/Program\ Files/Java/jdk-11/bin/javac.exe'

alias 'py'='python3.8'
alias 'pip'='python3.8 -m pip'

alias 'net'='/mnt/c/Users/shubh/Documents/cs/.scripts/connect_check'

alias 'upload'='/mnt/c/Users/shubh/Documents/cs/.scripts/upload'
alias 'download'='/mnt/c/Users/shubh/Documents/cs/.scripts/download'
alias 'verifyFiles'='/mnt/c/Users/shubh/Documents/cs/.scripts/verifyFiles'
alias 'finalcheck'='/mnt/c/Users/shubh/Documents/cs/.scripts/finalcheck'
alias 'update'='/mnt/c/Users/shubh/Documents/cs/.scripts/update'

alias 'ucsd'='net && ssh skulkarn@ieng6.ucsd.edu'
alias 'pi'='net && ssh skulkarn@pi-cluster-027.ucsd.edu'

alias 'll'='ls -Alh'

alias 'g'='git'

alias 'chrome'='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
alias 'docker-machine'='docker-machine.exe'

alias 'rstudio'='docker run --rm -d --name rstudio -e PASSWORD=password -p 8787:8787 -v /c/Users/shubh/Documents/cs/math183:/home/rstudio rocker/verse; \
        /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe \
        http://localhost:8787'

alias 'jupyter'='docker start jupyter-scipy-notebook'

alias 'start_jupyter'='docker run --name jupyter-scipy-notebook -d -p 8888:8888 \
              -v /c/Users/shubh/Documents/cs/jupyter:/home/jovyan/work \
              jupyter/scipy-notebook;'
