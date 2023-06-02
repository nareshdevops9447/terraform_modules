variable "vpc_cidr" {
   type = string
   # default = "10.0.0.0/16"
 }

variable "tags" {
  type = map
 # default = {
  # Name = "vpc"
  # }s
}

variable "vpc_tags" {
  type = map
  default = {} # optional, asking user to provide
}

variable "azs" {
  type = list
  
}

variable "public_subnet_cidr" {
  type = list
}

variable "public_subnet_names" {
  type = list
}

variable "public_subnet_tags" {
  type = map
  default = {}

}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_route_table_tags" {
  type = map
  default = {}
}

variable "public_route_table_name" {
 

}

variable "private_subnet_cidr" {
  type = list
}

variable "private_subnet_names" {
  type = list
}

variable "private_subnet_tags" {
  type = map
  default = {}

}
variable "private_route_table_tags" {
  type = map
  default = {}
}

variable "private_route_table_name" {
 
}

variable "nat_tags" {
  type = map
  default = {}
}

variable "database_subnet_cidr" {
  type = list
}

variable "database_subnet_names" {
  type = list
}

variable "database_subnet_tags" {
  type = map
  default = {}

}
variable "database_route_table_tags" {
  type = map
  default = {}
}

variable "database_route_table_name" {
 
}
variable "database_subnet_group_tags" {
  type = map
  default = {}
}