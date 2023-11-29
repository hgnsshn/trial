resource "aws_ecr_repository" "golang" {
  name                 = "trial/golang"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }

  tags = {
    Terraform = "true"
    Environment = var.env
    Project     = var.project_name
  }
}

resource "aws_ecr_repository" "php" {
  name                 = "trial/php"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }

  tags = {
    Terraform = "true"
    Environment = var.env
    Project     = var.project_name
  }
}
