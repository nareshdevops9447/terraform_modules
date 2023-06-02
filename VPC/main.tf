# this will create vpc
 resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr # user must provide own cidr
   instance_tenancy = "default"
   tags = merge( var.tags, var.vpc_tags )

 }

# public subnets in 1a and 1b, public route table , routes and associates between subnet and route table
# here we need to create 2 subnets

resource "aws_subnet" "main" {
  count = length(var.public_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]

  tags = merge ( var.tags, var.public_subnet_tags, {Names= var.public_subnet_names[count.index]})
  {}
}

