variable "name" {
  description = "Name tag and resource-name prefix for the EC2 instance."
  type        = string
}

variable "subnet_id" {
  description = "Subnet in which to launch the EC2 instance."
  type        = string
}

variable "security_group_id" {
  description = "Security group to attach to the EC2 instance."
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  type        = string
}
