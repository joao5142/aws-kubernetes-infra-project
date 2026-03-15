resource "aws_ecr_repository" "this" {
  count = length(var.eks.ecr_repositories)
  name                 = var.eks.ecr_repositories[count.index]
  image_tag_mutability = "MUTABLE"
}