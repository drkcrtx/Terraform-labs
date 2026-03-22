resource "local_file" "password" {
  filename = "password.txt"
  content  = "mipassword"
}

resource "random_string" "iac_random" {
   min_numeric = 10
   length = 16
   special = true
   override_special = "/@£$"
}