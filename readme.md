## Test Project with my CV

# Build and run

Project deployment configured with dockerfile-maven-plugin

`mvn package` - command have to deploy image to aws ecr storage 

# Prerequisites :
aws cli have to be configured for aws IAM user AndriiG
Account ID : 415800032746

configure docker registry:

aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 415800032746.dkr.ecr.us-west-2.amazonaws.com

AWS cli config :

1) aws configure  
2) some workaround if aws configure not enough 

install jq

run script
```
#!/bin/bash
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_DEFAULT_REGION
unset AWS_SESSION_TOKEN

AWS_CREDS=$(aws sts get-session-token)

AWS_ACCESS_KEY_ID=$(jq -r '.[].AccessKeyId' <<< "${AWS_CREDS}")
AWS_SECRET_ACCESS_KEY=$(jq -r '.[].SecretAccessKey' <<< "${AWS_CREDS}")
AWS_DEFAULT_REGION='YOUR_REGION'
AWS_SESSION_TOKEN=$(jq -r '.[].SessionToken' <<< "${AWS_CREDS}")
AWS_TOKEN_EXPIRATION=$(jq -r '.[].Expiration' <<< "${AWS_CREDS}")

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
export AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN

echo "Tokens generated and saved to this terminal session. Tokens will expire on ${AWS_TOKEN_EXPIRATION}" 
```