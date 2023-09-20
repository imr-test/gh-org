# User module

This module represents the user entity. GitHub's users cannot be created
programmatically from Terraform and currently there is no integration with IDP
service, this module just ensures that the existing GitHub user receives the
invitation to the GitHub organization
