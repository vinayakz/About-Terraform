variable "my_env" {
    description = "this holds environment for the infra"
    type = string
}

variable "ec2_count" {
    description = "this tells the number of instaces required"
    type = number
  
}

variable "ec2_ami_id" {
    description = "this hold the ami id for the ec2"
    type = string
  
}

variable "ec2_instace_type" {
    description = "this hold the instance type for the ec2"
    type = string
}
variable "table_name" {
    description = "this hold the dynamodb table name postfix"
    type = string
}

