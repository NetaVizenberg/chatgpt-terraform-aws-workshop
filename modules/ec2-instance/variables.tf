variable "project_name" {
  description = "Name used to tag EC2 resources."
  type        = string
}

variable "vpc_id" {
  description = "VPC in which to create the security group."
  type        = string
}

variable "subnet_id" {
  description = "Subnet in which to launch the EC2 instance."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}
