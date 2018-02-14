## `memcached:1-alpine`

```console
$ docker pull memcached@sha256:3d76fc88edacebe3fd5f04ac4213e1f792634874231a2de84e404c6fa075c995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `memcached:1-alpine` - linux; arm variant v6

```console
$ docker pull memcached@sha256:c223b57acc0376c8b97854d3a806ad27aa9a93ce42ef1449de4889e411bc6057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3738409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c262be2bed30dce8692b5d7d5e9ac04a0644278eb4c258b2803d7f54435dd30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 23 Jan 2018 22:28:21 GMT
RUN adduser -D memcache
# Tue, 13 Feb 2018 22:28:23 GMT
ENV MEMCACHED_VERSION=1.5.5
# Tue, 13 Feb 2018 22:28:24 GMT
ENV MEMCACHED_SHA1=975a5ba57bfc8331bbc3d8f92da969f35a7acf1b
# Tue, 13 Feb 2018 22:38:28 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Tue, 13 Feb 2018 22:38:29 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Tue, 13 Feb 2018 22:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 13 Feb 2018 22:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Feb 2018 22:38:35 GMT
USER [memcache]
# Tue, 13 Feb 2018 22:38:36 GMT
EXPOSE 11211/tcp
# Tue, 13 Feb 2018 22:38:37 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e46cdb4738aeac79685a7bd5ffffe354184b93bb162d67ec1bd6dd09cd190b7`  
		Last Modified: Tue, 23 Jan 2018 22:39:22 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82374311a97dec5dafe6bb7b038768a52125f1876210a9977e24216b8ae034f`  
		Last Modified: Tue, 13 Feb 2018 22:39:00 GMT  
		Size: 1.7 MB (1698251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ef0da57f8bca50a57f42135d763fc0c4b71771104cdf964d6a55e6a7d50dfb`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 287.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b0e4480a9139db6f3fb4be1b0a8ec199a05f631ce7ee577c090eac9538eca2`  
		Last Modified: Tue, 13 Feb 2018 22:38:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
