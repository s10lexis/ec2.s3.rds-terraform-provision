# Terraform AWS Infrastructure: EC2 + S3 + RDS

This project provisions a basic infrastructure setup on AWS using Terraform. It includes:
- An **EC2 instance** running in `us-east-1a`
- An **S3 bucket** for storing static files
- An **RDS MySQL database instance**
- Remote state storage in an **S3 backend**
- Infrastructure deployed using **Terraform modules**

## Project Structure

```
.
├── main.tf              # Main Terraform configuration (EC2, S3, RDS)
├── variables.tf         # Input variables definitions
├── terraform.tfvars     # Variable values (e.g. key name, AMI ID)
├── output.tf            # Outputs like EC2 IP, RDS endpoint
├── provider.tf          # AWS provider configuration
├── backend.tf           # Backend config for remote state
└── modules/             # Reusable modules for EC2, S3, and RDS
```

## Requirements

- AWS Account with appropriate IAM permissions
- Terraform installed (v1.3.0 or later)
- AWS CLI configured with credentials

## How to Use

1. Clone this repository and navigate into the project folder:

```bash
git clone <your-repo-url>
cd terraform-projects
```

2. Initialize Terraform:

```bash
terraform init
```

3. Plan your deployment:

```bash
terraform plan -var-file="terraform.tfvars"
```

4. Apply your deployment:

```bash
terraform apply -var-file="terraform.tfvars"
```

5. SSH into your EC2 instance:

```bash
ssh -i "your-key.pem" ec2-user@<EC2 Public IP>
```

## Notes

- Terraform state is stored remotely in `s3://my-terraform-bucket-alex2025`
- Replace all sensitive variables (e.g., passwords, access keys) with secret management best practices
- Security groups are open for demo purposes — restrict access in production

## Outputs

- EC2 Public IP Address
- EC2 Instance ID
- RDS Endpoint
- RDS Identifier
- S3 Bucket ARN

---

**Author**: [Your Name]  
**Created**: July 2025