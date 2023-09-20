variable "name" {
  description = "Team Name"
  type        = string
}

variable "description" {
  description = "Team description"
  type        = string
  default     = ""
}

variable "users" {
  description = "Users associated to the team"
  type = list(object({
    name = string
    role = string
  }))

  default = []
  validation {
    condition = alltrue([
      for u in var.users : contains(["member", "maintainer"], u.role)
    ])
    error_message = "Allowed values for role are: member, maintainer"
  }
}
