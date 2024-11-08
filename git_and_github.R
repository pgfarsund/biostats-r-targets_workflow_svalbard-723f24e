### git and github

library(usethis)

use_git_config(
  user.name = "pgfarsund",
  user.email = "pgfarsund@gmail.com"
)

create_github_token()

gitcreds::gitcreds_set()

git_vaccinate()

use_git()
