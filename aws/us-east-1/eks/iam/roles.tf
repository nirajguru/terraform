resource "aws_iam_role" "eks_role" {
  name = "eks_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })
  #managed_policy_arns = "arn:aws:iam:525352990358:aws:policy/AmazonEKSClusterPolicy"

  tags = {
    name = "eks-assume-role-niraj",
    project = "trying-eks-terraform"
  }
}

output "role_arn" {
  value =   aws_iam_role.eks_role.arn
}
