## `kong:latest`

```console
$ docker pull kong@sha256:286dd16616bbe062f3b749380efcd3ecf1e50d2638d30510543ed2592711f31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:73f29598b674022552e266c68c5025456179dd2a1a1dc0f57bd86a2f78eba30e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32728847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcef86ee910af2925888de39a2c9b397256a0f2538450404411da802d117fcf5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 29 Mar 2019 21:29:55 GMT
ENV KONG_VERSION=1.1.1
# Fri, 29 Mar 2019 21:29:55 GMT
ENV KONG_SHA256=7a75b52c03d161ff37a9467ec8d64f392b49982feddb812b4569a01a63009866
# Fri, 29 Mar 2019 21:30:03 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 29 Mar 2019 21:30:04 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 29 Mar 2019 21:30:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:30:04 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 29 Mar 2019 21:30:04 GMT
STOPSIGNAL SIGTERM
# Fri, 29 Mar 2019 21:30:04 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f925d7d2252defb219c18be0680cddb0d08d94f9276113dee40b12e51fc0559`  
		Last Modified: Fri, 29 Mar 2019 21:31:58 GMT  
		Size: 30.7 MB (30710523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a968259405c389b13aeba8e48a53789743aa533ff6690eee9b8376ff88babe`  
		Last Modified: Fri, 29 Mar 2019 21:31:52 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
