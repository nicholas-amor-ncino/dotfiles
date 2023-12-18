#!/bin/zsh

aws-sso-login() {
    local profile=$1

    if [ -z $profile ]; then
        profile=dev
    fi

    declare -A profile_region
    profile_region[dev]=us-east-1
    profile_region[team]=ap-southeast-2
    profile_region[devops]=us-east-1
    profile_region[qa]=us-east-1

    # Validate the environment input-param
    if [ -v ${profile_region[$profile]} ]; then
        echo "Invalid environment-name '$profile'"
        return 1 
    fi

    export AWS_PROFILE=$profile
    export AWS_REGION=${profile_region[$profile]}

    if (aws sts get-caller-identity) > /dev/null; then
        return
    fi

    aws sso login --profile $profile
}
