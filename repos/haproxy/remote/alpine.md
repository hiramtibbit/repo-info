## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:57f43eddeeb2c8f907bf7f30a8d460804d50d04fe70bd1fec2dfd577283500e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

### `haproxy:alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:b8e29c27fb662bfc89b3073aea598968f4f36927955051f8a486984a62451327
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10257516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98bde06132b77d5c06b5c56184699deb40b651f9a48af5d5242ce4ac5efc4a87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 03:20:46 GMT
ENV HAPROXY_VERSION=1.9.0
# Thu, 20 Dec 2018 03:20:47 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Thu, 20 Dec 2018 03:20:47 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Thu, 20 Dec 2018 03:21:38 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 20 Dec 2018 03:21:38 GMT
STOPSIGNAL SIGUSR1
# Thu, 20 Dec 2018 03:21:38 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 20 Dec 2018 03:21:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Dec 2018 03:21:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ebeb507358c095aa4ba00fa3379f9e9097c2bf8f064eff4f1ef7006afb882b`  
		Last Modified: Thu, 20 Dec 2018 03:22:42 GMT  
		Size: 8.1 MB (8050205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c6ff019ad751e6c20f4c022eaf608362e05e2dbe0975017748226b3bd685bb`  
		Last Modified: Thu, 20 Dec 2018 03:22:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:7ae72e5f6b9ce624abfc32ea4f8b1ff4e47c6ed7b8881be8b19a3234eca7eea3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9644410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28aed1ac201d6d44fb9ba5546f164f476ba66a7ad86399fff938f4ff0085bc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 08:49:21 GMT
ENV HAPROXY_VERSION=1.9.0
# Thu, 20 Dec 2018 08:49:21 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Thu, 20 Dec 2018 08:49:21 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Thu, 20 Dec 2018 08:49:37 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 20 Dec 2018 08:49:37 GMT
STOPSIGNAL SIGUSR1
# Thu, 20 Dec 2018 08:49:38 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 20 Dec 2018 08:49:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Dec 2018 08:49:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf9f88d8b66aa7f5927b4fc1b71b8803873ea8a1f2fba4b821bd721ec92fecb`  
		Last Modified: Thu, 20 Dec 2018 08:50:29 GMT  
		Size: 7.5 MB (7497401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea26d4d5aa39c49d11622b36c002b17cb7b3a0c341d07f6a0761980a8ddf0dd`  
		Last Modified: Thu, 20 Dec 2018 08:50:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:3241992cc1e28ceed0b0d4fd6f59a4ffe835aaca37513a596585797ba561f567
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9870964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32f53f7350b018a9267ffb651ae662684b4532c301ce37b640d1279e4eaf2f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Thu, 20 Dec 2018 09:27:04 GMT
ENV HAPROXY_VERSION=1.9.0
# Thu, 20 Dec 2018 09:27:06 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Thu, 20 Dec 2018 09:27:08 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Thu, 20 Dec 2018 09:27:36 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Thu, 20 Dec 2018 09:27:38 GMT
STOPSIGNAL SIGUSR1
# Thu, 20 Dec 2018 09:27:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 20 Dec 2018 09:27:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:27:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d60211bfe65056438ec9019931cde3984bcadf321af7f856cff6bbac5eba6d2`  
		Last Modified: Thu, 20 Dec 2018 09:32:23 GMT  
		Size: 7.7 MB (7675181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d43248beba2bfd325f6b77fabd1df452ef6979151435a444093ca75536871147`  
		Last Modified: Thu, 20 Dec 2018 09:32:21 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
