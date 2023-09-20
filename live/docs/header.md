# GitHub Organization IaC

GitHub Organization IAC

# Requirements

- [Terraform](https://www.terraform.io/)
- [terraform-docs](https://terraform-docs.io/)
- [Github CLI](https://github.com/cli/cli)
- [direnv](https://direnv.net/docs/installation.html)

# Initial setup

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

# Generate documentation

From the [live](./live) folder, run: `terraform-docs .`. That will update the
[`README.md`](README.md) file at the root level of the respository
