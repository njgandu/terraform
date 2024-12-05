output "azs" {
    value = data.aws_availability_zones.available.names
}

output "vpc_id" {
  value = aws_vpc.expense.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.database[*].id
}


output "igw_id" {
  value = aws_internet_gateway.expense_igw.id
}