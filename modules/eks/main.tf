resource "aws_eks_cluster" "main" {
  name     = var.name
  role_arn = aws_iam_role.eks.arn
  
  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

variable "name" {}
variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }
variable "instance_types" { default = ["m5.xlarge"] }
variable "min_size" { default = 2 }
variable "max_size" { default = 10 }
