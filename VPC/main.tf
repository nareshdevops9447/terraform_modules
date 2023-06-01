# # this will create vpc
# resource "aws_vpc" "this" {
#    cidr_block = var.cidr
#   instance_tenancy = "default"

# }

resource "aws_vpc" "this"{
    cidr_block = locals.cidr
    instance_tenancy = "default"
    tags = var.tags
}