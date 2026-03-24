output "instance_size" {
  value = aws_instance.vm.instance_type
}

output "instance_id" {
  value = aws_instance.vm.subnet_id
}

output "availability_zone" {
  value = aws_instance.vm.availability_zone
}

output "instance_name" {
  value = aws_instance.vm.tags.Name
}

output "instance_ip" {
  value = aws_instance.vm.associate_public_ip_address
}

output "instace_owner" {
  value = aws_instance.vm.tags.owner
}
