module "vpc" {
  source = "./network"
  region = lookup(var.region, terraform.workspace)
  vpc_cidr = lookup(var.vpc_cidr, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  tag = var.tag.owner
  
  

}

#module "subnet"{
#  source = "./network"
 # region = lookup(var.region, terraform.workspace)
  #subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
  #vpc_cidr = lookup(var.vpc_cidr, terraform.workspace)
  #tag = var.tag
#}

module "vm" {
  source = "./infra"
  region = lookup(var.region, terraform.workspace)
  ami = lookup(var.ami, terraform.workspace)
  instancia = lookup(var.instancia, terraform.workspace)
  subnet_id = module.vpc.subnet_id
  vpc_id = module.vpc.vpc_id
  tag = var.tag.owner
}
