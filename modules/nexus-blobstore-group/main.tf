################################################################################
# Blobstore Group
################################################################################
resource "nexus_blobstore_group" "main" {
  name        = var.name
  fill_policy = var.fill_policy

  members = var.members

  dynamic "soft_quota" {
    for_each = var.soft_quota != null ? [var.soft_quota] : []

    content {
      limit = var.soft_quota.limit
      type  = var.soft_quota.type
    }
  }
}
