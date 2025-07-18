terraform {
  backend "s3" {
    bucket = "my-terraform-bucket-alex2025"
    key    = "combined/ec2_s3_rds.tfstate"
    region = "us-east-1"
  }
}

