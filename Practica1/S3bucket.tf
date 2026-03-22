resource "aws_s3_bucket" "Terraform_Practice" {
  bucket = var.instance_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.Terraform_Practice.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_ownership_controls" "owner" {
  bucket = aws_s3_bucket.Terraform_Practice.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


resource "aws_s3_bucket_acl" "bucket_acl" {
	depends_on = [ aws_s3_bucket_ownership_controls.owner, aws_s3_bucket_public_access_block.access ]

  bucket = aws_s3_bucket.Terraform_Practice.id
  acl    = "public-read"
}

resource "aws_s3_object" "key_file" {
  bucket      = aws_s3_bucket.Terraform_Practice.id
  key         = "rsa_key.pem"
  source      = "/home/azureuser/TerraformLabs/labs/Practica1/rsa_key"
  content_type = "rsa/key"

  acl = "public-read"
}

resource "aws_vpc" "lab-hernan_brenes" {
  cidr_block = "10.0.0.0/16"
}