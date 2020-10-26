#!/bin/sh
set -e

upnpc -r 80 TCP

certbot "$@"

upnpc -d 80 TCP

