module "wrapper" {
  source = "../../modules/nexus-blobstore-file"

  for_each = var.items

  name       = try(each.value.name, var.defaults.name)
  path       = try(each.value.path, var.defaults.path, null)
  soft_quota = try(each.value.soft_quota, var.defaults.soft_quota, null)
}
