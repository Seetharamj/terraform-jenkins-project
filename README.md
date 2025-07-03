# 🚀 Terraform + Jenkins CI/CD: 1-Tier EC2 Deployment on AWS

This project automates the deployment of a single EC2 instance on AWS using **Terraform**, with a CI/CD pipeline powered by **Jenkins**. The pipeline provisions an EC2 instance, security group for SSH access, and creates a custom AMI image — all from a GitHub repository.

---

## 📌 Key Features

- 🌐 EC2 instance provisioning via Terraform
- 🔐 SSH access through Security Group
- 📸 Custom AMI creation from EC2 instance
- 🤖 Jenkins pipeline automation (clone ➝ init ➝ validate ➝ plan ➝ apply)
- 🔧 Parameterized using `terraform.tfvars` for easy configuration

---

## 🗂 Project Structure

terraform-jenkins-project/
├── main.tf # AWS resources definition
├── variables.tf # Input variables
├── terraform.tfvars # Variable values
├── outputs.tf # Output values
├── Jenkinsfile # CI/CD pipeline configuration
└── README.md # Project documentation


🏃‍♂️ How to Run:

1.Clone the repo: git clone https://github.com/Seetharamj/terraform-jenkins-project.git && cd terraform-jenkins-project

2.Edit terraform.tfvars with your AWS region, VPC, subnet, key, and AMI ID.

3.Run: terraform init && terraform validate

4.Plan: terraform plan -out=tfplan

5.Apply: terraform apply -auto-approve tfplan

6. trigger the Jenkins pipeline to automate the full flow.
