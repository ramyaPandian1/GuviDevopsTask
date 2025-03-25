output "vpc_id" {
    value = aws_vpc.vpc.id
}
output "subnet_id" {
    value = aws_subnet.subnet.id
  
}

# to fecth multiple value 
# output "subnet_ids" {
#     value = [aws_subnet.subnet.id]
  
# }

output "internetgateway" {
value = aws_internet_gateway.gateway.id
  
}

output "route_table_id" {
    value = aws_route_table.route_table.id
  
}


output "sg_id" {
    value = aws_security_group.sg.id
  
}