resource "aws_instance" "linux1-instance-region1" {
    provider = aws.us_east_2
    ami = var.us-east-2-ami
    instance_type = var.instance_type
    tags = {
        Name = "instance in region useast-2"
    }
}

resource "aws_instance" "linux-instance-region2" {
    provider= aws.us_east_1
    ami = var.us-east-1-ami
    instance_type = var.instance_type
    tags = {
        Name = "Instance in region USeast-1"
    }
}