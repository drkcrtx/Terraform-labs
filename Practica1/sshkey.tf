resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "private_key" {
  content  = tls_private_key.rsa_key.private_key_pem
  filename = "/home/azureuser/TerraformLabs/labs/Practica1/rsa_key"
}