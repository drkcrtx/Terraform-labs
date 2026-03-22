output "vpc_cidrblock" {
  value = aws_vpc.vpc.cidr_block
}

output "vpc_name" {
  value = aws_vpc.vpc.tag.Name
}

output "vpc_owner" {
  value = aws_vpc.vpc.tags.owner
}

output "subnet_id" {
  value = aws_subnet.subnet.id

}
output "subnet_cidrblock" {
  value = aws_subnet.subnet.cidr_block

}
output "subnet_name" {
  value = aws_subnet.subnet.tag.Name
}

output "subnet_owner" {
  value = aws_subnet.subnet.tag.owner
}
