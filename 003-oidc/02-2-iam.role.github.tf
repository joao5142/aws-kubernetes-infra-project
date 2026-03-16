resource "aws_iam_role" "github" {
  name = "aws-kubernetes-infra-project-github-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRoleWithWebIdentity",
          "sts:TagSession"
        ]
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.default.arn
        }
        Condition = {
          StringLike = {
            "token.actions.githubusercontent.com:sub" : "repo:"
          }
          StringEquals = {
            "token.actions.githubusercontent.com:aud" : "sts.amazonaws.com"
          }
        }
      },
    ]
  })
}

resource "aws_iam_policy" "github" {
  name = "aws-kubernetes-infra-project-github-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecr:GetAuthorizationToken",
        ]
        Effect = "Allow"
        Resource = "*"
      },

       {
        Action = [
          "ecr:BatchGetImage",
          "ecr:BatchCheckLayerAvailability",
          "ecr:GetDownloadUrlForLayer",
        ]
        Effect = "Allow"
        Resource = [
          data.aws_ecr_repository.backend1.arn,
          data.aws_ecr_repository.backend2.arn,
        ]
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "github" {
  policy_arn = aws_iam_policy.github.arn
  role       = aws_iam_role.github.name
}