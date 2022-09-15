# fly-wordpress-sqlite

# Docker

Useful for local debug

```
./docker.build.sh

./docker.run.sh
```

# Fly.io

```
# login
fly auth login


# secrets
# https://api.wordpress.org/secret-key/1.1/salt

fly secrets set \
WORDPRESS_DB_USER='<user>' \
WORDPRESS_DB_PASSWORD='<password>' \
WORDPRESS_DB_NAME='wordpress' \
WORDPRESS_TABLE_PREFIX='wp_' \
WORDPRESS_AUTH_KEY='<random>' \
WORDPRESS_SECURE_AUTH_KEY='<random>' \
WORDPRESS_LOGGED_IN_KEY='<random>' \
WORDPRESS_NONCE_KEY='<random>' \
WORDPRESS_AUTH_SALT='<random>' \
WORDPRESS_SECURE_AUTH_SALT='<random>' \
WORDPRESS_LOGGED_IN_SALT='<random>' \
WORDPRESS_NONCE_SALT='<random>'

# volume
# size 1GB, mounted at /data
fly volumes create fly_wordpress_sqlite_data --size 1

# launch
fly launch

# deploy
fly deploy

# ssh
fly ssh console
```
