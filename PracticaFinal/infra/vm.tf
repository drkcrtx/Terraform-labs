
resource "aws_instance" "vm" {
  ami           = var.ami
  instance_type = var.instancia
  subnet_id = aws_subnet.subnet.id
  vpc_id  = aws_vpc.vpc.id
  associate_public_ip_address = true
  tags = {
    Name = "${var.region}-vm"
    
  }
}