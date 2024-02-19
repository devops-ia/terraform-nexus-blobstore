provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}

################################################################################
# Blobstore Azure
################################################################################
module "nexus_blobstore_azure" {
  source = "../../modules/nexus-blobstore-azure"

  name = "my-azure-blobstore"

  bucket_configuration = {
    account_name = "example-account-name"
    authentication = {
      authentication_method = "ACCOUNTKEY"
      account_key           = "example-account-key"
    }
    container_name = "example-container-name"
  }

  soft_quota = {
    limit = 1000000
    type  = "spaceRemainingQuota"
  }
}
