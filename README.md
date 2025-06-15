# 🚀 Containerized Sample App Deployment on AWS with Terraform

This project deploys a containerized **Node.js app** (or any containerized app) using **ECS Fargate**, with best practices in **networking**, **security**, **logging**, and **automation**, all managed via **Terraform**.

---

## 🏗️ Architecture Overview

- **VPC** with public and private subnets across 2 AZs
- **NAT Gateway** to enable internet access for private subnets
- **ALB** (HTTPS enabled via **ACM**) routing traffic to ECS
- **Amazon ECS (Fargate)** for running containerized app
- **ACM Certificate** for TLS/SSL (HTTPS) on ALB
- **S3 Bucket** to store **ALB access logs**
- **CloudWatch Logs** enabled for ECS and ALB
- **IAM Roles** for secure ECS task execution
- **Security Groups** with least-privilege rules
- ✅ **CI/CD via GitHub Actions** — build, push to ECR, deploy

---

## 🧱 Prerequisites

- [Terraform](https://www.terraform.io/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- AWS credentials configured (`aws configure`)
- (Optional) A domain in Route53 if using a custom domain with ACM

---

## 📁 Project Structure

├── app/ # Sample Node.js app with Dockerfile
├── main.tf # Terraform entry point
├── vpc.tf # VPC, subnets, NAT GW
├── alb.tf # ALB, Target Group, Listener
├── ecs.tf # ECS Cluster, Task Definition, Service
├── s3.tf # S3 bucket for ALB logs
├── acm.tf # ACM TLS certificate
├── iam.tf # IAM roles and policies
├── outputs.tf # Useful Terraform outputs
├── variables.tf # Input variables
├── terraform.tfvars # Variable values (gitignored)
└── .github/workflows/deploy.yml # GitHub Actions CI/CD pipeline


---

## 🚀 How to Deploy

### 1. Clone Your Fork

```bash
git clone https://github.com/YOUR_USERNAME/terraform-ecs-app.git
cd terraform-ecs-app


#Initialize Terraform
  terraform init
#Review the Execution Plan
terraform plan
#Apply the Infrastructure
terraform apply -auto-approve
