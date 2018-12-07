## `haproxy:rc`

```console
$ docker pull haproxy@sha256:39fbafdd70649e8bc1bfa072bbdb2273f562bfbadc12ffcfd1d42266682f7f91
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

### `haproxy:rc` - linux; amd64

```console
$ docker pull haproxy@sha256:2efa6411a00952c6bfbe5f09ac10c749c2626413bbaac8675f9dfc5ccb611467
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28229583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeba3e7e22fe4d45ab29cd02abf51fb49455f1ba44ffc313ed5634bdffb1d370`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 01:23:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 01:23:04 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 01:23:44 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 01:23:44 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 01:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 01:23:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d775ae156140f3febe57be6b7e48f1a7273cad78e7fc0cb62270a38de4580`  
		Last Modified: Thu, 23 Nov 2017 01:29:43 GMT  
		Size: 2.1 MB (2102289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f4f9a97706056443f7c78e06662de199b3279c5b4359656dfce0de51f3d94e`  
		Last Modified: Thu, 23 Nov 2017 01:29:42 GMT  
		Size: 3.6 MB (3634564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb88baa0d81691cda7723e57ad2cef80d2e0aba3d9a7dfadcead628217d1ca91`  
		Last Modified: Thu, 23 Nov 2017 01:29:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:00493d6f67a4f51566dcefeac87f45f2f8f1a56f20904cf23c72c0d7b5d912a2
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26567517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bccd94f3f3ebbf4ee4ae56e7fcdc1492600c6406a42b66eba102b47661034096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 09:58:32 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 09:58:32 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 09:58:33 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 09:58:33 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 09:59:14 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 09:59:14 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 09:59:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 09:59:14 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31733362de6bf9588f054cd414af095827c165f1f22befcf4406d10bb29ad527`  
		Last Modified: Thu, 23 Nov 2017 10:00:41 GMT  
		Size: 1.8 MB (1816054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0698a71b2326aa99cf314ed04f83b2360dd4657ad2827748a222971c86a65883`  
		Last Modified: Thu, 23 Nov 2017 10:00:42 GMT  
		Size: 3.6 MB (3584832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ecf551e41fee975df9877e23380d306c6e8d4cc680d9e61726be9d1020e2da`  
		Last Modified: Thu, 23 Nov 2017 10:00:41 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:fabe08f9915cf84f4ef46e274977cf7332e3159dca8ba78462ef7682b26fbc7c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24550145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd220f7b469be11a07f6b59208f0f9cf3c7a1d100b6b9c58e5f4ac60e9531354`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 17:23:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 17:23:50 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 17:23:51 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 17:23:51 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 17:24:14 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 17:24:15 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 17:24:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 17:24:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101d4d936d95ab3dbdcb7ec3808ff887e54ec3c7862ff652a2132bb21e27d0df`  
		Last Modified: Thu, 23 Nov 2017 17:26:13 GMT  
		Size: 1.7 MB (1736053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeac9e09c2412cbf9769ea168aafa9e63b8feba11b6151f854c6271d00f06334`  
		Last Modified: Thu, 23 Nov 2017 17:26:13 GMT  
		Size: 3.5 MB (3536577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04b006824ee118c5b526461cb3712c19c95ee10b1af35a013150c5d0c99b397`  
		Last Modified: Thu, 23 Nov 2017 17:26:12 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:4c263f8786ba0029877894c70361b81063141592b26df2f3edf89e39f21ed11f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25713722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85645be0f658b71c46a2ca079e0b6de0d5d0f6b09747acf436aee341740b1021`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 20:43:50 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 20:43:51 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 20:43:51 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 20:43:52 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 20:45:22 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 20:45:23 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 20:45:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 20:45:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab04b73ae073d0004082c69ca62cd1e64d97c53f45bfebff13383b7c3d859a12`  
		Last Modified: Thu, 23 Nov 2017 20:50:04 GMT  
		Size: 1.8 MB (1818801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10a54aa8648348e38199b7db96e114486ebe5019320e15b34210faf5768691c`  
		Last Modified: Thu, 23 Nov 2017 20:50:04 GMT  
		Size: 3.6 MB (3557397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704a160f0e5c00ff7c220f000c4e8df174556247cccbdc752770670364299c5a`  
		Last Modified: Thu, 23 Nov 2017 20:50:03 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; 386

```console
$ docker pull haproxy@sha256:253ee4f7202e74c31061a351e1b65633e786e1ccf869338e5e0c4ee201a4e874
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28808341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa63078f8075f65e44199fda4bfc5ce11e31b9faf1edeb1e8bd73978bd297e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 05:37:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 05:37:02 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 05:37:02 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 05:37:02 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 05:37:55 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 05:37:55 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 05:37:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 05:37:56 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08724654510187f71cbd16d8a1c24b9a6848cf7b598e221a8f85be7502a1e6ca`  
		Last Modified: Thu, 23 Nov 2017 05:41:11 GMT  
		Size: 2.1 MB (2128534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4ed8230d2489afb23e42639000bdcdb9c3ca1ced353377fd99e71e77d794f8`  
		Last Modified: Thu, 23 Nov 2017 05:41:09 GMT  
		Size: 3.6 MB (3550749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f015983f91ac89c3f34e4939441644e3d7a4fb5780ee9f6f58dd7b9d2c04a5bc`  
		Last Modified: Thu, 23 Nov 2017 05:41:09 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; ppc64le

```console
$ docker pull haproxy@sha256:c182280e04871195237a9915df71bf01bf942f90ceaed56fab5800bc4717a843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28161050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85e40e6929d0779d0634d3982e77e59a21082075f5052b28815252ec0a23ee8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 03:12:06 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 03:12:07 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 03:12:08 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 03:12:09 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 03:14:33 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 03:14:34 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 03:14:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 03:14:36 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75adab98bffb08aa0ec4b66a1fb8bab79e29ba591819001b1c0c7010d578582`  
		Last Modified: Thu, 23 Nov 2017 03:17:29 GMT  
		Size: 1.8 MB (1781153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafa30f7c92e5384d5ae8553130c64dcc2ec6f06cc244422b93f69b7e7e94606`  
		Last Modified: Thu, 23 Nov 2017 03:17:31 GMT  
		Size: 3.6 MB (3633300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae70989f11b4652b48a954337589f2cb7fb0b82221e0ec631ea8ae154d5154f`  
		Last Modified: Thu, 23 Nov 2017 03:17:29 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:rc` - linux; s390x

```console
$ docker pull haproxy@sha256:3fbe6b9171f3a39bc965bfa75ddd913ed004b1401a560f4d0ced6f24216069fa
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27911883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4db2906297db10c7eef493b48213478477e977dea141ec9535bf11b0e9894c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 23 Nov 2017 17:54:41 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Nov 2017 17:54:41 GMT
ENV HAPROXY_MAJOR=1.8
# Thu, 23 Nov 2017 17:54:42 GMT
ENV HAPROXY_VERSION=1.8-rc4
# Thu, 23 Nov 2017 17:54:42 GMT
ENV HAPROXY_MD5=9bf5e689ceda1e5c8ec137042b2b1549
# Thu, 23 Nov 2017 17:55:10 GMT
RUN set -x 		&& buildDeps=' 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		zlib1g-dev 		make 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "http://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Thu, 23 Nov 2017 17:55:10 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Thu, 23 Nov 2017 17:55:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Nov 2017 17:55:10 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a670965f9b47131be07001a257862b7026719a76da436763a0901d9d6bec97`  
		Last Modified: Thu, 23 Nov 2017 17:56:52 GMT  
		Size: 1.8 MB (1841010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874169f49b0f6fa1d4ded5cbc1a5d5f2e38a5936a907af812501174b11e7c424`  
		Last Modified: Thu, 23 Nov 2017 17:56:53 GMT  
		Size: 3.7 MB (3730542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566a30bbb6ebd6ec0bc954030e106af627662ff2553a63ee408528a6ed2ccbba`  
		Last Modified: Thu, 23 Nov 2017 17:56:52 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
