### What are Terraform Modules?
A Terraform module is just a folder containing .tf files.

- It’s a reusable group of Terraform resources.
- A module can be called multiple times with different inputs.
- It helps organize and simplify your infrastructure code.
- Every Terraform project is itself a module (the root module).


### Terraform Project - EC2 Instance Module
Project Structure

```sh

project-root/
│
├── main.tf           # Root module - calls the ec2_instance module
├── provider.tf     
├── terraform.tf
│
└── modules/
    └── infra/
        ├── ec2.tf      # Resource definitions for EC2 instance
        ├── bucket.tf      # S3 bucket
        ├── variables.tf # Input variables for EC2 module
        ├── table.tf   # DynamoDB
```
### 🛠️ Usage
- Initialize Terraform:
  ```sh
  terraform init
  ```
- Plan the infrastructure changes:
  ```sh
  terraform plan
  ```
- Apply the configuration:
  ```sh
  terraform apply
  ```

### ✅ Prerequisites
- Terraform installed
- AWS credentials configured (via environment variables or AWS CLI)



### 🎯 Why Use Modules?
- Reusability: Define once, use many times.
- Maintainability: Easy to update infrastructure.
- Readability: Clean and modular code.
- Team collaboration: Different teams can manage different modules.
