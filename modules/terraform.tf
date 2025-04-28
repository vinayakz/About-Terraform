terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "5.63.0"
        }
    }
    backend "s3" {
        bucket = "vinoo-demo-bucket-dev"
        key = "terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "vinoo-demo-table-dev"
      
    }
}
