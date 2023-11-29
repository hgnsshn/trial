module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.project_name}-vpc-${var.env}"
  cidr = var.net_cidr

  azs             = var.azs
  private_subnets = var.priv_subnets
  public_subnets  = var.pub_subnets

  enable_nat_gateway       = true
  single_nat_gateway       = true
  one_nat_gateway_per_az   = false
  create_igw               = true
  create_vpc               = true
  default_network_acl_name = var.project_name
  default_route_table_name = var.project_name
  putin_khuylo = true

  tags = {
    Terraform   = "true"
    Environment = var.env
    Project     = var.project_name
    "kubernetes.io/cluster/${var.project_name}-cluster" = "shared"
    "kubernetes.io/role/internal-elb" = 1
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_route" "igw" {
  route_table_id = var.priv_route_table_id
  destination_cidr_block = "10.
