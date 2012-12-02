PS1="[\u@\h \w] "
PS2=">"

# cgrep:  Recursively grep through code files outside of local VCS.
alias cgrep='egrep --color=auto -rnH --exclude=tags --exclude-dir=.git --exclude-dir=.svn --include=*.{rb,erb,js,html,xhtml,rhtml,erb,yml,sql}'

# lgrep: Recursively grep through log files found in common places.
alias lgrep='egrep --color=auto -rnH --include=*.log --include=log/* --include=logs/*'

# dlspeed:  Show your download speed for a 1Gb file.
alias dlspeed="curl -o /dev/null http://download.thinkbroadband.com/1GB.zip"

