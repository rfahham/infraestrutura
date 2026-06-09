# Quick start tutorial

Now that you've installed Terraform, you can provision an NGINX server in less than a minute using Docker on Mac, Windows, or Linux. You can also follow the rest of this tutorial in your web browser.

```bash
terraform init
```

Provision the NGINX server container with apply. When Terraform asks you to confirm type yes and press ENTER.

```bash
terraform apply
```

Verify the existence of the NGINX container by visiting localhost:8000 in your web browser or running docker ps to see the container.

```bash
docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                    NAMES
425d5ee58619        e791337790a6              "nginx -g 'daemon of…"   20 seconds ago      Up 19 seconds       0.0.0.0:8000->80/tcp     tutorial
```

To stop the container, run terraform destroy.

```bash
terraform destroy
```

You've now provisioned and destroyed an NGINX webserver with Terraform.