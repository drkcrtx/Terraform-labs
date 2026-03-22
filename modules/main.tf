locals {
  filename = "test.txt"
}

module "local_file" {
  source = "./file-modules"
  in-filename = local.filename
  file_permission = var.in-filename
}

module "file-module-dos" {
  source = "./file-modules"

  in-filename = "dos.txt"
  file_permission = var.in-permission1
  
}
