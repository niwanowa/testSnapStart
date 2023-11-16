curl --location --request GET $(aws cloudformation describe-stacks --stack-name SnapStartTest --query "Stacks[0].Outputs[?OutputKey=='normal'].OutputValue" --output text)

curl --location --request GET $(aws cloudformation describe-stacks --stack-name SnapStartTest --query "Stacks[0].Outputs[?OutputKey=='snapstart'].OutputValue" --output text)
