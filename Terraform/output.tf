output "east2-instance-id" {
    description = "Id of east-2 instance"
    value = resource.aws_instance.linux-instance-region2 
}

output "east1-instance-id" {
    description = "Id of east-1 instance"
    value = resource.aws_instance.linux-instance-region1
}