# this will create vpc
 resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr # user must provide own cidr
   instance_tenancy = "default"
   tags = merge( var.tags, var.vpc_tags )

 }

 # internet gateway

 resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = merge( var.tags, var.igw_tags, )

  
}

# public subnets in 1a and 1b, public route table , routes and associates between subnet and route table
# here we need to create 2 subnets

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]

  tags = merge ( var.tags, 
  var.public_subnet_tags, 
  {Names= var.public_subnet_names[count.index]}
  )
  
}

# route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  tags = merge ( var.tags, var.public_route_table_tags, {"Name" = var.public_route_table_name })

}

# aws route table

resource "aws_route" "public" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.gw.id
}

# resource "aws_route_table_association" "public" {
#   count = length(var.public_subnet_cidr)
#   subnet_id      = aws_subnet.foo.id
#   route_table_id = aws_route_table.bar.id
# }