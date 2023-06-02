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