#!/usr/bin/env bash
DJANGO_SETTINGS_MODULE=blueprint.settings.dev \
DJANGO_SECRET_KEY="r!k1vutgswjk9l9^)i3+b)wpa5--)fi@f)chjxrn$^_j1+d!n^" \
DATABASE_NAME="blueprint" \
DATABASE_USER="blueprint" \
DATABASE_PASSWORD="blueprint" \
EMAIL_HOST="localhost" \
EMAIL_PORT="25" \
EMAIL_HOST_USER="" \
EMAIL_HOST_PASSWORD="" \
PIP_REQUIREMENTS=dev.txt \
docker-compose up --build