variable "name" {
  type        = string
  description = "Resource name"
}


variable "cognitive_account_id" {
  type        = string
  description = "Cognitive Account ID"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = "OSCAR"
}

variable "environment" {
  type        = string
  description = "Specify the type of environement"
  default     = "dev"

  validation {
    condition = contains([
      "dev",
      "prod",
    ], var.environment)
    error_message = "Then environment value is invalid."
  }
}
