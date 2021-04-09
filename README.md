# Docker UPnP Certbot
Docker image to run UPnP alongside Certbot to get Letsencrypt certificates.

This Docker image extends the official [certbot/certbot](https://hub.docker.com/r/certbot/certbot) image to open up port 80 on your router & firewall using UPnP, and close it again after certificate creation/renewal.

## Installation and Usage

```
docker pull ghcr.io/nzapponi/upnp-certbot:latest
```

Alternatively, build from source by cloning this repository and running:
```
docker build -t MY_TAG .
```

Make sure you replace the `FROM` statement in `Dockerfile` with the correct official image to support your architecture or plugin.

For usage instructions, refer to the official [certbot/certbot](https://hub.docker.com/r/certbot/certbot) image.
