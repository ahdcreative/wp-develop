#!/bin/sh

set -eux

if [ -z ${CODESPACE_NAME+x} ]; then
  SITE_HOST="http://localhost:8080"
else
    SITE_HOST="https://${CODESPACE_NAME}-8080.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"

fi

# install dependencies
cd /workspaces/ahd-wp-develop
npm install && npm run build:dev


# Install wordpress and activate the plugin/theme
cd /var/www/html
echo "Setting up Wordpress at $SITE_HOST"
wp core install --url="$SITE_HOST" --title="Wordpress Development" --admin_user="admin" --admin_email="admin@example.com" --admin_password="password" --skip-email
