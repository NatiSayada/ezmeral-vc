
resource "local_file" "ansible" {
  content = templatefile("./hostfile.tpl", {
    controller_ips = [
      for i in keys(var.ez-controller):
      module.ez-controller[i].ip_address
    ],
    gw_ips = [
      for i in keys(var.ez-gw):
      module.ez-gw[i].ip_address
    ],
    workers_ips = [
      for i in keys(var.ez-worker):
      module.ez-worker[i].ip_address
    ],

    ssh_key = var.ssh_key

  })

  filename = "../../ansible/hosts-py.ini"
  depends_on = [
    module.ez-controller,
    module.ez-gw,
    module.ez-worker
  ]
}