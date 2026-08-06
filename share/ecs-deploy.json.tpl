[
  {
    "Sid": "EcsRegisterTaskDef",
    "Effect": "Allow",
    "Action": "ecs:RegisterTaskDefinition",
    "Resource": "*"
  },
  {
    "Sid": "EcsDeploy",
    "Effect": "Allow",
    "Action": ["ecs:UpdateService", "ecs:DescribeServices"],
    "Resource": "arn:aws:ecs:@region@:@account_id@:service/@cluster@/@service@"
  },
  {
    "Sid": "EcsPassRole",
    "Effect": "Allow",
    "Action": "iam:PassRole",
    "Resource": [
      "arn:aws:iam::@account_id@:role/@task_role@",
      "arn:aws:iam::@account_id@:role/@execution_role@"
    ],
    "Condition": { "StringEquals": { "iam:PassedToService": "ecs-tasks.amazonaws.com" } }
  }
]
