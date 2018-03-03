## `memcached:latest`

```console
$ docker pull memcached@sha256:7d0508250e78c70930dc584e34933e1895bd556c9f4278565b0fb253f3b7f7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:latest` - linux; amd64

```console
$ docker pull memcached@sha256:3cebe282fd6eceb5be27c13c080e961155e8343411b032379bc07e05e09ed29f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24070575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa3d5e67a3a5072cf1898150e573e03784abd405af599d531ffaee53830c41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 08:22:24 GMT
RUN groupadd -r memcache && useradd -r -g memcache memcache
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_VERSION=1.5.6
# Sat, 03 Mar 2018 01:12:04 GMT
ENV MEMCACHED_SHA1=ca35929e74b132c2495a6957cfdc80556337fb90
# Sat, 03 Mar 2018 01:15:33 GMT
RUN set -x 		&& buildDeps=' 		ca-certificates 		dpkg-dev 		gcc 		libc6-dev 		libevent-dev 		libsasl2-dev 		make 		perl 		wget 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& apt-mark manual 		libevent-2.0-5 		libsasl2-2 	&& apt-get purge -y --auto-remove $buildDeps 		&& memcached -V
# Sat, 03 Mar 2018 01:15:33 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 03 Mar 2018 01:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:15:34 GMT
USER [memcache]
# Sat, 03 Mar 2018 01:15:35 GMT
EXPOSE 11211/tcp
# Sat, 03 Mar 2018 01:15:35 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6922c32abe96e2bca4f4bb0585ba3dc4087a6bdea736262800a2140a01b02846`  
		Last Modified: Sat, 17 Feb 2018 08:38:04 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa89e7ebfe04a0967df30e3588e4cf64497ac28dd32a91fad33efd6f48ac85f`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 1.6 MB (1571650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66067bd060c45f3d65f7e7aa56066c8a397e150ee541628c5bfdb44516751f2`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81d52b50ece0a657ec7a16123205e4ddc8f0100e53460c64a31cb4b4dc72f80`  
		Last Modified: Sat, 03 Mar 2018 01:19:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
