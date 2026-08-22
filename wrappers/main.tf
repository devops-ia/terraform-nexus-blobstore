module "wrapper" {
  source = "../"

  for_each = var.items

  nexus_blobstore_azure = try(each.value.nexus_blobstore_azure, var.defaults.nexus_blobstore_azure, [])
  nexus_blobstore_file  = try(each.value.nexus_blobstore_file, var.defaults.nexus_blobstore_file, [])
  nexus_blobstore_group = try(each.value.nexus_blobstore_group, var.defaults.nexus_blobstore_group, [])
  nexus_blobstore_s3    = try(each.value.nexus_blobstore_s3, var.defaults.nexus_blobstore_s3, [])
}
