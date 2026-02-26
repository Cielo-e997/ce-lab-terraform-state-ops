# Terraform State Commands Cheat Sheet

## Inspection
```bash
terraform state list            # List all resources in state
terraform state show <resource> # Show detailed resource information
terraform show                  # Show full state
terraform show -json | jq       # Show state in JSON format
