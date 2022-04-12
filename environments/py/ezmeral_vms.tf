variable "ez-controller" {
  description = "ezmeral vm defenition"

  type = map(any)
  default = {
    ez-py-controller-01 = {
      cpus          = 32
      memory        = 32768
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/dev-py"
    }
  }
}

variable "ez-worker" {
  type = map(any)
  default = {
    ez-py-worker-01 = {
      cpus          = 32
      memory        = 65536
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/dev-py"
    },
    ez-py-worker-02 = {
      cpus          = 32
      memory        = 65536
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/dev-py"
    }
  }
}

variable "ez-gw" {
  type = map(any)
  default = {
    ez-py-gateway-01 = {
      cpus          = 16
      memory        = 8192
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/dev-py"
    }
  }
}