variable "name_prefix" {
  description = "Prefix used to name VPC resources."
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
}

variable "az" {
  description = "Availability Zone for the public subnet."
  type        = string
}
