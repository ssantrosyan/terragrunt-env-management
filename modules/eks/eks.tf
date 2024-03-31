# resource "aws_eks_cluster" "name" {
#   name     = "${var.env}-${var.eks_name}"
#   version  = var.eks_version
#   role_arn = aws_iam_role.eks.arn

#   vpc_config {
#     endpoint_private_access = false
#     endpoint_public_access  = true
#   }
# }
