variable "name" {
  description = "Repository name"
  type        = string
}

variable "description" {
  description = "Repository description"
  type        = string
}

variable "has_discussions" {
  description = "Whether the repository has enabled the discussions feature"
  type        = bool
  default     = true
}

variable "has_issues" {
  description = "Whether the repository has enabled the issues feature"
  type        = bool
  default     = true
}

variable "has_projects" {
  description = "Whether the repository has enabled the projects feature"
  type        = bool
  default     = true
}

variable "has_wiki" {
  description = "Whether the repository has enabled the wiki feature"
  type        = bool
  default     = true
}

variable "visibility" {
  description = "Repository Visibility"
  default     = "private"
  type        = string
  validation {
    condition     = can(regex("^(public|private)$", var.visibility))
    error_message = "Valid values: public, private"
  }
}

variable "teams" {
  description = "Associates and grants teams specific permissions on the repository"
  type = list(object({
    name       = string
    permission = string
  }))
  validation {
    condition = alltrue([
      for t in var.teams : contains(["pull", "triage", "push", "maintain", "admin"], t.permission)
    ])
    error_message = "Allowed values for permission are: pull, triage, push, maintain, admin"
  }
  default = []
}

variable "allow_merge_commit" {
  description = "Whether or not we allow merge commit"
  type        = bool
  default     = false
}
