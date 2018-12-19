## `haproxy:rc`

```console
$ docker pull haproxy@sha256:8fdde204234b6f940824597118297e5f7454eba5be922b78530bba2dc75d2f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:rc` - linux; amd64

```console
$ docker pull haproxy@sha256:e1abeb5deccc943be26e72386398f02230df4e4a064d1e76fc0637366ba001cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29041842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c77976772a3940e2b6694979706bb36597ffa4a064da727d28b63b7a28eb50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Wed, 19 Dec 2018 18:19:31 GMT
ENV HAPROXY_VERSION=1.9-dev11
# Wed, 19 Dec 2018 18:19:31 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev11.tar.gz
# Wed, 19 Dec 2018 18:19:31 GMT
ENV HAPROXY_SHA256=c80f06d57b54da8dc897419af0bd7a2ff4e90c43a257e71c87f970f910997dd8
# Wed, 19 Dec 2018 18:20:45 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 19 Dec 2018 18:20:45 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:20:45 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:20:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:20:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779d520ae56a089c56c73392800ad0b76cacbe43cfc903b2e1dd3d3bbe08b2fc`  
		Last Modified: Wed, 19 Dec 2018 18:23:31 GMT  
		Size: 6.6 MB (6555185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5583a8e160d972cd9a395820bbe48713f8ac885704d459ecbaa276bc7871eb`  
		Last Modified: Wed, 19 Dec 2018 18:23:30 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
