
aws-sso-login() {
    tempEnvName=$1

    if [ "$tempEnvName" = "" ]; then
        tempEnvName=dev
    fi
    
    # Validate the environment input-param
    if [ "$tempEnvName" = "dev" ]; then
        awsRegion=us-east-1
    elif [ "$tempEnvName" = "team" ]; then
        awsRegion=ap-southeast-2
    elif [ "$tempEnvName" = "devops" ]; then
        awsRegion=us-east-1
    elif [ "$tempEnvName" = "qa" ]; then
        awsRegion=us-east-1
    # elif [ "$tempEnvName" = "prodapne1" ]; then
    #     awsRegion=ap-northeast-1
    # elif [ "$tempEnvName" = "prodapse2" ]; then
    #     awsRegion=ap-southeast-2
    # elif [ "$tempEnvName" = "prodcac1" ]; then
    #     awsRegion=ca-central-1
    # elif [ "$tempEnvName" = "prodeuc1" ]; then
    #     awsRegion=eu-central-1
    # elif [ "$tempEnvName" = "prodeuw2" ]; then
    #     awsRegion=eu-west-2
    # elif [ "$tempEnvName" = "produse1" ]; then
    #     awsRegion=us-east-1
    else
        print "Invalid environment-name '$tempEnvName'"
        return 1
    fi
    
    export AWS_PROFILE=$tempEnvName
    export AWS_REGION=$awsRegion

    if (aws sts get-caller-identity) > /dev/null; 
    then
        # echo "Existing session is still active".
    else
        # echo "Regenerating AWS-SSO session. Please be prepared, you'll be prompted to authenticate shortly.."
        aws sso login
    fi

    # print "You're now connected to AWS '$tempEnvName' account at '$awsRegion' region"
}