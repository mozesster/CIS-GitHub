resource "gitlab_project" "bad_example" {
  name         = "insecure-project"
  visibility_level = "public"  # ❌ Should be private
  merge_requests_enabled = true
  issues_enabled          = true
  wiki_enabled            = true  # ❌ Often recommended to be disabled unless needed
  snippets_enabled        = true  # ❌ Risky for secret leakage
  container_registry_enabled = true
  lfs_enabled = true

  # No requirements for code review or pipeline security
}
