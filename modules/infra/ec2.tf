resource "aws_key_pair" "my_ssh_key"{
    key_name = "terra-key-auto"
    public_key = file("/home/ubuntu/terra-key-auto.pub")

}


resource "aws_default_vpc" "default"{
}

resource "aws_security_group" "my_sg"{
    name = "${var.my_env}-vinoo-sg"
    description = "This is for security group"
    vpc_id = aws_default_vpc.default.id

    ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "this is for ssh access"
    }
    ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "this is for http access"
    }

    egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"] 
    description = "this is for outside world requests from instance"
    }
}

resource "aws_instance" "vinoo-instance"{
        count = var.ec2_count
        tags = {
          Name = "${var.my_env}-ec2-server"
        }
        ami = var.ec2_ami_id
        instance_type = var.ec2_instace_type
        key_name = aws_key_pair.my_ssh_key.key_name
        security_groups = [aws_security_group.my_sg.name]

}
resource "aws_ec2_instance_state" "my_state"{
        count = length(aws_instance.vinoo-instance)
        instance_id = element(aws_instance.vinoo-instance.*.id, count.index)
        state = "stopped" 
}
