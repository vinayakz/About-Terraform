resource "aws_s3_bucket" "my_bucket" {

    bucket = "${var.my_env}-testing-bucket"
    tags = {
      Name = "${var.my_env}-testing-bucket"
      Environment = "${var.my_env}"
    }
  
}
