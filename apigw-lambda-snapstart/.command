curl --location --request POST $(aws cloudformation describe-stacks --stack-name SnapStartTest --query "Stacks[0].Outputs[?OutputKey=='UnicornEndpoint'].OutputValue" --output text)'snapstart/unicorns' \
--header 'Content-Type: application/json' \
--data-raw '{
"name": "Something",
"age": "Older",
"type": "Animal",
"size": "Very big"
}' | jq


curl --location --request POST $(aws cloudformation describe-stacks --stack-name SnapStartTest --query "Stacks[0].Outputs[?OutputKey=='UnicornEndpoint'].OutputValue" --output text)'normal/unicorns' \
--header 'Content-Type: application/json' \
--data-raw '{
"name": "Something",
"age": "Older",
"type": "Animal",
"size": "Very big"
}' | jq