# README.md

# ECS Nginx Demo

## Popis
Tento projekt nasazuje Nginx na AWS ECS (Fargate) za Application Load Balancer pomocí Terraform a GitHub Actions.

## Architektura
- AWS ECS Fargate cluster
- Application Load Balancer (HTTP :80, health check `/`)
- VPC (pro zjednodušení default VPC a její subnety)
- CloudWatch logging (log group `/ecs/<project>`)

## Předpoklady
- AWS účet a IAM uživatel s právy pro ECS/ALB/IAM/S3
- Terraform ≥ 1.5
- S3 bucket pro Terraform state (unikátní název)

## Nasazení
1. Vytvořte S3 bucket pro Terraform state.
2. Upravte v `main.tf` backend `bucket`.
3. (Volitelně) upravte `terraform.tfvars` (`project_name`, `aws_region`).
4. Lokálně:
   ```bash
   terraform init
   terraform apply -auto-approve
