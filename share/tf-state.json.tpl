[
  {
    "Sid": "TfState",
    "Effect": "Allow",
    "Action": ["s3:GetObject", "s3:PutObject"],
    "Resource": "arn:aws:s3:::@state_bucket@/@state_key@"
  },
  {
    "Sid": "TfLock",
    "Effect": "Allow",
    "Action": ["dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:DeleteItem"],
    "Resource": "arn:aws:dynamodb:@region@:@account_id@:table/@lock_table@"
  }
]
