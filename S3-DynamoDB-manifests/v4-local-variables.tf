locals {
  s3_folders = [
    # "dev/eks-cluster",
    # "dev/ebs-storage",
    # "dev/eks-irsa-demo",
    # "dev/aws-lbc"
  ]
  dynamodb_tables = [
  "dev-ebs-storage",
  "eks-dynamodb-lock-table",
  "dev-aws-lbc",
  "dev-aws-lbc-ingress",
  "dev-aws-externaldns"
  ]
}
