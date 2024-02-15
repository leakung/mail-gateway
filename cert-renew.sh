#!/bin/bash
docker run -it --rm -v /home/docker/mail-gw/letsencrypt:/etc/letsencrypt -v /home/docker/mail-gw/acme_challenge:/tmp/acme_challenge certbot/certbot renew
