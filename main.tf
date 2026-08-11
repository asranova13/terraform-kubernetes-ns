resource "kubernetes_namespace_v1" "this" {
  metadata {
    annotations = var.annotations
    labels      = var.labels
    name        = var.name
  }
}

resource "kubernetes_resource_quota_v1" "pod_limit" {
  metadata {
    name      = "pod-limit"
    namespace = kubernetes_namespace_v1.this.metadata[0].name
  }

  spec {
    hard = {
      pods = "100"
    }
  }
}
