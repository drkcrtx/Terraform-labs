resource "local_file" "module-demo" {
  filename = var.in-filename
  content  = "primer módulo"
}

resource "local_file" "module-1" {
  filename = var.file-permission1 
  default = "0400"
  content =  "Este es el archivo #1 de" 
}

 resource "local_file" "module-2" {
  filename = var.file-permission2
  default = "0600"
  content =  "Este es el archivo #2 de" 
}

