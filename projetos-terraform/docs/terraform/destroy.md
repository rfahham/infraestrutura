# terraform destroy

## Destruindo a infra

```bash
✗ terraform destroy
aws_key_pair.this: Refreshing state... [id=aws-instance-key]
aws_instance.web[0]: Refreshing state... [id=i-0f7514c32d57c00e4]
aws_instance.web[1]: Refreshing state... [id=i-0e66648d33d7ab15c]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.web[0] will be destroyed
  - resource "aws_instance" "web" {
      - ami                                  = "ami-0e731c8a588258d0d" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:058264412712:instance/i-0f7514c32d57c00e4" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 2 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0f7514c32d57c00e4" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t3.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "aws-instance-key" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0ae93b196837f65e0" -> null
      - private_dns                          = "ip-172-31-29-0.ec2.internal" -> null
      - private_ip                           = "172.31.29.0" -> null
      - public_dns                           = "ec2-34-229-164-248.compute-1.amazonaws.com" -> null
      - public_ip                            = "34.229.164.248" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "gs-aws-instance",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-0fc6f5b141933b93c" -> null
      - tags                                 = {
          - "Name"    = "aws-instance"
          - "Project" = "Aplicando Terraform"
        } -> null
      - tags_all                             = {
          - "Name"    = "aws-instance"
          - "Project" = "Aplicando Terraform"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0ebc6d200d448e258",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 2 -> null
        }

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 3000 -> null
          - tags                  = {} -> null
          - throughput            = 125 -> null
          - volume_id             = "vol-0c6869d94396acd50" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp3" -> null
        }
    }

  # aws_instance.web[1] will be destroyed
  - resource "aws_instance" "web" {
      - ami                                  = "ami-0e731c8a588258d0d" -> null
      - arn                                  = "arn:aws:ec2:us-east-1:058264412712:instance/i-0e66648d33d7ab15c" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-east-1b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 2 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0e66648d33d7ab15c" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t3.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - key_name                             = "aws-instance-key" -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-09c148ade1d922286" -> null
      - private_dns                          = "ip-172-31-17-61.ec2.internal" -> null
      - private_ip                           = "172.31.17.61" -> null
      - public_dns                           = "ec2-54-227-189-196.compute-1.amazonaws.com" -> null
      - public_ip                            = "54.227.189.196" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "gs-aws-instance",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-0fc6f5b141933b93c" -> null
      - tags                                 = {
          - "Name"    = "aws-instance"
          - "Project" = "Aplicando Terraform"
        } -> null
      - tags_all                             = {
          - "Name"    = "aws-instance"
          - "Project" = "Aplicando Terraform"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0ebc6d200d448e258",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 2 -> null
        }

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_protocol_ipv6          = "disabled" -> null
          - http_put_response_hop_limit = 2 -> null
          - http_tokens                 = "required" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 3000 -> null
          - tags                  = {} -> null
          - throughput            = 125 -> null
          - volume_id             = "vol-0b0ee6d3eed90f4de" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp3" -> null
        }
    }

  # aws_key_pair.this will be destroyed
  - resource "aws_key_pair" "this" {
      - arn         = "arn:aws:ec2:us-east-1:058264412712:key-pair/aws-instance-key" -> null
      - fingerprint = "88:51:9b:a4:d2:22:4a:b4:39:4f:4d:dd:77:f0:f9:0b" -> null
      - id          = "aws-instance-key" -> null
      - key_name    = "aws-instance-key" -> null
      - key_pair_id = "key-01ef080cdbfc9ee52" -> null
      - key_type    = "rsa" -> null
      - public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDsZniCHYr9aZh6fGlcJnK7mKY15hc0PRw7cwT9AcS0Z2D3UjhpewqIHRiFNFrNJOUliD1DSUogThrIqsvY8uLS/3ucB6seogG0fDMYk/aViONnwdI8+z18i2vWiM1BzZ7I86OuVI8RKZdxgGXd0Po0QdL0jLtky6h5Myy9A4iFPH4Vas8aTZcPedR40zlfprEnAUHFN3QJYYTnrIQjefSErZRonirYTI073SLUxlNUf2CjLMcbwLAoZKf6egN/aTpy62FQEjhoCiYBVeefVxmzhXNcTzSpdNDozBewOfFHZpVuNknRYiv/0gSgXcBx1YOpwGHO30XrwAGBwrA4wu8H ricardo.fahham" -> null
      - tags        = {} -> null
      - tags_all    = {} -> null
    }

Plan: 0 to add, 0 to change, 3 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.web[1]: Destroying... [id=i-0e66648d33d7ab15c]
aws_instance.web[0]: Destroying... [id=i-0f7514c32d57c00e4]
aws_instance.web[0]: Still destroying... [id=i-0f7514c32d57c00e4, 10s elapsed]
aws_instance.web[1]: Still destroying... [id=i-0e66648d33d7ab15c, 10s elapsed]
aws_instance.web[1]: Still destroying... [id=i-0e66648d33d7ab15c, 20s elapsed]
aws_instance.web[0]: Still destroying... [id=i-0f7514c32d57c00e4, 20s elapsed]
aws_instance.web[0]: Still destroying... [id=i-0f7514c32d57c00e4, 30s elapsed]
aws_instance.web[1]: Still destroying... [id=i-0e66648d33d7ab15c, 30s elapsed]
aws_instance.web[1]: Destruction complete after 31s
aws_instance.web[0]: Still destroying... [id=i-0f7514c32d57c00e4, 40s elapsed]
aws_instance.web[0]: Destruction complete after 41s
aws_key_pair.this: Destroying... [id=aws-instance-key]
aws_key_pair.this: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.
```
