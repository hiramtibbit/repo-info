## `kong:latest`

```console
$ docker pull kong@sha256:f7ed033bb9955da0fcefa034d07fee324cad6d01c12ebf54268dfe825ba2e92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:8d77010ea4021232e9004d6af18d603f7b691bb0b94b55aae904f1f6553dcef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30460171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d28df8a3c54c5896a4a2537127ebf7f37de2d771470af9c93908c7835b84c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 01 Feb 2019 22:19:47 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Feb 2019 22:19:47 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:19:48 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:19:48 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:19:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6389eff8e6ffa111017073131187a9b3b8697323f33ebb83abde48754c947a5d`  
		Last Modified: Fri, 01 Feb 2019 22:21:37 GMT  
		Size: 28.4 MB (28442907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58488256be6aaf130cc4d46df7c89a44b5fc96b7283971f009f7b523670e67e`  
		Last Modified: Fri, 01 Feb 2019 22:21:32 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
