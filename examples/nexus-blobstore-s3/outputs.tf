################################################################################
# Blobstore File
################################################################################
output "name" {
  description = "The name of the resource."
  value       = module.nexus_blobstore_s3.name
}
