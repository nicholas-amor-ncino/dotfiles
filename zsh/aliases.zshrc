
alias gitignorelocal="git update-index --assume-unchanged"

alias cd-current-scratch-org="cd `current-scratch-org`"

alias sflist="sfdx force:org:list"
alias sfcreate="sfdx force:org:create"
alias sfdisplay="sfdx force:org:display"
alias sfopen="sfdx force:org:open"
alias sfpush="sfdx force:source:push"
alias sfdelete="sfdx force:org:delete"
alias sfquery="sfdx force:data:soql:query --query"
alias sflogout="sfdx force:auth:logout --noprompt --targetusername"

alias sfdebug-enable="_sfuserset UserPreferencesUserDebugModePref true"
alias sfdebug-disable="_sfuserset UserPreferencesUserDebugModePref false"

alias sflws-enable="sfdx data update record --usetoolingapi --sobject SecuritySettings --sobjectid 000000000000000AAA --values \"FullName='Security' Metadata='{\\\"sessionSettings\\\":{\\\"lockerServiceNext\\\":true}}'\""
alias sflws-disable="sfdx data update record --usetoolingapi --sobject SecuritySettings --sobjectid 000000000000000AAA --values \"FullName='Security' Metadata='{\\\"sessionSettings\\\":{\\\"lockerServiceNext\\\":false}}'\""

alias sfuser-locale-default="_sfuserset LocaleSidKey en_US"
alias sfuser-locale-home="_sfuserset LocaleSidKey en_AU "

alias sfuser-tz-default="_sfuserset TimeZoneSidKey America/Los_Angeles"
alias sfuser-tz-universal="_sfuserset TimeZoneSidKey GMT"
alias sfuser-tz-home="_sfuserset TimeZoneSidKey Australia/Melbourne"

alias sso="aws-sso-login"
