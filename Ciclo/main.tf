resource "local_file" "file" {
  filename        = var.filename
  file_permission = 0700
  content         = "Bye..."

  lifecycle {
	prevent_destroy = false
 }
}

variable "filename" {
  default = "bye.txt"
}