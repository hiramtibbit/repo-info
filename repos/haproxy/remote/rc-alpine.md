## `haproxy:rc-alpine`

```console
$ docker pull haproxy@sha256:a1ce575886206ef36728a52395fa640f7d0fe3f82ef8b81dc25cca611cf047f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:rc-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:467fc2ee4d99dcb612fa9ac6a4cc550d9525c5115d03743788b30af814981bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10135845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b32c9da56aa41c979d2b8a839cbde11773a928ed289f14d80bcee0f70133107a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:16:25 GMT
ENV HAPROXY_VERSION=1.9-dev9
# Sat, 08 Dec 2018 01:16:25 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev9.tar.gz
# Sat, 08 Dec 2018 01:16:25 GMT
ENV HAPROXY_SHA256=48c4f1bca90df8a2ecbe846a79c13d3b02dc6d5f51587f7f431bcfc2cc829d08
# Sat, 08 Dec 2018 01:17:23 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:17:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:17:24 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 08 Dec 2018 01:17:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:17:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a11d8a89eccda9e29a08516343faa0d00c4023a72b6f2e19aca9b52a779d94`  
		Last Modified: Sat, 08 Dec 2018 01:32:57 GMT  
		Size: 7.9 MB (7928534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49cfde5e5163931d62eb8b38428a62cba1f90b851da560d70149673279efc9`  
		Last Modified: Sat, 08 Dec 2018 01:32:55 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
