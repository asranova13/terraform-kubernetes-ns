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
      pods = "100"
    }
  }
}
