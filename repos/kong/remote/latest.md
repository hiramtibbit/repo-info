## `kong:latest`

```console
$ docker pull kong@sha256:1eef361d9e492c95ea392766244d7b56371a99196389b7187e58500bd6554179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:c84c7586af421c97058e254ecd44f2b36154fcaa4c4e714271d9f6516dfb5dd5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32777673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc6d096049b97a9ba8cd1b8cc7922e97b1bd49ad9d0e9b2671576307a94ba5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Mon, 10 Jun 2019 19:19:54 GMT
ENV KONG_VERSION=1.2.0
# Mon, 10 Jun 2019 19:19:54 GMT
ENV KONG_SHA256=049c63c930b14d8049ebd028794b690b52600c580be8fe129dac11062b8e2568
# Mon, 10 Jun 2019 19:20:04 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Mon, 10 Jun 2019 19:20:04 GMT
COPY file:fe196e90eb453e834bdc492372019ad9f95e35142fa279d1622c213f32592fe9 in /docker-entrypoint.sh 
# Mon, 10 Jun 2019 19:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Jun 2019 19:20:04 GMT
EXPOSE 8000 8001 8443 8444
# Mon, 10 Jun 2019 19:20:05 GMT
STOPSIGNAL SIGQUIT
# Mon, 10 Jun 2019 19:20:05 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0231aef4112865eb2d8a2ddc656c965bda0b759bc19027c1eee3efad7f394d3c`  
		Last Modified: Mon, 10 Jun 2019 19:22:18 GMT  
		Size: 30.8 MB (30759301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66606556b72b2c324b67a3d57ddf42ceff872afdaa16ecb9ee07d4497157744`  
		Last Modified: Mon, 10 Jun 2019 19:22:11 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
