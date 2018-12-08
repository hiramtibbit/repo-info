## `haproxy:rc`

```console
$ docker pull haproxy@sha256:54db7f36bbcafed73911446348b4a807c21916eb163db8fb6d5561af61266665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:rc` - linux; amd64

```console
$ docker pull haproxy@sha256:a1039ee5bcf03d17e777d8ddc3bdc2f6f7ca1c6d36b64aa874c151cdd8dbb4c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28928443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39781f510b19dfe8457eebdb8be51f501e4596561fb7131229806aaae56736c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:13:27 GMT
ENV HAPROXY_VERSION=1.9-dev9
# Sat, 08 Dec 2018 01:13:28 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev9.tar.gz
# Sat, 08 Dec 2018 01:13:28 GMT
ENV HAPROXY_SHA256=48c4f1bca90df8a2ecbe846a79c13d3b02dc6d5f51587f7f431bcfc2cc829d08
# Sat, 08 Dec 2018 01:14:59 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:15:00 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:15:01 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 08 Dec 2018 01:15:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:15:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b335e2ffe1da4e9465b8c66cb393110ee01adea563f69e3dcfffc9bdad3086e`  
		Last Modified: Sat, 08 Dec 2018 01:31:29 GMT  
		Size: 6.4 MB (6441786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a7444547a07f38c0085150325992e57c96c29460b2151cbbad224df03e7967`  
		Last Modified: Sat, 08 Dec 2018 01:31:26 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
