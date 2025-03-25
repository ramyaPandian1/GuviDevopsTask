variable "cidr_block" {
    description = "CIDR VPC"
    type = string
  
}

variable "subnet_cidr_block" {
    description = "Subnet CIDR"
    type = string
  
}

variable "availabilityzone" {
    description = "availability zone for the subnet"
    type = string
  
}

variable "tags" {
    description = "name"
    type = string
}

variable "routes" {
    description = "list of routes to route table"
    type = list(object({
      cidr_block = string
      gateway_id = string 
    }))
  
}

variable "securitygroup_name" {
    description = "Name of the sg"
    type = string
  
}

variable "ingress_rules" {
    description = "list of ingress rules"
    type = list(object({
      from_port = number
      to_port = number
      protocol = string
      cidr_blocks = list(string) 
    })) 
}

variable "egress_rules" {
    description = "list of egress rules"
    type = list(object({
      from_port = number
      to_port = number
      protocol = string
      cidr_blocks = list(string) 
    })) 
}