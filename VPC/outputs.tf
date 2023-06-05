output "vpc_id" {
value = aws_vpc.main.id
}

output "db_subnet_group_name" {
    value = aws_db_subnet_group.database.name
}

outpud "private_subnet_ids" {
    description = "list of private IDs"
    value = "aws_subnet.private[*].id"
}