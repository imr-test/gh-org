resource "github_repository" "this" {
  name        = var.name
  description = var.description

  visibility      = var.visibility
  has_discussions = var.has_discussions
  has_issues      = var.has_issues
  has_projects    = var.has_projects
  has_wiki        = var.has_wiki
}

resource "github_team_repository" "this" {
  for_each = {
    for team in var.teams : team.name => team
  }
  team_id    = data.github_team.this[each.value.name].id
  repository = github_repository.this.name
  permission = each.value.permission
}
