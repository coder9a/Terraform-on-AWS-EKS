locals {
  s3_folders = [
    "dev/eks-cluster",
    "dev/ebs-storage",
    "dev/eks-irsa-demo"
  ]
  dynamodb_tables = [
  "dev-ebs-storage",
  "eks-dynamodb-lock-table"
  ]
}
