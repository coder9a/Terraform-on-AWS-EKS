# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}
variable "aws_access_key" {
  type        = string
  description = "Access key of AWS account"
  default     = "AKIAWCBIPYVG4QADOK22"
}

variable "aws_secret_key" {
  type        = string
  description = "secret key of AWS account"
  default     = "Uz0wA6YWuknHKUhxPzxPWAaqE9nnG/4nM0Aa+g7f"
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "SAP"
}
