module "eks" {
  source = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name = "${var.project_name}-cluster"
  cluster_version = "1.28"

  cluster_endpoint_public_access = true
  putin_khuylo = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
  subnet_ids = data.terraform_remote_state.network.outputs.priv_subnets

  eks_managed_node_groups = {
    blue = {}
    green = {
      min_size = 1
      max_size = 10
      desired_size = 1

      instance_types = ["t3.large"]
      capacity_type = "SPOT"
    }
  }

  tags = {
    Terrafrom = "true"
    Environment = var.env
    Project = var.project_name
  }
}


