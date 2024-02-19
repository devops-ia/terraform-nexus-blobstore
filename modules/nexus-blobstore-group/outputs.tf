################################################################################
# Blobstore Group
################################################################################
output "name" {
  description = "The name of the resource."
  value       = nexus_blobstore_group.main.name
}
