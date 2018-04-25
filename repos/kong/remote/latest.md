## `kong:latest`

```console
$ docker pull kong@sha256:625281350f36a6cd4a0986a56f119273664740e1ffa5bc056c257f4a10f2dff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:19c74f52023caeb4a396186744c1538ec51122bf8183ade252a66f74f4e799ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33373706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dbcf499414ac8d76c75c8843d726018bc964d07b4fd386a5038435dab5dfb9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 25 Apr 2018 20:28:00 GMT
ENV KONG_VERSION=0.13.1
# Wed, 25 Apr 2018 20:28:01 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Wed, 25 Apr 2018 20:28:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 25 Apr 2018 20:28:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 25 Apr 2018 20:28:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Apr 2018 20:28:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 25 Apr 2018 20:28:14 GMT
STOPSIGNAL [SIGTERM]
# Wed, 25 Apr 2018 20:28:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48d98b461a894e8e34ae6e02823f600aa4aafedc2208c8b99fb88d806c1911a`  
		Last Modified: Wed, 25 Apr 2018 20:30:31 GMT  
		Size: 31.4 MB (31381636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae397bafae3c36fbbea4f1de87ef6bb81a0e0f7173b0f4f94f67718e00dd786`  
		Last Modified: Wed, 25 Apr 2018 20:30:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
