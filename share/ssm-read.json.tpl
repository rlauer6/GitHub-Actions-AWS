[
  {
    "Sid": "SsmRead",
    "Effect": "Allow",
    "Action": ["ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath"],
    "Resource": "arn:aws:ssm:@region@:@account_id@:parameter/@path_prefix@/*"
  }
]
