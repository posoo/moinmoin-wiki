#!/bin/bash

#Required
domain=$1
commonname=$domain

openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 3600 \
	-nodes \
	-subj "/CN=$domain/C=$country/ST=$state/L=$locality/O=$organization"
