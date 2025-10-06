terraform {
  
}

module "terraform-landing-zone" {
  source  = "app.terraform.io/djs-tfcb/terraform-landing-zone/tfe"
  version = "1.0.3"
  tf_org = "djs-tfcb"
  gh_org = "djschnei21"
  oauth_client_name = "github-test"
  vcs = true
  projects = true
  app_ids = [
    # "AAA",
    # "BBB"
  ]
  app_envs = [ "development", "test", "production" ]
}