resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
  owner = tag.owner
  Name = "vpc${terraform.workspace}"
  
  }
}

resource "aws_subnet" "subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.subnet_cidr
    tags = {
    owner = tag.owner    
    Name = "subnet${terraform.workspace}"
  }
  
}
