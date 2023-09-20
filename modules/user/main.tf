resource "github_membership" "this" {
  username = var.name
  role     = var.role
}
