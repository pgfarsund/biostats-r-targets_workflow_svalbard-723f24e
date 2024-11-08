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

usethis::git_default_branch_rename()
usethis::git_default_branch_configure(name = "main")
