# CloudMind project rules

## What this project is
A multi-agent AI system (LangGraph) that provisions and manages AWS infrastructure
via Terraform.

## Conventions
- All Terraform lives in /infra/
- Each Terraform folder has exactly: main.tf, variables.tf, outputs.tf
- Python agent code lives in /agent/
- Never hardcode AWS credentials — use environment variables or AWS profile
- Never auto-apply Terraform — always plan first, require explicit approval