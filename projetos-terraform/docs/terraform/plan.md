# terraform plan

```bash
✗ terraform plan

    Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
    + create

    Terraform will perform the following actions:

    # aws_s3_bucket.my-test-bucket will be created
    + resource "aws_s3_bucket" "my-test-bucket" {
        + acceleration_status         = (known after apply)
        + acl                         = (known after apply)
        + arn                         = (known after apply)
        + bucket                      = "my-tf-test-bucket-5474"
        + bucket_domain_name          = (known after apply)
        + bucket_prefix               = (known after apply)
        + bucket_regional_domain_name = (known after apply)
        + force_destroy               = false
        + hosted_zone_id              = (known after apply)
        + id                          = (known after apply)
        + object_lock_enabled         = (known after apply)
        + policy                      = (known after apply)
        + region                      = (known after apply)
        + request_payer               = (known after apply)
        + tags                        = {
            + "Environment" = "Dev"
            + "Managedby"   = "Terraform"
            + "Name"        = "My bucket"
            }
        + tags_all                    = {
            + "Environment" = "Dev"
            + "Managedby"   = "Terraform"
            + "Name"        = "My bucket"
            }
        + website_domain              = (known after apply)
        + website_endpoint            = (known after apply)
        }

    Plan: 1 to add, 0 to change, 0 to destroy.

    ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

    Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.

```
