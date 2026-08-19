data "aws_ssm_parameter" "amazon_linux_2023" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

module "vpc" {
  source = "./modules/vpc"

  name_prefix        = var.project_name
  cidr_block         = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.availability_zone
}

module "ec2_a" {
  source = "./modules/ec2-instance"

  name              = "${var.project_name}-ec2-a"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
  ami_id            = data.aws_ssm_parameter.amazon_linux_2023.value
}

module "ec2_b" {
  source = "./modules/ec2-instance"

  name              = "${var.project_name}-ec2-b"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.vpc.security_group_id
  ami_id            = data.aws_ssm_parameter.amazon_linux_2023.value
}
