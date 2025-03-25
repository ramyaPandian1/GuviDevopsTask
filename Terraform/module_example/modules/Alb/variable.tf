variable "vpc_id" {
    description = "VPC id for the load balancer "
    type = string
}

variable "subnet_ids" {
    description = "Subnet id for the load balancer "
    type = list(string)
}

variable "security_group_ids" {
    description = "list of security group ids for the load balancer "
    type = list(string)
}

variable "lbname" {
    description = "Name of the load balancer"
    type = string
}

variable "internal" {
    description = "whether the ALB is internal or external"
    type = bool
}

variable "enable-deletion-protection" {
    description = "Enable deletion protection"
    type = bool
}

variable "enable-cross-zone-loadbalancing" {
    description = "Enable cross zone loadbalancing"
    type = bool
}

variable "accesslogs" {
    description = "access logs configuration"
    type = object({
      bucket = string
      enabled = bool
    }) 
}

variable "enable-http2" {
    description = "Enable http2"
    type = bool
}

variable "tags" {
    description = "Tags for ALBEnable http2"
    type = map(string)
}