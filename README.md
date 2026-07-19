# Enterprise IAM Security with Terraform

## Overview

Managing identities and permissions manually in AWS becomes difficult and error-prone as organizations grow. This project demonstrates how Terraform can be used to automate enterprise Identity and Access Management (IAM) while enforcing security best practices.

Using Infrastructure as Code (IaC), I provisioned users, groups, security policies, roles, password policies, and IAM Access Analyzer, allowing the entire IAM environment to be deployed and destroyed consistently with Terraform.

---

## Business Problem

As organizations scale, manually creating IAM users, assigning permissions, and enforcing security standards leads to:

- Inconsistent permissions
- Human error
- Excessive privileges
- Difficult audits
- Slow onboarding of new employees

This project solves these challenges by automating IAM provisioning and applying security controls through Terraform.

---

## Solution

Using Terraform, I automated the deployment of an enterprise IAM environment that includes:

- 15 IAM Users
- 7 IAM Groups
- Automated Group Membership
- Custom IAM Policies
- AWS Managed Policy Attachments
- Enterprise Password Policy
- IAM Roles
- IAM Instance Profile
- IAM Access Analyzer
- MFA Enforcement Policy

All infrastructure can be provisioned or destroyed using Terraform.

---

## Architecture

```
                    Terraform

                         │

                         ▼

                  AWS IAM Services

        ┌─────────────────────────────────┐
        │                                 │
        │       IAM Users (15)            │
        │                                 │
        └──────────────┬──────────────────┘
                       │
                       ▼
        ┌─────────────────────────────────┐
        │         IAM Groups              │
        │                                 │
        │ Security                        │
        │ Cloud Engineering               │
        │ Developers                      │
        │ Finance                         │
        │ HR                              │
        │ Auditors                        │
        │ Interns                         │
        └──────────────┬──────────────────┘
                       │
                       ▼
        ┌─────────────────────────────────┐
        │      IAM Policies               │
        │                                 │
        │ Custom Policies                 │
        │ AWS Managed Policies            │
        └──────────────┬──────────────────┘
                       │
                       ▼
        Security Controls

        • Password Policy
        • IAM Roles
        • MFA Enforcement
        • IAM Access Analyzer
```

---

## Technologies Used

- Terraform
- AWS IAM
- AWS IAM Access Analyzer
- AWS IAM Roles
- AWS Managed Policies
- AWS CLI
- Git
- GitHub

---

## Project Structure

```
enterprise-iam-security/
│
├── access_analyzer.tf
├── group_membership.tf
├── groups.tf
├── password_policy.tf
├── policies.tf
├── provider.tf
├── roles.tf
├── terraform.tfvars
├── users.tf
├── variables.tf
├── .gitignore
└── README.md
```

---

## Security Controls Implemented

### Identity Management

- Automated creation of IAM users
- Department-based IAM groups
- Automated group membership

### Access Management

- Least privilege through custom IAM policies
- AWS managed policies where appropriate
- Department-specific permissions

### Account Security

- Strong password policy
- Password rotation
- Password reuse prevention
- MFA enforcement policy

### Monitoring

- IAM Access Analyzer for external access detection

---

## Deployment

Initialize Terraform

```bash
terraform init
```

Validate configuration

```bash
terraform validate
```

Review deployment

```bash
terraform plan
```

Deploy infrastructure

```bash
terraform apply
```

Destroy infrastructure

```bash
terraform destroy
```

---

## Screenshots

> Add your screenshots here after uploading them to the repository.

Examples:

- IAM Users
- IAM Groups
- IAM Policies
- Password Policy
- IAM Role
- Access Analyzer
- Terraform Apply
- Terraform Destroy

---

## Lessons Learned

This project strengthened my understanding of:

- Infrastructure as Code
- Enterprise IAM design
- Least Privilege Access
- Terraform resource relationships
- AWS managed vs custom IAM policies
- IAM Access Analyzer
- Password policy enforcement
- Automating identity management with Terraform

---

## Future Improvements

- Modularize the Terraform configuration
- Store Terraform state remotely in Amazon S3
- Implement state locking with DynamoDB
- Add CloudTrail logging
- Integrate AWS Security Hub
- Add GuardDuty monitoring
- Implement permission boundaries
- Build reusable Terraform modules

---

## Author

**Taiwo Folorunso**

Cloud Engineer transitioning into Cloud Security Engineering.

GitHub: https://github.com/Pweetyteeh
