resource "aws_instance" "linux1-instance-region1" {
    provider = aws.us_east_2
    ami = var.us-east-2-ami
    instance_type = var.instance_type
    tags = {
        Name = "Nginx in useast-2"
    }
    user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y nginx
              EOF
}

resource "aws_instance" "linux-instance-region2" {
    provider= aws.us_east_1
    ami = var.us-east-1-ami
    instance_type = var.instance_type
    tags = {
        Name = "Nginx in USeast-1"
    }
    user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y nginx
              EOF 
}