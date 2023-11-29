output "vpc_id" {
  value = module.vpc.vpc_id
}

output "priv_subnets" {
  value = module.vpc.private_subnets
}

