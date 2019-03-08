## `kong:latest`

```console
$ docker pull kong@sha256:c0427cf6bb766ad02eda2f1878352ef89c17519d1bab7b4b160ff74f9e0f8d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:0bf471cf350a40efe9314112670f6bfa8d023d8ebd67086f5eab5ab68edf96ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaacee41330c247f2ad254d615381318f042a2779e9c34ca43d69fc6ae3eedb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_VERSION=1.0.3
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 08 Mar 2019 03:13:14 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:15 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:15 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:15 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f0eaa7f80df34470c9da82df8623493279c5830e4d906c87c2264bb5cf3ff8`  
		Last Modified: Fri, 08 Mar 2019 03:15:42 GMT  
		Size: 28.4 MB (28442769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f35a26129025dec80cf2b8e7c56baea859eb8f300a702b08a81bcd83682c`  
		Last Modified: Fri, 08 Mar 2019 03:15:35 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
