[
  {
    "Sid": "SecretsRead",
    "Effect": "Allow",
    "Action": "secretsmanager:GetSecretValue",
    "Resource": "arn:aws:secretsmanager:@region@:@account_id@:secret:@secret_name@-*"
  }
]
