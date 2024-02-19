################################################################################
# Blobstore Azure
################################################################################
output "blobstore_azure_name" {
  description = "The name of the blobstore azure."
  value       = [for b in module.nexus_blobstore_azure : b.name]
}

################################################################################
# Blobstore File
################################################################################
output "blobstore_file_name" {
  description = "The name of the blobstore file."
  value       = [for b in module.nexus_blobstore_file : b.name]
}

################################################################################
# Blobstore Group
################################################################################
output "blobstore_group_name" {
  description = "The name of the blobstore group."
  value       = [for b in module.nexus_blobstore_group : b.name]
}

################################################################################
# Blobstore S3
################################################################################
output "blobstore_s3_name" {
  description = "The name of the blobstore s3."
  value       = [for b in module.nexus_blobstore_s3 : b.name]
}
