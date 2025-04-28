resource "aws_dynamodb_table" "my_backend_table" {
    name = "${var.my_env}-${var.table_name}"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "ProductID"

    attribute {
      name = "ProductID"
      type = "S"
    }
    tags = {
      Name = "${var.my_env}-${var.table_name}"
    }
   
}
