################################################################################
# Blobstore S3
################################################################################
output "name" {
  description = "The name of the resource."
  value       = nexus_blobstore_s3.main.name
}
