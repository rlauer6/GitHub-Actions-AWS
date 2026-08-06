[
  {
    "Sid": "LambdaDeploy",
    "Effect": "Allow",
    "Action": [
      "lambda:UpdateFunctionCode",
      "lambda:UpdateFunctionConfiguration",
      "lambda:GetFunction",
      "lambda:PublishVersion"
    ],
    "Resource": "arn:aws:lambda:@region@:@account_id@:function:@function_name@"
  },
  {
    "Sid": "LambdaPassRole",
    "Effect": "Allow",
    "Action": "iam:PassRole",
    "Resource": "arn:aws:iam::@account_id@:role/@execution_role@",
    "Condition": { "StringEquals": { "iam:PassedToService": "lambda.amazonaws.com" } }
  }
]
