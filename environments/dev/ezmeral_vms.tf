variable "ez-controller" {
  description = "ezmeral vm defenition"

  type = map(any)
  default = {
    ez-controller-01 = {
      cpus          = 32
      memory        = 32768
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    }
  }
}

variable "ez-worker" {
  type = map(any)
  default = {
    ez-worker-01 = {
      cpus          = 32
      memory        = 32768
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    },
    ez-worker-02 = {
      cpus          = 32
      memory        = 32768
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    },
    ez-worker-03 = {
      cpus          = 32
      memory        = 32768
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    },
    ez-worker-04 = {
      cpus          = 32
      memory        = 32768
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    }
  }
}

variable "ez-gw" {
  type = map(any)
  default = {
    ez-gateway-01 = {
      cpus          = 16
      memory        = 8192
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    },
    ez-gateway-02 = {
      cpus          = 16
      memory        = 8192
      ssh_key       = "~/.ssh/ez_rsa.pub"
      template_name = "hpe-ecp-template"
      folder        = "ezmeral/stg"
    }
  }
}