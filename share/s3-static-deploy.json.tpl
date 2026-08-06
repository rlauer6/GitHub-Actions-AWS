[
  {
    "Sid": "S3StaticDeploy",
    "Effect": "Allow",
    "Action": ["s3:PutObject", "s3:DeleteObject", "s3:GetObject", "s3:ListBucket"],
    "Resource": ["arn:aws:s3:::@bucket@", "arn:aws:s3:::@bucket@/*"]
  }
]
