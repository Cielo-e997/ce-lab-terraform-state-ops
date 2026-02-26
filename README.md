k# Lab M4.04 - State Management Operations

This lab focused on understanding Terraform state operations in real scenarios,
including inspection, importing existing infrastructure, and handling drift.

---

## Operations Practiced

### 1. State Inspection
- Used `terraform state list` to view managed resources
- Used `terraform state show` to inspect resource attributes
- Used `terraform show -json` to explore state structure

### 2. Resource Import
- Created an S3 bucket manually using AWS CLI
- Added the resource block in Terraform configuration
- Imported the bucket using `terraform import`
- Verified changes using `terraform plan`

### 3. State Drift Handling
- Modified a bucket outside Terraform
- Detected drift with `terraform plan`
- Used `terraform refresh` and `terraform apply` to reconcile state

---

## Key Learnings

- Terraform state is the source of truth for infrastructure
- Manual changes outside Terraform create drift
- Importing allows existing infrastructure to be managed
- State operations must be performed carefully
