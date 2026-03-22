resource "local_file" "module-demo" {
  filename = var.in-filename
  content  =  "Este es el archivo #1 de" 
 
}
resource "local_file" "module-demo2" {
  filename = var.in-filename
  content  =  "Este es el archivo #2 de" 
 
}



