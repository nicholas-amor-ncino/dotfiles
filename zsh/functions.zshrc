sfuser-tz-home2() {
    $(my-sf) data update record --sobject User --where Username="$(sfusername)" --values TimeZoneSidKey='Australia/Melbourne'
}

sfuserset() {
    VARIABLE="$1"
    VALUE="$2"
    $(my-sf) data update record --sobject User --where Username="$(sfusername)" --values $VARIABLE="${VALUE}"
}


sf-open-collateral-docman-url() {
    sf org open --url-only --path="apex/NDOC__UniversalDocMan?id=$1" --json 2>/dev/null | jq --raw-output '.result.url'
}

sf-test-quick() {
    # npm run org:push
    params=("--class-names AEFormFieldsXPkgTransformerTest")
    (sftest ${params[@]} > tests.xml) && xmllint --xpath '//*/testcase[failure]' tests.xml > failures.xml
}

source ~/dotfiles/zsh/functions/aws-sso-login.sh
source ~/dotfiles/aws/functions.zshrc
