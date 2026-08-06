[
  {
    "Sid": "CloudFrontInvalidate",
    "Effect": "Allow",
    "Action": "cloudfront:CreateInvalidation",
    "Resource": "arn:aws:cloudfront::@account_id@:distribution/@distribution_id@"
  }
]
