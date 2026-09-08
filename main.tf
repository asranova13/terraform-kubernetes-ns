resource "kubernetes_namespace_v1" "this" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name
  }
}

resource "kubernetes_resource_quota" "this" {
  metadata {
    name      = "pod-quota"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }

  spec {
    hard = {
      pods = tostring(var.pod)
    }

    scopes = ["BestEffort"]
  }
}

resource "kubernetes_limit_range" "this" {
  metadata {
    name      = "limit-range"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }

  spec {
    limit {
      type = "Pod"
      max  = var.PodLimit
    }

    limit {
      type = "PersistentVolumeClaim"
      min  = var.PVCLimit
    }

    limit {
      type    = "Container"
      default = var.ContainerLimit
    }
  }
}
