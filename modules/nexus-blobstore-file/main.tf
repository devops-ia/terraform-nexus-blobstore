################################################################################
# Blobstore File
################################################################################
resource "nexus_blobstore_file" "main" {
  name = var.name
  path = var.path

  dynamic "soft_quota" {
    for_each = var.soft_quota != null ? [var.soft_quota] : []

    content {
      limit = var.soft_quota.limit
      type  = var.soft_quota.type
    }
  }
}
