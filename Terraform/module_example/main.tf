module "network" {
    source = "../../../modules/network"
    cidr_block
    subnet_cidr_block
    availabilityzone
    tags
    routes
    securitygroup_name
    ingress_rules
    egress_rules
}