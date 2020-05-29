terraform {
    backend "s3" {
        bucket = "udacity-udagram-nikunj-dev"
        key = "terraform.tfstate.d/exercise1/terraform.tfstate" 
        region = "us-east-1"
    }
}