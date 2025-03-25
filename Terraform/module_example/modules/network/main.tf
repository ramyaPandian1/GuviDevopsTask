# IN this VPC Subnet , internet_gateway , route_table and security group are created 
resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.availabilityzone
    tags = {
      Name = var.tags
    }
  
}

resource "aws_internet_gateway" "gateway" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = var.tags
    }  
}

resource "aws_route_table" "route_table" {
    vpc_id = aws_vpc.vpc.id
# here we are getting dynamically because of this we can easily give number of routes eample for one application we can use 4 routes 
# for second application we can give 8 routes no need to change the template created 
# here the route table is associated with VPC 
    dynamic "route" {
        for_each = var.routes
        content {
          cidr_block = route.value.cidr_block
          gateway_id = route.value.gateway_id
        }
      
    }

    tags = {
      Name = var.tags
    }
}

# after route_table we must associate this routetable with subnet

resource "aws_route_table_association" "association" {
    subnet_id = aws_subnet.subnet.id
    route_table_id = aws_route_table.route_table.id
  
}

# For creating security group we need name vpc inbound rule and outbound rulr 

resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.vpc.id
    name = var.securitygroup_name
    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
          from_port = ingress.value.from_port
          to_port = ingress.value.to_port
          protocol = ingress.value.protocol
          cidr_blocks = ingress.value.cidr_blocks

        }      
    }

     dynamic "egress" {
        for_each = var.egress_rules
        content {
          from_port = egress.value.from_port
          to_port = egress.value.to_port
          protocol = egress.value.protocol
          cidr_blocks = egress.value.cidr_blocks

        }      
    }
  
}