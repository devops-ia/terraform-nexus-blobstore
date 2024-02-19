################################################################################
# Blobstore Azure
################################################################################
resource "nexus_blobstore_azure" "main" {
  name = var.name

  bucket_configuration {
    account_name   = var.bucket_configuration.account_name
    container_name = var.bucket_configuration.container_name

    authentication {
      authentication_method = var.bucket_configuration.authentication.authentication_method
      account_key           = var.bucket_configuration.authentication.account_key
    }
  }

  dynamic "soft_quota" {
    for_each = var.soft_quota != null ? [var.soft_quota] : []

    content {
      limit = var.soft_quota.limit
      type  = var.soft_quota.type
    }
  }
}
