## `haproxy:latest`

```console
$ docker pull haproxy@sha256:e6a8e2f9f652f194d445b55ace4819c6f686ae708d4b214bf627b765e28b2f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:1eb8c9519a5bbee86716924aed36d17e2ccc2ac3208aebbc25cc16a28c275ec8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29047257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91783a64f7cc3c8db0d06036958f5870eceaa4978d5f147553c55ad4833dc133`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:26:08 GMT
ENV HAPROXY_VERSION=1.9.0
# Sat, 29 Dec 2018 02:26:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Sat, 29 Dec 2018 02:26:08 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Sat, 29 Dec 2018 02:27:25 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 02:27:25 GMT
STOPSIGNAL SIGUSR1
# Sat, 29 Dec 2018 02:27:25 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 29 Dec 2018 02:27:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:27:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c26bdbfbe5eac8836bb730faf4bffdc67df7c2e900bff59fb671ade0108a05`  
		Last Modified: Sat, 29 Dec 2018 02:31:54 GMT  
		Size: 6.6 MB (6553961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc4da27056d6416ed9b834a1edcae0e05198a28173d60aae2e0bf63bf9db112`  
		Last Modified: Sat, 29 Dec 2018 02:31:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:74897d87cc364380d48605ad27ae29718a2581466aa4e88f5315ed36e480fc1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27340264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5342f52fd985f3c41e327452ddf87bbeb5fcdbbeb1b5bfa9720e08a5d9432c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:20:29 GMT
ENV HAPROXY_VERSION=1.9.0
# Sat, 29 Dec 2018 10:20:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Sat, 29 Dec 2018 10:20:30 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Sat, 29 Dec 2018 10:21:15 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 10:21:16 GMT
STOPSIGNAL SIGUSR1
# Sat, 29 Dec 2018 10:21:16 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 29 Dec 2018 10:21:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:21:17 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83b891298e7602f15182618e9a75bf8c3465e96766ca0fec38bcc2b1cbdac14`  
		Last Modified: Sat, 29 Dec 2018 10:24:59 GMT  
		Size: 6.2 MB (6172108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6130d026345992f308720e7d82adc85f488d3ffd4756fcbeb8c5deebd4f6a18f`  
		Last Modified: Sat, 29 Dec 2018 10:24:57 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:ee0af4ff659a10567e77c6217e23d0386322620b7316a9a145c3fa447bf26ccb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25363823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e80649f301bf8095641e3c58c64470d8a7d96fe07d2561d7d778d6c11b64cee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:39:54 GMT
ENV HAPROXY_VERSION=1.9.0
# Sat, 29 Dec 2018 14:39:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Sat, 29 Dec 2018 14:39:55 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Sat, 29 Dec 2018 14:40:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 14:40:38 GMT
STOPSIGNAL SIGUSR1
# Sat, 29 Dec 2018 14:40:38 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 29 Dec 2018 14:40:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:40:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d782a349070777f4fe1fea744a81eb31dee7be6729609bb6067fa1dff26dfd`  
		Last Modified: Sat, 29 Dec 2018 14:44:17 GMT  
		Size: 6.1 MB (6085689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161d630941e9b55464b5494d01566bafa11dd074058ac0dd239da6e360005534`  
		Last Modified: Sat, 29 Dec 2018 14:44:16 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:da011cf3618db90c8ce948da38e5a6403a82d5d6c6fd45c8b061e5b51ae96904
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.5 MB (26536308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390adb617d9895642b16dd7c145c923e36af68a8360203f9e3c0d84bcb734ff7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Thu, 20 Dec 2018 09:49:24 GMT
ENV HAPROXY_VERSION=1.9.0
# Thu, 20 Dec 2018 09:49:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Thu, 20 Dec 2018 09:49:25 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Thu, 20 Dec 2018 09:51:26 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 20 Dec 2018 09:51:27 GMT
STOPSIGNAL SIGUSR1
# Thu, 20 Dec 2018 09:51:27 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 20 Dec 2018 09:51:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Dec 2018 09:51:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dae199cb752d290aaf57740e0c413bbe6de9971d70fe5bde7731d50f49ba6bb`  
		Last Modified: Thu, 20 Dec 2018 09:56:09 GMT  
		Size: 6.2 MB (6204619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8b7b848846ad84951cbea84f9d037487ae6127149f299fcdc83d277b013562`  
		Last Modified: Thu, 20 Dec 2018 09:56:07 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:8d9674fea9b8ac59a829747255fb5714406ed33c74df082a8edc87732b24749b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29562552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b8d82b50c15734b6af434915334509306fdd1e7a396625f071825030e2e59e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:35:19 GMT
ENV HAPROXY_VERSION=1.9.0
# Sat, 29 Dec 2018 17:35:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Sat, 29 Dec 2018 17:35:19 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Sat, 29 Dec 2018 17:36:45 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 17:36:45 GMT
STOPSIGNAL SIGUSR1
# Sat, 29 Dec 2018 17:36:45 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 29 Dec 2018 17:36:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 17:36:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba37cbad11eb3ba196994411e833093f2b1b04ee8755e7a4076e34d97e20580b`  
		Last Modified: Sat, 29 Dec 2018 17:42:44 GMT  
		Size: 6.4 MB (6429017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd07ab4ae733894a2378890632b34100d7e4d00e61ebfbb71a374f9e25977abb`  
		Last Modified: Sat, 29 Dec 2018 17:42:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:7ce8182c29915fd39eabea7fc881dee2c4e6faa87f2a80fe8f863684fdac9b0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28941016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2414aed6ca579273fc8762395ff9554463b4c033188558efe5ae08e575dc3ff1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:12:04 GMT
ENV HAPROXY_VERSION=1.9.0
# Sat, 29 Dec 2018 14:12:07 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Sat, 29 Dec 2018 14:12:09 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Sat, 29 Dec 2018 14:13:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 14:14:01 GMT
STOPSIGNAL SIGUSR1
# Sat, 29 Dec 2018 14:14:03 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 29 Dec 2018 14:14:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 14:14:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06b28ad845e84e94ade321fbb2ff3c61fc0456935b22f5a91795f7eee7d23c7f`  
		Last Modified: Sat, 29 Dec 2018 14:22:59 GMT  
		Size: 6.2 MB (6193810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594b0236467d6fa68aec5407f698bee1362954a83bc9c3dbe38a7f122908a1bc`  
		Last Modified: Sat, 29 Dec 2018 14:22:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; s390x

```console
$ docker pull haproxy@sha256:db7881bad413970c098b1f1e222dd215af91c7f4c90519c21adf4b24dab74543
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28743846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9aaa757ae8451febbcd5d8e66080f386d917f2530a98dffad2c7ef1ee5d46a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:21:13 GMT
ENV HAPROXY_VERSION=1.9.0
# Sat, 29 Dec 2018 15:21:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.0.tar.gz
# Sat, 29 Dec 2018 15:21:14 GMT
ENV HAPROXY_SHA256=16629e66175606de4bd1a2ccd826d607618323d34f400f52bcf048cee003817d
# Sat, 29 Dec 2018 15:21:52 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 29 Dec 2018 15:21:52 GMT
STOPSIGNAL SIGUSR1
# Sat, 29 Dec 2018 15:21:52 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Sat, 29 Dec 2018 15:21:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 15:21:53 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8a09200935493fbbb96c28978cecba0ed34703ee5785e230d4d9687a3736a7`  
		Last Modified: Sat, 29 Dec 2018 15:24:57 GMT  
		Size: 6.4 MB (6402050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9b891fdacc231d375cf38198b2ab7d33772669ccb4dc8b4721e433d643e1de`  
		Last Modified: Sat, 29 Dec 2018 15:24:56 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
