variable "name" {
  description = "Namespace name in K8s"
  type        = string
  default     = "demo"
}

variable "labels" {
  description = "labels to be used in namespace"
  type        = map(string)
  default = {
    "mylabel" = "level-value"
  }
}

variable "annotations" {
  description = "labels to be used in namespace"
  type        = map(string)
  default = {
    "mylabel" = "level-value"
  }
}

variable "pod" {
  description = "Please specify the amount of pods to deploy"
  type        = number
  default     = 1
}

variable "PodLimit" {
  description = "Please specify pod resource limit"
  type        = map(any)

  default = {
    cpu    = "500m"
    memory = "1024Mi"
  }
}

variable "PVCLimit" {
  description = "Please specify persistent volume claim resource limit"
  type        = map(any)

  default = {
    storage = "2Gi"
  }
}

variable "ContainerLimit" {
  description = "Please specify container resource limit"
  type        = map(any)

  default = {
    cpu    = "500m"
    memory = "1024Mi"
  }
}
