## Usage
### Please copy paste below code

```
module  ns-demo {
  source      = "farrukh90/ns/kubernetes"

  name        = "demo-ns"

  annotations  = {
    mylabel = "label-value"
  }

  labels       = {
    mylabel = "label-value"
  }

}

```
### Run
```
terraform init
terraform apply
```