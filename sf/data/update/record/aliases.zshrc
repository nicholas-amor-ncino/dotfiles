alias sfrecord-debug-enable='sf data update record --sobject User --where "Username=$(sfusername)" --values "UserPreferencesUserDebugModePref=true"'
alias sfrecord-debug-disable='sf data update record --sobject User --where "Username=$(sfusername)" --values "UserPreferencesUserDebugModePref=false"'

alias sfrecord-lws-enable=$'sf data update record --use-tooling-api --sobject SecuritySettings --record-id 000000000000000AAA --values "FullName=\'Security\' Metadata=\'{\\\"sessionSettings\\\":{\\\"lockerServiceNext\\\":true}}\'"'
alias sfrecord-lws-disable=$'sf data update record --use-tooling-api --sobject SecuritySettings --record-id 000000000000000AAA --values "FullName=\'Security\' Metadata=\'{\\\"sessionSettings\\\":{\\\"lockerServiceNext\\\":false}}\'"'

alias sfrecord-locale='sf data update record --sobject User --where "Username=$(sfusername)" --values "LocaleSidKey=en_AU"'
alias sfrecord-locale-home='sfrecord-locale'
alias sfrecord-locale-default='sf data update record --sobject User --where "Username=$(sfusername)" --values "LocaleSidKey=en_US"'

alias sfrecord-tz='sf data update record --sobject User --where "Username=$(sfusername)" --values "TimeZoneSidKey=Australia/Melbourne"'
alias sfrecord-tz-home='sfrecord-tz'
alias sfrecord-tz-default='sf data update record --sobject User --where "Username=$(sfusername)" --values "TimeZoneSidKey=America/Los_Angeles"'
alias sfrecord-tz-utc='sf data update record --sobject User --where "Username=$(sfusername)" --values "TimeZoneSidKey=GMT"'

alias sfrecord-traceflags=$'sf data update record --use-tooling-api --sobject DebugLevel --where "DeveloperName=\'SFDC_DevConsole\'" --values "Database=FINEST Workflow=FINER Validation=INFO Callout=FINEST ApexCode=FINEST ApexProfiling=FINEST Visualforce=FINER System=FINE Wave=FINEST Nba=FINE"'
alias sfrecord-traceflags-full='sfrecord-traceflags'
alias sfrecord-traceflags-default=$'sf data update record --use-tooling-api --sobject DebugLevel --where "DeveloperName=\'SFDC_DevConsole\'" --values "Database=INFO Workflow=INFO Validation=INFO Callout=INFO ApexCode=FINEST ApexProfiling=INFO Visualforce=INFO System=DEBUG Wave=INFO Nba=INFO"'
