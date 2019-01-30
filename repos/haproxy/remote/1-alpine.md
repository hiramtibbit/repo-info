## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:993ff3ea7509c84dbbb84b21e46d62fe25c8816f99cbdb3b68bebdc55908748b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:3ef9182d893328231f23f8236fa35a4613b64c897cd714bc6ffa83d46a0d027d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10309002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e3e3ed25979f573136c3b65461795fe508f913eca72bfdf7de58f4e35544c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 21:20:51 GMT
ENV HAPROXY_VERSION=1.9.3
# Wed, 30 Jan 2019 21:20:51 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.3.tar.gz
# Wed, 30 Jan 2019 21:20:52 GMT
ENV HAPROXY_SHA256=d22cc11658b790e2da46cd19e7fbf45c456412059852ccebe208a491db070db4
# Wed, 30 Jan 2019 21:21:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 30 Jan 2019 21:21:43 GMT
STOPSIGNAL SIGUSR1
# Wed, 30 Jan 2019 21:21:43 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 30 Jan 2019 21:21:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 21:21:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e21ba080f4c875da3b72e0ba43e99824211afb28a095a8d83d42ed5d586871e`  
		Last Modified: Wed, 30 Jan 2019 21:22:33 GMT  
		Size: 8.1 MB (8101596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b821f8f6d451b3b4cb949141a87c8d9373c01e66c06288def30acc92ff57e886`  
		Last Modified: Wed, 30 Jan 2019 21:22:31 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
