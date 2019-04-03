## `kong:latest`

```console
$ docker pull kong@sha256:dd36afc148e51f9205fd39dc8d0848508ac29e3d35279b19b98f07897b94c930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:18ff5a48ea5b2d16649765a284b939055d5d3f3390c8e87cf5d11f116dc6f4b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32729243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce182fc4fdea89bd6c803fab9725faad8c50a1a21e17ffcc7d10351acb584d6`
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
# Tue, 02 Apr 2019 22:30:06 GMT
ENV KONG_SHA256=3f07c30c6902ec0dd17e9777f5f479076c65c634b677402072414ca9d31dc810
# Tue, 02 Apr 2019 22:30:16 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 02 Apr 2019 22:30:17 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Tue, 02 Apr 2019 22:30:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 Apr 2019 22:30:17 GMT
EXPOSE 8000 8001 8443 8444
# Tue, 02 Apr 2019 22:30:17 GMT
STOPSIGNAL SIGTERM
# Tue, 02 Apr 2019 22:30:17 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb4464872b91dc48111425dccffe4e4294732121386d7e5509903882dd2e659`  
		Last Modified: Tue, 02 Apr 2019 22:31:16 GMT  
		Size: 30.7 MB (30710917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750576be5278e9e6b2d85580c4e9163ed7659a3c3c012b53f717f905f5a7615f`  
		Last Modified: Tue, 02 Apr 2019 22:31:09 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
