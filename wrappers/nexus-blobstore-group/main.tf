module "wrapper" {
  source = "../../modules/nexus-blobstore-group"

  for_each = var.items

  fill_policy = try(each.value.fill_policy, var.defaults.fill_policy)
  members     = try(each.value.members, var.defaults.members)
  name        = try(each.value.name, var.defaults.name)
  soft_quota  = try(each.value.soft_quota, var.defaults.soft_quota, null)
}
