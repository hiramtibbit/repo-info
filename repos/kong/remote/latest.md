## `kong:latest`

```console
$ docker pull kong@sha256:d61b1cfbdadc47f6508676fbcf9a08c7114cfd4fbe226d7e76069f6927800665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:123e78a72de124e7881a19373328c82b0d872aefa803d26c1bb4c030f5d76b99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33401942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0d0acab162f8a43a424122930f39c3d73c4a757e346a3a1c257138ea6271a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:21:12 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 21 Jun 2018 19:21:20 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:21:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:21:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:21:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:21:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36011454c2e7ebbc23f56ac8533d211dff07f43c25fe8bf2d9baf528a8808ab`  
		Last Modified: Thu, 21 Jun 2018 19:25:38 GMT  
		Size: 31.4 MB (31409872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8655c0511de6a759533750d4c62399b44a958af940153f73b79e157f04e35031`  
		Last Modified: Thu, 21 Jun 2018 19:25:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
