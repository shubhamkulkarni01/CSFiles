alias 'CS'='cd /c/Users/shubh/Documents/cs'
alias 'HOME'='cd /c/Users/shubh'
alias 'gdrive'='cd /c/Users/shubh/Google\ Drive/School/UCSD'

alias 'java'='/c/Program\ Files/Java/jdk-11/bin/java.exe'
alias 'javadoc'='/c/Program\ Files/Java/jdk-11/bin/javadoc.exe'
alias 'javac'='/c/Program\ Files/Java/jdk-11/bin/javac.exe'

alias 'py'='python3.8'
alias 'pip'='python3.8 -m pip'

alias 'net'='/c/Users/shubh/Documents/cs/.scripts/connect_check'

alias 'upload'='/c/Users/shubh/Documents/cs/.scripts/upload'
alias 'download'='/c/Users/shubh/Documents/cs/.scripts/download'
alias 'verifyFiles'='/c/Users/shubh/Documents/cs/.scripts/verifyFiles'
alias 'finalcheck'='/c/Users/shubh/Documents/cs/.scripts/finalcheck'
alias 'update'='/c/Users/shubh/Documents/cs/.scripts/update'

alias 'ucsd'='net && ssh skulkarn@ieng6.ucsd.edu'
alias 'pi'='net && ssh skulkarn@pi-cluster-027.ucsd.edu'

alias 'll'='ls -Alh'

alias 'g'='git'

alias 'chrome'='/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
alias 'docker-machine'='docker-machine.exe'

alias 'rstudio'='docker run --rm -d --name rstudio -e PASSWORD=password -p 8787:8787 -v /c/Users/shubh/Documents/cs/math183:/home/rstudio rocker/verse; \
        /c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe \
        http://localhost:8787'

alias 'jupyter'='docker start jupyter-scipy-notebook'

alias 'start_jupyter'='docker run --name jupyter-scipy-notebook -d -p 8888:8888 \
              -v /c/Users/shubh/Documents/cs/jupyter:/home/jovyan/work \
              jupyter/scipy-notebook;'
