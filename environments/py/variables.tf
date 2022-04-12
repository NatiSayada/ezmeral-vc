variable "myhomeip" {
  default = "80.178.204.200"
}
variable "ez_bin_download" {
  default = "https://sayadastraccount.blob.core.windows.net/ezmeral/hpe-cp-rhel-release-5.3-3031.bin?sv=2020-10-02&st=2022-01-17T12%3A30%3A52Z&se=2022-06-30T11%3A30%3A00Z&sr=b&sp=r&sig=sZG8OOe9VH%2FZqWVv%2BF0u5dP6tiZjTDUosMdx39GX7%2Fk%3D"
}
variable "ez_bin_file" {
  default = "hpe-cp-rhel-release-5.3-3031.bin"
}

variable "ssh_key" {
  default = "~/.ssh/ez_rsa.pub"
}

variable "vsphere_user" {
  default = "administrator@ecp.demo"
}
variable "vsphere_password" {
  default = "HPEpassword@1"
}
variable "vsphere_server" {
  default = "vc.ecp.demo"
}

variable "template_name" {
  default = "CentOS7-Template"
}
