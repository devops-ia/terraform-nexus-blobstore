################################################################################
# Blobstore Azure
################################################################################
output "name" {
  description = "The name of the resource."
  value       = module.nexus_blobstore_azure.name
}
