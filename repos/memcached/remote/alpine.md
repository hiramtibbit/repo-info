## `memcached:alpine`

```console
$ docker pull memcached@sha256:7944c37bb12209c7d55aab1e1ddfdb2fc021df281b8ff820dd0d83411897bab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `memcached:alpine` - linux; amd64

```console
$ docker pull memcached@sha256:11157b52ee72427fe5d0fe457e8cecb01598653e9754319fa597a7361a33710a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44e151ee78377e0a02290c3eae21e5900b37cddb86d4c4ecc82b173a783cc2dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["memcached"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 19 Jan 2018 01:45:05 GMT
RUN adduser -D memcache
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_VERSION=1.5.7
# Sat, 31 Mar 2018 06:37:48 GMT
ENV MEMCACHED_SHA1=31d6f6b80668025e4616aa2ad5c7a45f24ed9665
# Sat, 31 Mar 2018 06:41:07 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		coreutils 		cyrus-sasl-dev 		dpkg-dev dpkg 		gcc 		libc-dev 		libevent-dev 		libressl 		linux-headers 		make 		perl 		perl-utils 		tar 		&& wget -O memcached.tar.gz "https://memcached.org/files/memcached-$MEMCACHED_VERSION.tar.gz" 	&& echo "$MEMCACHED_SHA1  memcached.tar.gz" | sha1sum -c - 	&& mkdir -p /usr/src/memcached 	&& tar -xzf memcached.tar.gz -C /usr/src/memcached --strip-components=1 	&& rm memcached.tar.gz 		&& cd /usr/src/memcached 		&& ./configure 		--build="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		--enable-sasl 	&& make -j "$(nproc)" 		&& make test 	&& make install 		&& cd / && rm -rf /usr/src/memcached 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .memcached-rundeps $runDeps 	&& apk del .build-deps 		&& memcached -V
# Sat, 31 Mar 2018 06:41:07 GMT
COPY file:621e178b267679ef7140edd23c3ad9e717ed767ed55322a4e198798311bc1d36 in /usr/local/bin/ 
# Sat, 31 Mar 2018 06:41:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 31 Mar 2018 06:41:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 31 Mar 2018 06:41:09 GMT
USER [memcache]
# Sat, 31 Mar 2018 06:41:09 GMT
EXPOSE 11211/tcp
# Sat, 31 Mar 2018 06:41:09 GMT
CMD ["memcached"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2dd15093416a9c9620ddfa18507f40ab70c5f3fd5b338e34990af372932a3d`  
		Last Modified: Fri, 19 Jan 2018 01:55:02 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb4479830f3b328f286059d5b5a5501102ca6b2d30150f559708c98a4ac9f5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 1.7 MB (1738478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebec455cae1d077e764359c71b6f9d39bac0b01a175b9d65378ae82160b2a5`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef77320f2982890e114bcda2df455c0f38e19e0b368755b3592ac3eaaddce0f`  
		Last Modified: Sat, 31 Mar 2018 06:55:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
