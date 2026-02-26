# Lab M4.04 - State Management Operations

## Operations Practiced

### 1. State Inspection
- `terraform state list` - List all resources
- `terraform state show` - View resource details
- `terraform show -json` - View full state output in JSON

### 2. Resource Import
- Created an S3 bucket outside Terraform
- Added matching resource block in `main.tf`
- Imported bucket into Terraform state with `terraform import`
- Verified with `terraform state list` and checked changes with `terraform plan`

### 3. State Drift Handling
- Modified an S3 bucket outside Terraform to create drift
- Detected drift with `terraform plan`
- Used `terraform refresh` and `terraform apply` to reconcile back to desired state

## Key Learnings
- State is Terraform’s source of truth
- Manual changes cause drift
- Import brings existing resources under Terraform management
- State operations require care
