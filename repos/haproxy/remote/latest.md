## `haproxy:latest`

```console
$ docker pull haproxy@sha256:da10a6591b4082d4173b58de652f1e1dcfcdc357b344faf977a85969d9c58d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:c1ca83a2f086f87764f9b56f329319f0c312dbf17ca2b78a73aa0e12ad970c20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29103479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3005845f66d44ae15fa1938701522bab1159962ffaf40b72dfebf73bf3f191c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 30 Jan 2019 21:19:37 GMT
ENV HAPROXY_VERSION=1.9.3
# Wed, 30 Jan 2019 21:19:37 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.3.tar.gz
# Wed, 30 Jan 2019 21:19:38 GMT
ENV HAPROXY_SHA256=d22cc11658b790e2da46cd19e7fbf45c456412059852ccebe208a491db070db4
# Wed, 30 Jan 2019 21:20:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 30 Jan 2019 21:20:48 GMT
STOPSIGNAL SIGUSR1
# Wed, 30 Jan 2019 21:20:48 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 30 Jan 2019 21:20:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 30 Jan 2019 21:20:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6695f17c8d8fa48733a85ac24df8b57ce8fa85983399cb8322b479e029b3b51`  
		Last Modified: Wed, 30 Jan 2019 21:22:27 GMT  
		Size: 6.6 MB (6602392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9320319ef2717ad74cbd8dd70080066bb404d25c3fadc05f2bd55afbaa67ad`  
		Last Modified: Wed, 30 Jan 2019 21:22:25 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:18ca56a3a255fe96fc0aa9f44954345e3de110e4da16a742730d9ed191031e36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27409423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1c67613c5886f84b2606977c3d5c5fdf8bc92dacd7adabd511535357dbd5b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Thu, 31 Jan 2019 09:48:20 GMT
ENV HAPROXY_VERSION=1.9.3
# Thu, 31 Jan 2019 09:48:20 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.3.tar.gz
# Thu, 31 Jan 2019 09:48:20 GMT
ENV HAPROXY_SHA256=d22cc11658b790e2da46cd19e7fbf45c456412059852ccebe208a491db070db4
# Thu, 31 Jan 2019 09:49:07 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 31 Jan 2019 09:49:07 GMT
STOPSIGNAL SIGUSR1
# Thu, 31 Jan 2019 09:49:08 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 31 Jan 2019 09:49:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:49:08 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099f5cea9e8543d9d9c392da865ba513a9087e075c370fd210e61ef534da4854`  
		Last Modified: Thu, 31 Jan 2019 09:49:35 GMT  
		Size: 6.2 MB (6227216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b654055399372537fa61c1c019c80cff09ad8ea0e8e1806931c97c2e14f7bbe8`  
		Last Modified: Thu, 31 Jan 2019 09:49:33 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:ab80631f4817df43096cb6f5ef23691996b3d10a0239f4380acb9f5623c79035
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26608358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84788af4cf22c3a7d3905962a5e2dcac814301e0cce82a6b14c5d9714fa3eabd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Thu, 31 Jan 2019 09:41:54 GMT
ENV HAPROXY_VERSION=1.9.3
# Thu, 31 Jan 2019 09:41:55 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.3.tar.gz
# Thu, 31 Jan 2019 09:41:55 GMT
ENV HAPROXY_SHA256=d22cc11658b790e2da46cd19e7fbf45c456412059852ccebe208a491db070db4
# Thu, 31 Jan 2019 09:44:38 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 31 Jan 2019 09:44:39 GMT
STOPSIGNAL SIGUSR1
# Thu, 31 Jan 2019 09:44:40 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 31 Jan 2019 09:44:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:44:41 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b76984e6c6ed7806b8d85bfe9d7ac78f087b3f321e99174725422882b9b6807`  
		Last Modified: Thu, 31 Jan 2019 09:46:50 GMT  
		Size: 6.3 MB (6257797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25294fdd10187d47a33148eaf7998a2248a9aee6652ca286428db021514186ce`  
		Last Modified: Thu, 31 Jan 2019 09:46:48 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; 386

```console
$ docker pull haproxy@sha256:376cca26215eada9df5b0766fef890f75e220f6a0bf8d92d1a18487542083834
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.6 MB (29629847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1375726201c4c565f0b12b6172db9b1e010f0c04265495f33539460a21c407`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Thu, 31 Jan 2019 11:39:56 GMT
ENV HAPROXY_VERSION=1.9.3
# Thu, 31 Jan 2019 11:39:57 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.3.tar.gz
# Thu, 31 Jan 2019 11:39:57 GMT
ENV HAPROXY_SHA256=d22cc11658b790e2da46cd19e7fbf45c456412059852ccebe208a491db070db4
# Thu, 31 Jan 2019 11:40:56 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 31 Jan 2019 11:40:56 GMT
STOPSIGNAL SIGUSR1
# Thu, 31 Jan 2019 11:40:56 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 31 Jan 2019 11:40:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 11:40:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34078e9af43010b76baed53b23fbbb2f37e8d41e161507373c59437c0766900a`  
		Last Modified: Thu, 31 Jan 2019 11:42:23 GMT  
		Size: 6.5 MB (6482349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686647f5b0100d2b062edee745afb3d4beefe1e2f13ca374427b2f72731d73da`  
		Last Modified: Thu, 31 Jan 2019 11:42:25 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:latest` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c8aa3754635f55429b9cd2df79cdf268975bbec0a8301adcef7948e6849731ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29001763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814a0cdeab6200e1a855c4df9df03c15888f51e79789e7bd2d57126f1840c0f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Thu, 31 Jan 2019 09:21:47 GMT
ENV HAPROXY_VERSION=1.9.3
# Thu, 31 Jan 2019 09:21:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/haproxy-1.9.3.tar.gz
# Thu, 31 Jan 2019 09:21:51 GMT
ENV HAPROXY_SHA256=d22cc11658b790e2da46cd19e7fbf45c456412059852ccebe208a491db070db4
# Thu, 31 Jan 2019 09:25:13 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Thu, 31 Jan 2019 09:25:17 GMT
STOPSIGNAL SIGUSR1
# Thu, 31 Jan 2019 09:25:18 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Thu, 31 Jan 2019 09:25:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 09:25:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dedb07beb66ad0bea2a96626f215ec6dbc6d9e3837900617d7ccd18ced254c`  
		Last Modified: Thu, 31 Jan 2019 09:27:19 GMT  
		Size: 6.2 MB (6246051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d66ee8b365c89daf5191e4b720a8278cd634dc2750155a16682406353f6fff`  
		Last Modified: Thu, 31 Jan 2019 09:27:17 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
