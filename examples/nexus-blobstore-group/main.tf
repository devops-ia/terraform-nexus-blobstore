provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Blobstore Group
################################################################################
module "nexus_blobstore_group" {
  source = "../../modules/nexus-blobstore-group"

  name        = "group-example"
  fill_policy = "roundRobin"
  members = [
    "one"
  ]
  soft_quota = {
    limit = 1024000000
    type  = "spaceRemainingQuota"
  }
}
