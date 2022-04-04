resource "vsphere_virtual_machine" "vm" {
  name                 = var.vm_name
  resource_pool_id     = data.vsphere_resource_pool.pool.id
  datastore_id         = data.vsphere_datastore.datastore.id
  num_cpus             = var.cpus
  num_cores_per_socket = var.cpus
  memory               = var.memory
  guest_id             = data.vsphere_virtual_machine.template.guest_id
  scsi_type            = data.vsphere_virtual_machine.template.scsi_type
  folder               = var.folder
  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }
  disk {
    label            = "disk0"
    size             = 120
    thin_provisioned = true

  }
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
    customize {
      linux_options {
        host_name = var.vm_name
        domain    = "ecp.demo"
        time_zone = "Asia/Jerusalem"
      }
      network_interface {}
    }
  }
}
