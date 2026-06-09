# Terraform GCP

https://blog.marcelocavalcante.net/terraform-criando-uma-infraestrutura-no-google-cloud/

## Arquivos

`main.tf` - Arquivo de configuração do Terraform

`variables.tf` - Onde são armazenados as variáveis que serão usados no main.tf

Fazer o upload desses dois arquivos para o GCP

Criar uma pasta terraform e mover eles para esta pasta

## Terraform Init

```bash
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/google from the dependency lock file
- Using previously-installed hashicorp/google v4.37.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

```

## Terraform Plan

```bash
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_container_cluster.primary will be created
  + resource "google_container_cluster" "primary" {
      + cluster_ipv4_cidr           = (known after apply)
      + datapath_provider           = (known after apply)
      + default_max_pods_per_node   = (known after apply)
      + enable_autopilot            = true
      + enable_binary_authorization = false
      + enable_intranode_visibility = true
      + enable_kubernetes_alpha     = false
      + enable_legacy_abac          = false
      + enable_shielded_nodes       = true
      + endpoint                    = (known after apply)
      + id                          = (known after apply)
      + initial_node_count          = 1
      + label_fingerprint           = (known after apply)
      + location                    = "southamerica-east1"
      + logging_service             = (known after apply)
      + master_version              = (known after apply)
      + monitoring_service          = (known after apply)
      + name                        = "kubernetes-cluster-001"
      + network                     = "default"
      + networking_mode             = (known after apply)
      + node_locations              = (known after apply)
      + node_version                = (known after apply)
      + operation                   = (known after apply)
      + private_ipv6_google_access  = (known after apply)
      + project                     = (known after apply)
      + self_link                   = (known after apply)
      + services_ipv4_cidr          = (known after apply)
      + subnetwork                  = (known after apply)
      + tpu_ipv4_cidr_block         = (known after apply)

      + ip_allocation_policy {
          + cluster_ipv4_cidr_block       = (known after apply)
          + cluster_secondary_range_name  = (known after apply)
          + services_ipv4_cidr_block      = (known after apply)
          + services_secondary_range_name = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
```

## Terraform Apply

```bash
terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_container_cluster.primary will be created
  + resource "google_container_cluster" "primary" {
      + cluster_ipv4_cidr           = (known after apply)
      + datapath_provider           = (known after apply)
      + default_max_pods_per_node   = (known after apply)
      + enable_autopilot            = true
      + enable_binary_authorization = false
      + enable_intranode_visibility = true
      + enable_kubernetes_alpha     = false
      + enable_legacy_abac          = false
      + enable_shielded_nodes       = true
      + endpoint                    = (known after apply)
      + id                          = (known after apply)
      + initial_node_count          = 1
      + label_fingerprint           = (known after apply)
      + location                    = "southamerica-east1"
      + logging_service             = (known after apply)
      + master_version              = (known after apply)
      + monitoring_service          = (known after apply)
      + name                        = "kubernetes-cluster-001"
      + network                     = "default"
      + networking_mode             = (known after apply)
      + node_locations              = (known after apply)
      + node_version                = (known after apply)
      + operation                   = (known after apply)
      + private_ipv6_google_access  = (known after apply)
      + project                     = (known after apply)
      + self_link                   = (known after apply)
      + services_ipv4_cidr          = (known after apply)
      + subnetwork                  = (known after apply)
      + tpu_ipv4_cidr_block         = (known after apply)

      + ip_allocation_policy {
          + cluster_ipv4_cidr_block       = (known after apply)
          + cluster_secondary_range_name  = (known after apply)
          + services_ipv4_cidr_block      = (known after apply)
          + services_secondary_range_name = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

google_container_cluster.primary: Creating...
google_container_cluster.primary: Still creating... [10s elapsed]
google_container_cluster.primary: Still creating... [20s elapsed]
google_container_cluster.primary: Still creating... [30s elapsed]
google_container_cluster.primary: Still creating... [40s elapsed]
google_container_cluster.primary: Still creating... [50s elapsed]
google_container_cluster.primary: Still creating... [1m0s elapsed]
google_container_cluster.primary: Still creating... [1m10s elapsed]
google_container_cluster.primary: Still creating... [1m20s elapsed]
google_container_cluster.primary: Still creating... [1m30s elapsed]
google_container_cluster.primary: Still creating... [1m40s elapsed]
google_container_cluster.primary: Still creating... [1m50s elapsed]
google_container_cluster.primary: Still creating... [2m0s elapsed]
google_container_cluster.primary: Still creating... [2m10s elapsed]
google_container_cluster.primary: Still creating... [2m20s elapsed]
```

## Terraform Destroy

```bash
$ terraform destroy
dsd

```
