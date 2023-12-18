
# TODO: how to grep USER_DEBUG stdin instead of just dumping it\
alias sf-drop-ade-forms="TODO"
alias sf-drop-bpo-definitions="TODO"
alias sf-drop-bpo-logs="sf apex run 1> /dev/null <<< 'delete [SELECT Id FROM nFORCE__Business_Activity_Execution__c];\
 delete [SELECT Id FROM nFORCE__Business_Process_Interaction__c];'"
alias sf-drop-drdocs="sf apex run 1> /dev/null <<< \"SObject[] i = [SELECT Id FROM ncinoocr__DR_Document_Version__c];\
 if (i.size() > 0) System.debug('Deleting %d records.'.replace('%d', String.valueOf(i.size())));\
 delete i;\""

alias sf-new-collateral='key="my-collateral-$RANDOM"; sf apex run <<< "if ([SELECT Id FROM LLC_BI__Collateral_Type__c WHERE LLC_BI__lookupKey__c = '"'"'my-collateral-type'"'"'].size() <= 0)\
     insert new LLC_BI__Collateral_Type__c(LLC_BI__Advance_Rate__c = 20, LLC_BI__lookupKey__c = '"'"'my-collateral-type'"'"');\
 SObject i = new LLC_BI__Collateral__c(LLC_BI__Collateral_Type__r = new LLC_BI__Collateral_Type__c(LLC_BI__lookupKey__c = '"'"'my-collateral-type'"'"'), LLC_BI__lookupKey__c = '"'"'$key'"'"');\
 insert i;\
 System.debug(i.Id);" | grep USER_DEBUG | cut -d "|" -f 5'