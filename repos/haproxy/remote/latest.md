## `haproxy:latest`

```console
$ docker pull haproxy@sha256:cf74459eb0e20ee5d6fc6ace06dd63b755778f9ca95208f1f99c37c0808c8666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:bb57a88b3cc937aaba9238251a143222d63083d337c19a7f1b3604298e00277b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28512730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07b562485ad9adf5440b265fad865897dbe7d5aaf1f6a53a1795b97bf34f29d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:32:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		liblua5.3-0 		libpcre3 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:33:56 GMT
ENV HAPROXY_MAJOR=1.8
# Wed, 27 Jun 2018 22:19:39 GMT
ENV HAPROXY_VERSION=1.8.12
# Wed, 27 Jun 2018 22:19:39 GMT
ENV HAPROXY_MD5=9f37013ec1e76942a67a9f7c067af9f2
# Wed, 27 Jun 2018 22:20:27 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "https://www.haproxy.org/download/${HAPROXY_MAJOR}/src/haproxy-${HAPROXY_VERSION}.tar.gz" 	&& echo "$HAPROXY_MD5 *haproxy.tar.gz" | md5sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 22:20:27 GMT
COPY file:9489da093f9bbacb372aa24916cd4607d45b831e8054d997ab55a1be7b595c17 in / 
# Wed, 27 Jun 2018 22:20:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 22:20:27 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ae775f6ea58d39ee58d6e7a2d2ce3f9e02a96fb017f1641a55db3b8ebeaee9`  
		Last Modified: Tue, 26 Jun 2018 22:40:40 GMT  
		Size: 2.1 MB (2102477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9b54e5990d6f411879f35b499d90950685b29951729ee7ff08be03bad7ede0`  
		Last Modified: Wed, 27 Jun 2018 22:21:36 GMT  
		Size: 3.9 MB (3912898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5f652717a326c7c7d46d91c7c1231b1de3df25037f40ab6d3d68a810893a1d`  
		Last Modified: Wed, 27 Jun 2018 22:21:36 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
