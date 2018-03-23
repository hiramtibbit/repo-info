## `kong:latest`

```console
$ docker pull kong@sha256:b035a58f3e22af6e5bbf2d5603ebf6e6955d66799a4d6773a17d13aca3cc47d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:fa0f3d4a30cdf397a2d12ec4d31229c2a36820d6a2493d41ccbe38152486b12e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32598490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b23a2f30cb0729dd076e996898d6845cd54ee9a15be2a35a78705ff918618f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_VERSION=0.13.0
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_SHA256=93a277a98276cc857198db66cb8257dc30009bcda2ae0a3322f6e20a6cf8d91a
# Fri, 23 Mar 2018 19:58:56 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 23 Mar 2018 19:58:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 23 Mar 2018 19:58:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Mar 2018 19:58:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 23 Mar 2018 19:58:58 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Mar 2018 19:58:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc145e54e4da6596d95c6ab5c30a78a7c88aaafbc7d5c702ba69f2552841b06`  
		Last Modified: Fri, 23 Mar 2018 20:00:17 GMT  
		Size: 30.6 MB (30606420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b90ef13a77c253567091abe3f711c19e0044736466093e278ddb6e3635bcf8`  
		Last Modified: Fri, 23 Mar 2018 20:00:11 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
