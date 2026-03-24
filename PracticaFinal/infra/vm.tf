
resource "aws_instance" "vm" {
  ami           = var.ami
  instance_type = var.instancia
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  tags = {
    owner = "${var.tag}-vm"
    Name = "${var.region}-vm"
    
  }
}
