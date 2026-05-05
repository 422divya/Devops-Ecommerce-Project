# Terraform variables file
# Customize these values as needed

aws_region = "us-east-1"
project_name = "terraform-aws-infra"
vpc_cidr = "10.0.0.0/16"

# Public subnets across 3 availability zones
public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

# Private subnets across 3 availability zones
private_subnet_cidrs = [
  "10.0.10.0/24",
  "10.0.11.0/24",
  "10.0.12.0/24"
]

