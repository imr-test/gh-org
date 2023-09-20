variable "name" {
  description = "Github user"
  type        = string
}

variable "role" {
  description = "Organization role"
  type        = string
  default     = "member"
  validation {
    condition     = can(regex("^(member|admin)$", var.role))
    error_message = "Valid values: member, admin"
  }
}
