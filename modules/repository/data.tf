data "github_team" "this" {
  for_each = {
    for team in var.teams : team.name => team
  }
  slug = each.value.name
}
