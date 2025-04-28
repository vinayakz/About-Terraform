module "dev-infra" {
    source = "/my_infra"
    my_env = "dev"
    ec2_count = 2
    table_name = "vinoo-table"
    ec2_instace_type = "t2.micro"
    ec2_ami_id = "ami-0e35ddab05955cf57"
}

module "stg-infra" {
    source = "/my_infra"
    my_env = "stg"
    ec2_count = 1
    table_name = "vinoo-table"
    ec2_instace_type = "t2.micro"
    ec2_ami_id = "ami-0e35ddab05955cf57"
}

module "prod-infra" {
    source = "/my_infra"
    my_env = "prod"
    ec2_count = 3
    table_name = "vinoo-table"
    ec2_instace_type = "t2.medium"
    ec2_ami_id = "ami-0e35ddab05955cf57"
}
