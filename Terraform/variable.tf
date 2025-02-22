# variables.tf
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "prod"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "container_port" {
  description = "Container port"
  type        = number
  default     = 3000
}

variable "container_image" {
  description = "Container image"
  type        = string
}

# providers.tf
provider "aws" {
  region = "ap-south-1"
}
