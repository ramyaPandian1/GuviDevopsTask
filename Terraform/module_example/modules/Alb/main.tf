resource "aws_lb" "alb" {
    name = var.lbname
    load_balancer_type = "application"
    security_groups = var.security_group_ids
    subnets = var.subnet_ids
    enable_deletion_protection = var.enable-deletion-protection
    enable_cross_zone_load_balancing = var.enable-cross-zone-loadbalancing

    access_logs {
      bucket = var.access_logs.bucket
      enabled = var.access_logs.enabled
    }

    enable_http2 = var.enable-http2

    tags = var.tags

  
}