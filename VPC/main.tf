# this will create vpc
 resource "aws_vpc" "main" {
    cidr_block = var.cidr # user must provide own cidr
   instance_tenancy = "default"
   tags = merge( var.tags, var.vpc_tags )

 }

