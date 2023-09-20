resource "github_team" "this" {
  name        = var.name
  description = var.description
  privacy     = "closed"
}

resource "github_team_membership" "this" {
  for_each = {
    for user in var.users : user.name => user
  }
  team_id  = github_team.this.id
  username = each.value.name
  role     = each.value.role
}
