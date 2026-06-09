# terrafom apply

```bash
✗ terraform apply

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

    Do you want to perform these actions?
    Terraform will perform the actions described above.
    Only 'yes' will be accepted to approve.

    Enter a value: yes

    aws_s3_bucket.my-test-bucket: Creating...
    aws_s3_bucket.my-test-bucket: Creation complete after 4s [id=my-tf-test-bucket-5474]

    Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```
