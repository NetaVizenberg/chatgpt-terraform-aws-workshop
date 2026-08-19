# ChatGPT Terraform AWS Workshop

AI-assisted Terraform workshop using ChatGPT, GitHub, Terraform, and AWS.

## Goal

Build reusable Terraform modules for an AWS VPC and EC2 instances, add CI/CD with GitHub Actions and AWS OIDC, store Terraform state remotely in S3, and detect infrastructure drift.

## Planned structure

```text
modules/
├── vpc/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── ec2-instance/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf

main.tf
variables.tf
outputs.tf
providers.tf
backend.tf
.github/workflows/
├── terraform.yml
└── drift-check.yml
```

Terraform implementation is added in the next parts of the workshop.
