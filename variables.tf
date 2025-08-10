# variables.tf

variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "ULOHA7"
  type        = string
  default     = "ecs-nginx-demo"
}
