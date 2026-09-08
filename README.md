## Usage

Add this code to your Terraform file to create a namespace using this module.

```tf
module "ns-demo" {
  source = "farrukh90/ns/kubernetes"

  name = "demo-ns"

  labels = {
    mylabel = "level-value"
  }

  annotations = {
    mylabel = "level-value"
  }

  pod = 100

  PodLimit = {
    cpu    = "500m"
    memory = "1024Mi"
  }

  PVCLimit = {
    storage = "2Gi"
  }

  ContainerLimit = {
    cpu    = "500m"
    memory = "1024Mi"
  }
}
```

## Namespace Configuration

The module allows you to configure the namespace name, labels, and annotations.

- `name` — specifies the Kubernetes namespace name.
- `labels` — specifies labels to apply to the namespace.
- `annotations` — specifies annotations to apply to the namespace.

## Pod Quota

Namespaces created by this module have a configurable pod quota using the `pod` variable.

The module creates a Kubernetes `ResourceQuota` to control the number of pods in the namespace.

## Resource Limits

The module creates a Kubernetes `LimitRange` to control resource limits within the namespace.

- `PodLimit` — sets the maximum CPU and memory allowed for a pod.
- `PVCLimit` — sets the minimum storage size for a PersistentVolumeClaim.
- `ContainerLimit` — sets the default CPU and memory limits for containers.

## Default Values

| Variable | Default |
|---|---|
| `name` | `demo` |
| `labels` | `mylabel = "level-value"` |
| `annotations` | `mylabel = "level-value"` |
| `pod` | `1` |
| `PodLimit` | CPU: `500m`, Memory: `1024Mi` |
| `PVCLimit` | Storage: `2Gi` |
| `ContainerLimit` | CPU: `500m`, Memory: `1024Mi` |

## Run

Run the following commands to initialize Terraform and create the resources.

```bash
terraform init
terraform apply
```

## Outputs

| Name | Description |
|---|---|
| `name` | Name of the created namespace |
