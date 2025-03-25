output "east2-instance-id" {
    description = "Id of east-2 instance"
    value       = aws_instance.linux1-instance-region1.id
}

output "east1-instance-id" {
    description = "Id of east-1 instance"
    value       = aws_instance.linux-instance-region2.id
}
