# GitHub Organization IaC

GitHub Organization IAC

## Project structure

This repository represents the reality of the infrastructure for the GitHub
organization. It makes use of three modules that represent the entities required
for this setup:

- [Repositories](../modules/repository/README.md)
- [Teams](../modules/team/README.md)
- [Users](../modules/user/README.md)

The idea is to be able to declare at the root level of the repository a
`terraform.vars` file that contains the mapping between the desired
repositories, the teams associated to those repositories and finally the users
that are invited to the GitHub organization

The goal is to be as explicit as possible so that by having a look into the
[`terraform.tfvars`](../terraform.tfvars) file we can quickly see the mappings
between all these entities

## Requirements

- [Terraform](https://www.terraform.io/)
- [terraform-docs](https://terraform-docs.io/)
- [Github CLI](https://github.com/cli/cli)
- [direnv](https://direnv.net/docs/installation.html)

## Initial setup

1. Generate a new [Github token](https://github.com/settings/tokens)
2. Use the token to login using GitHub cli

```
❯ gh auth login
? What account do you want to log into? GitHub.com
? You're already logged into github.com. Do you want to re-authenticate? Yes
? What is your preferred protocol for Git operations? HTTPS
? How would you like to authenticate GitHub CLI? Paste an authentication token
Tip: you can generate a Personal Access Token here https://github.com/settings/tokens
The minimum required scopes are 'repo', 'read:org', 'workflow'.
? Paste your authentication token: ****************************************
- gh config set -h github.com git_protocol https
✓ Configured git protocol
✓ Logged in as XXXXX
```

3. When you enter the `live` directory, you will need to allow
   [direnv](https://direnv.net/) to execute automatically within the directory
   by running `direnv allow`

## How to generate docs

From the [live](./live) folder, run: `terraform-docs .`. That will update the
[`README.md`](README.md) file at the root level of the respository
