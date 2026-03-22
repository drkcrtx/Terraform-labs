locals {
  filename = "test.txt"
}

module "local_file" {
  source = "./file-modules"
  in-filename = local.filename
  in-permission1 = local.filename
}

module "file-module-dos" {
  source = "./file-modules"

  in-filename = "dos.txt"
  in-permission2 = local.filename
  
}
