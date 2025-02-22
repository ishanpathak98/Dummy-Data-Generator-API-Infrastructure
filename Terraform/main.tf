terraform {
  required_version = ">= 1.0.0"
  
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    key    = "dummy-data-api/terraform.tfstate"
    region = "ap-south-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "networking" {
  source = "./modules/networking"
  
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
  azs         = var.availability_zones
}

module "security" {
  source = "./modules/security"
  
  environment = var.environment
  vpc_id      = module.networking.vpc_id
}

module "ecs" {
  source = "./modules/ecs"
  
  environment            = var.environment
  vpc_id                = module.networking.vpc_id
  private_subnets       = module.networking.private_subnets
  public_subnets        = module.networking.public_subnets
  ecs_task_execution_role = module.security.ecs_task_execution_role
  container_port        = var.container_port
  container_image       = var.container_image
}

module "monitoring" {
  source = "./modules/monitoring"
  
  environment     = var.environment
  vpc_id         = module.networking.vpc_id
  private_subnets = module.networking.private_subnets
  ecs_cluster_id = module.ecs.cluster_id
}
