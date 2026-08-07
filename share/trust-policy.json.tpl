{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::@account_id@:oidc-provider/token.actions.githubusercontent.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
          "StringEquals": {
              "token.actions.githubusercontent.com:aud": "sts.amazonaws.com",
              "token.actions.githubusercontent.com:repository": "@repo_owner@/@repo@"
          },
          "StringLike": {
              "token.actions.githubusercontent.com:ref": "refs/heads/@branch@",
              "token.actions.githubusercontent.com:sub": "repo:@repo_owner@@*/@repo@@*:ref:refs/heads/@branch@"
          }
      }
    }
  ]
}
