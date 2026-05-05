terraform {
  backend "s3" {
    bucket       = "terraform-state-file-divya"
    key          = "terraform/EKS-state.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}