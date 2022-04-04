module "ez-controller" {
  source = "../../modules/ez-controller"

  for_each      = var.ez-controller
  vm_name       = each.key
  cpus          = each.value.cpus
  memory        = each.value.memory
  ssh_key       = each.value.ssh_key
  template_name = each.value.template_name
  folder        = each.value.folder
}

module "ez-gw" {
  source = "../../modules/ez-gw"

  for_each      = var.ez-gw
  vm_name       = each.key
  cpus          = each.value.cpus
  memory        = each.value.memory
  ssh_key       = each.value.ssh_key
  template_name = each.value.template_name
  folder        = each.value.folder
}

module "ez-worker" {
  source = "../../modules/ez-worker"

  for_each      = var.ez-worker
  vm_name       = each.key
  cpus          = each.value.cpus
  memory        = each.value.memory
  ssh_key       = each.value.ssh_key
  template_name = each.value.template_name
  folder        = each.value.folder
}
