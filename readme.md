# README.md

## Popis
Tento projekt nasadzuje Nginx na AWS ECS (Fargate) za Application Load Balancer pomocou Terraform a GitHub Actions.

## Nasadenie
1. Vytvorte S3 bucket pre Terraform state.
```
  backend "s3" {
    bucket = "{NAZOV S3 BUCKETU}"
    key    = "ecs-demo/terraform.tfstate"
    region = "eu-central-1"
  }
```
2. Upravte v `main.tf` backend `bucket` podla nazvu S3 bucketu.
3. ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve
   ```

## Overenie

Po úspšnom terraform apply sa do konzole vypíše DNS a URL. 

Výsledkom curl príkazu by mal byť status code 200
```bash
    curl {outputURL}
```