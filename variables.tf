variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "aws_key_pair" {
  description = "The name of the AWS key pair"
  type        = string
}

variable "aws_public_key" {
  description = "The public key for SSH access"
  type        = string
}


variable "vpc_id" {
  description = "VPC ID to launch the EC2 instance in"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}
