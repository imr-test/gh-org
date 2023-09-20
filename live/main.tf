module "repositories" {
  source = "../modules/repository"
  for_each = {
    for repo in var.repositories : repo.name => repo
  }
  name            = each.value.name
  description     = each.value.description
  visibility      = each.value.visibility
  has_discussions = each.value.has_discussions
  has_issues      = each.value.has_issues
  has_wiki        = each.value.has_wiki
  has_projects    = each.value.has_projects
  teams           = each.value.teams
  depends_on      = [module.teams, module.users]
}

module "teams" {
  source = "../modules/team"
  for_each = {
    for team in var.teams : team.name => team
  }
  name  = each.value.name
  users = each.value.users
}

module "users" {
  source = "../modules/user"
  for_each = {
    for user in var.users : user.name => user
  }
  name = each.value.name
  role = each.value.role
}
