
alias sfcreate="sf force org create"

alias sfdisplay="sf org display"
source ~/dotfiles/sf/org/display/aliases.zshrc

alias sflist="sf org list"
alias sfopen="sf org open"

alias sfpush="sf project deploy start"
alias sfpush-force="sf project deploy start --ignore-conflicts"

alias sfpull="sf project retrieve start"
alias sfpull-file="sf project retrieve start --source-dir"

alias sfdelete="sf org delete scratch"
alias sfrecord="sf data get record"
alias sflogout="sf force:auth:logout --no-prompt --target-org"
alias sfclass="sf apex generate class --output-dir . --name"

alias sfquery="sf data query --query"
source ~/dotfiles/sf/data/query/aliases.zshrc

# TODO async via sf apex get test
# TODO sync version too
alias sftest="sf apex test run --wait 30 --result-format junit"
alias sftest-class="sf apex test run --wait 30 --result-format junit --class-names"

alias sflogtail="sf apex tail log --color --skip-trace-flag"
alias sflogtail-debug="sf apex tail log --color --skip-trace-flag | grep USER_DEBUG"

# TODO replace script -- how to get debug messages tho
# alias sfapex="sf apex run 1> /dev/null <<< "
source ~/dotfiles/sf/apex/run/aliases.zshrc

# TODO: better name -- but don't overload sfupdate
alias sfrecordupdate="sf data update record"
source ~/dotfiles/sf/data/update/record/aliases.zshrc
