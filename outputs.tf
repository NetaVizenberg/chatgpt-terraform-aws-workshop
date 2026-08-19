output "vpc_id" {
  description = "ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet."
  value       = module.vpc.public_subnet_id
}

output "security_group_id" {
  description = "ID of the EC2 security group."
  value       = module.vpc.security_group_id
}

output "ec2_instance_ids" {
  description = "IDs of the two EC2 instances."
  value       = [module.ec2_a.instance_id, module.ec2_b.instance_id]
}

output "ec2_private_ips" {
  description = "Private IP addresses of the two EC2 instances."
  value       = [module.ec2_a.private_ip, module.ec2_b.private_ip]
}
