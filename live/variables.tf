variable "repositories" {
  description = "Defines the list of repositories for the organization"
  type = list(object({
    name            = string
    description     = optional(string, "")
    has_discussions = optional(bool, true)
    has_issues      = optional(bool, true)
    has_projects    = optional(bool, true)
    has_wiki        = optional(bool, true)
    visibility      = optional(string, "private")
    teams = list(object({
      name       = string
      permission = string
    }))
  }))
}

variable "teams" {
  description = "Defines the list of teams create for the organization"
  type = list(object({
    name        = string
    description = string
    users = list(object({
      name = string
      role = string
    }))
  }))
  default = []
}

variable "users" {
  description = "Defines the list of users that belong to the organization and their role"
  type = list(object({
    name = string
    role = string
  }))
}
