output "bucket_url" {
  value = "${aws_s3_object.key_file.bucket}.s3.amazonaws.com/${aws_s3_object.key_file.key}"
}