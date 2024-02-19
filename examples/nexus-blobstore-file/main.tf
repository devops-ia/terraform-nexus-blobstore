provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Blobstore File
################################################################################
module "nexus_blobstore_file" {
  source = "../../modules/nexus-blobstore-file"

  name = "blobstore-file"
  path = "/nexus-data/blobstore-file"

  soft_quota = {
    limit = 1024000000
    type  = "spaceRemainingQuota"
  }
}
