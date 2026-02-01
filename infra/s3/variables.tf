variable "aws_region" {
    description = "AWS region to deploy resources into"
    type        = string
    default     = "us-west-2"
}

variable "project_name" {
  description = "Project identifier"
  type        = string
  default     = "cloudmind"
}

# If default value isnt present and none is provide then tf will interactively ask for it
variable "environment" {
  description = "Deployment environment — drives naming and tagging"
  type        = string
}