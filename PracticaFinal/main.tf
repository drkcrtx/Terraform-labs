module "vpc" {
  source = "./network"
  region = lookup(var.region, terraform.workspace)
  vpc_cidr = lookup(var.vpc_cidr, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  tag = var.tag

}

module "subnet"{
  source = "./network"
  region = lookup(var.region, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  vpc_cidr = lookup(var.vpc_cidr, terraform.workspace)
  tag = var.tag
}

module "vm" {
  source = "./infra"
  region = lookup(var.region, terraform.workspace)
  ami = lookup(var.ami, terraform.workspace)
  instancia = lookup(var.instancia, terraform.workspace)
}