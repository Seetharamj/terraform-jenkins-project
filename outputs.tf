output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web.id
}
