resource "aws_vpc" "main" {
  cidr_block           = var.cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  
  tags = {
    Name = "${var.name}-vpc"
  }
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "name" {
  default = "main"
}

output "vpc_id" {
  value = aws_vpc.main.id
}
