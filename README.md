# Terraform AWS Platform 🏗️

Production-ready Terraform modules for complete AWS infrastructure.

## Modules

| Module | Description | Complexity |
|--------|-------------|-----------|
| vpc | Multi-AZ VPC with NAT | ⭐⭐ |
| eks | EKS cluster with autoscaling | ⭐⭐⭐ |
| rds | Multi-AZ RDS with failover | ⭐⭐⭐ |
| elasticache | Redis cluster mode | ⭐⭐ |
| s3 | S3 with replication + lifecycle | ⭐ |
| monitoring | CloudWatch + Prometheus | ⭐⭐⭐ |

## Quick Start

```hcl
module "vpc" {
  source = "./modules/vpc"
  name   = "production"
  cidr   = "10.0.0.0/16"
  azs    = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

module "eks" {
  source         = "./modules/eks"
  name           = "production"
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.private_subnets
  instance_types = ["m5.2xlarge", "m5.4xlarge"]
  min_size       = 3
  max_size       = 20
}
```

## License

Apache 2.0