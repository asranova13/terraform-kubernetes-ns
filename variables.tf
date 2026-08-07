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