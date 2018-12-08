## `haproxy:rc`

```console
$ docker pull haproxy@sha256:03a6086475b4125a82f31f6b8b5d05954ef415dc8a76aed72877d4fdb280e15b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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

### `haproxy:rc` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:f814f6d3870748c23c8af3128f6fb1d1dec7a4683545222bc5e47125c5d074d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27226647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e8488daa48d8a0e8eb42dc45804f6053f9a3c917954173c22bb61cd4ca7a4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:48:31 GMT
ENV HAPROXY_VERSION=1.9-dev9
# Sat, 08 Dec 2018 09:48:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev9.tar.gz
# Sat, 08 Dec 2018 09:48:32 GMT
ENV HAPROXY_SHA256=48c4f1bca90df8a2ecbe846a79c13d3b02dc6d5f51587f7f431bcfc2cc829d08
# Sat, 08 Dec 2018 09:49:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:49:18 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:49:18 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 08 Dec 2018 09:49:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:49:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf908f8ae137d67f58e939b67def16841c876862fbe92d92e207c19d3dde456`  
		Last Modified: Sat, 08 Dec 2018 09:53:31 GMT  
		Size: 6.1 MB (6063260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d072ceb9758c27653df7a6cfc762fe12c30cbd9238247b8aa073ee93cb321f6`  
		Last Modified: Sat, 08 Dec 2018 09:53:30 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; ppc64le

```console
$ docker pull haproxy@sha256:14d84326f6462efb7f4b6d1e99d1301f8c6af7ef048a12f6cdb774c76a2561e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28822248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7062edcd8cde789c4638d39354aea6e8ea279ad586dc6602b9797140e4d266c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:18:33 GMT
ENV HAPROXY_VERSION=1.9-dev9
# Sat, 08 Dec 2018 10:18:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev9.tar.gz
# Sat, 08 Dec 2018 10:18:36 GMT
ENV HAPROXY_SHA256=48c4f1bca90df8a2ecbe846a79c13d3b02dc6d5f51587f7f431bcfc2cc829d08
# Sat, 08 Dec 2018 10:20:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:20:38 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:20:40 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Sat, 08 Dec 2018 10:20:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:20:43 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25438a211e09d6ad30d06ce28c23f2724792dc86260343584667fda6871885d9`  
		Last Modified: Sat, 08 Dec 2018 10:35:53 GMT  
		Size: 6.1 MB (6081154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52267a4559bc94f8760914fd27de9054aa0f5e1b2a5d8d2a311dd17ea4dd41b`  
		Last Modified: Sat, 08 Dec 2018 10:35:50 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
