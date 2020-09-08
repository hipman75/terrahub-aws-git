terraform {
        backend "s3" {
                bucket = "marcus-terraform-s3"
                key = "terrahub-aws-git/terraform.tfstate"
                region = "us-east-1"
        }
}