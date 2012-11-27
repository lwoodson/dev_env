# cgrep:  Recursively grep through code files outside of local VCS.
alias cgrep='egrep -rnH --exclude=tags --exclude-dir=.git --exclude-dir=.svn --include=*.{rb,erb,js,html,xhtml,rhtml,erb,yml,sql}'

# lgrep: Recursively grep through log files found in common places.
alias lgrep='egrep -rnH --include=*.log --include=log/* --include=logs/*'
