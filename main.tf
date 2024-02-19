################################################################################
# Blobstore Azure
################################################################################
module "nexus_blobstore_azure" {
  source = "./modules/nexus-blobstore-azure"

  for_each = { for b in var.nexus_blobstore_azure : b.name => b }

  name                 = each.value.name
  bucket_configuration = each.value.bucket_configuration
  soft_quota           = each.value.soft_quota
}

################################################################################
# Blobstore File
################################################################################
module "nexus_blobstore_file" {
  source = "./modules/nexus-blobstore-file"

  for_each = { for b in var.nexus_blobstore_file : b.name => b }

  name       = each.value.name
  path       = each.value.path
  soft_quota = each.value.soft_quota
}

################################################################################
# Blobstore Group
################################################################################
module "nexus_blobstore_group" {
  source = "./modules/nexus-blobstore-group"

  for_each = { for b in var.nexus_blobstore_group : b.name => b }

  name        = each.value.name
  fill_policy = each.value.fill_policy
  members     = each.value.members
  soft_quota  = each.value.soft_quota
}

################################################################################
# Blobstore S3
################################################################################
module "nexus_blobstore_s3" {
  source = "./modules/nexus-blobstore-s3"

  for_each = { for b in var.nexus_blobstore_s3 : b.name => b }

  name                 = each.value.name
  bucket_configuration = each.value.bucket_configuration
  soft_quota           = each.value.soft_quota
}
