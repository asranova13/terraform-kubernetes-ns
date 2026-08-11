## Usage

Add this code to your tf file to start making this namespace module.

```tf
module ns-demo {
    source      = "farrukh90/ns/kubernetes"
    name        = "demo-ns"
    max_pods    = 100
}
```
## Pod limit
Namespaces created by this module are capped at 100 pods (`max_pods` var, change it if you need a different number). It's just a `ResourceQuota` under the hood, so k8s handles the rejecting once you hit the cap.

## Run
Make sure to run these commands to initialize and create the module.

```bash
terraform init
terraform apply
```

## Outputs
| Name | Description |
|------|-------------|
| `name` | name of the created namespace |
| `max_pods` | pod limit enforced on the namespace |
