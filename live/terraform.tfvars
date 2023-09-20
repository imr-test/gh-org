repositories = [
  {
    name        = "voxsmart-service-api",
    description = "Service API"
    visibility  = "private"
    teams = [
      {
        name       = "frontend"
        permission = "pull"
      },
      {
        name       = "backend"
        permission = "admin"
      }

    ]
  },
  {
    name        = "voxsmart-service-ui",
    description = "Service UI"
    visibility  = "private"
    teams = [
      {
        name       = "frontend"
        permission = "admin"
      }
    ]
  },
  {
    name            = "voxsmart-service-sdk",
    description     = "Service SDK"
    visibility      = "public"
    has_projects    = false
    has_discussions = false
    teams = [
      {
        name       = "backend"
        permission = "push"
      },
      {
        name       = "frontend"
        permission = "push"
      }
    ]
  }
]

teams = [
  {
    name        = "frontend"
    description = "frontend developers"
    users = [
      {
        name = "imkrazer"
        role = "member"
      }
    ]
  },
  {
    name        = "backend"
    description = "backend developers"
    users = [
      {
        name = "ivansamartino"
        role = "maintainer"
      },
      {
        name = "imkrazer"
        role = "member"
      }
    ]
  }
]

users = [
  {
    name = "ivansamartino"
    role = "admin"
  },
  {
    name = "imkrazer"
    role = "member"
  }
]
