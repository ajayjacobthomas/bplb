# Variables for the IAM module

variable "users" {
  type = map(object({
    principal_id = string
  }))
  description = "A map of users and their principal IDs for role assignment."
}

variable "role" {
  type        = string
  description = "The role to assign (e.g., Reader, Contributor)."
}

variable "scope" {
  type        = string
  description = "The scope for the role assignment (e.g., resource group ID)."
}