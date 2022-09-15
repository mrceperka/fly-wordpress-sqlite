# see https://hub.docker.com/_/wordpress for alternative tags you can use
FROM wordpress:6.0.2
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/aaemnnosttv/wp-sqlite-db /tmp/wp-sqlite-db \
    && cp /tmp/wp-sqlite-db/src/db.php /usr/src/wordpress/wp-content
RUN apt-get remove -y git && apt-get clean
RUN mkdir /data /data/db /data/uploads \
    && chown -R www-data:www-data /data/db /data/uploads
COPY usr/ /usr/