resource "aws_eks_cluster" "eks_cluster" {
  name     = "my-eks-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.eks_subnet_public.id,
      aws_subnet.eks_subnet_private.id
    ]
  }

  depends_on = [
    aws_iam_policy_attachment.eks_policy_attachment
  ]
}
