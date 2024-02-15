#!/bin/bash
docker run -it --rm -v /home/docker/mail-gw/letsencrypt:/etc/letsencrypt -v /home/docker/mail-gw/acme_challenge:/tmp/acme_challenge certbot/certbot certonly --expand --webroot -w /tmp/acme_challenge --text --agree-tos --no-eff-email --email admin@domain.tld --rsa-key-size 4096 --verbose --keep-until-expiring --preferred-challenges=http -d mail-gw.domain.tld
