alias gitignorelocal="git update-index --assume-unchanged"

alias cd-current-scratch-org='cd $(current-scratch-org)'

alias jqc="jq --compact-output"

source ~/dotfiles/sf/aliases.zshrc
source ~/dotfiles/aws/aliases.zshrc

alias sso="aws-sso-login"

alias google_w3m='f() { w3m "https://www.google.com/search?q=$*"; unset -f f; }; f'

alias pbpwd='security find-generic-password -w -s mso | tr -d "\n" | pbcopy'

alias codesign-self='sudo codesign --sign "Code Signed by Me" --force'
