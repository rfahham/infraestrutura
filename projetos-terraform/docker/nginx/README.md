# Docker

## Initialize the project, which downloads a plugin called a provider that lets Terraform interact with Docker.

```bash
terraform init
```

## Open Docker Desktop

Error: Error pinging Docker server: Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?

## Provision the NGINX server container with apply. 

When Terraform asks you to confirm type yes and press ENTER.

```bash
terraform apply
```

## Verify the existence of the NGINX container by visiting `localhost:8000` in your web browser or running `docker ps` to see the container.

```bash
docker ps

CONTAINER ID   IMAGE          COMMAND                  CREATED              STATUS              PORTS                  NAMES
84838b28c7fc   c613f16b6642   "/docker-entrypoint.…"   About a minute ago   Up About a minute   0.0.0.0:8000->80/tcp   tutorial
```

To stop the container, run terraform destroy.

```bash
terraform destroy
```

You've now provisioned and destroyed an NGINX webserver with Terraform.