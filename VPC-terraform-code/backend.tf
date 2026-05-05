terraform {
  backend "s3" {
    bucket         = "terraform-state-file-divya"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-state-lock"
    encrypt        = true
    use_lockfile = true
  }
}



