<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `haproxy`

-	[`haproxy:1`](#haproxy1)
-	[`haproxy:1.5`](#haproxy15)
-	[`haproxy:1.5.19`](#haproxy1519)
-	[`haproxy:1.5.19-alpine`](#haproxy1519-alpine)
-	[`haproxy:1.5-alpine`](#haproxy15-alpine)
-	[`haproxy:1.6`](#haproxy16)
-	[`haproxy:1.6.14`](#haproxy1614)
-	[`haproxy:1.6.14-alpine`](#haproxy1614-alpine)
-	[`haproxy:1.6-alpine`](#haproxy16-alpine)
-	[`haproxy:1.7`](#haproxy17)
-	[`haproxy:1.7.11`](#haproxy1711)
-	[`haproxy:1.7.11-alpine`](#haproxy1711-alpine)
-	[`haproxy:1.7-alpine`](#haproxy17-alpine)
-	[`haproxy:1.8`](#haproxy18)
-	[`haproxy:1.8.15`](#haproxy1815)
-	[`haproxy:1.8.15-alpine`](#haproxy1815-alpine)
-	[`haproxy:1.8-alpine`](#haproxy18-alpine)
-	[`haproxy:1.9-dev11`](#haproxy19-dev11)
-	[`haproxy:1.9-dev11-alpine`](#haproxy19-dev11-alpine)
-	[`haproxy:1.9-rc`](#haproxy19-rc)
-	[`haproxy:1.9-rc-alpine`](#haproxy19-rc-alpine)
-	[`haproxy:1-alpine`](#haproxy1-alpine)
-	[`haproxy:alpine`](#haproxyalpine)
-	[`haproxy:latest`](#haproxylatest)
-	[`haproxy:rc`](#haproxyrc)
-	[`haproxy:rc-alpine`](#haproxyrc-alpine)

## `haproxy:1`

```console
$ docker pull haproxy@sha256:c5183360ae0936fa358272a506d5ebb93dc6c2d6a3f27e4f14efc9422b1adf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1` - linux; amd64

```console
$ docker pull haproxy@sha256:f5dfee8026b9d10d0f95acfd0fd42769575b50ec1a8da880a494161d9628d639
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28087356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6ba9c5df5a2bc8e63ab43f36e3786eee2a2aa7db59a9028999a9c4851a064b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:22:24 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 19 Dec 2018 18:22:24 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:22:24 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:22:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:22:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e976541d4dd9864af8d168da4b68fde0d2255cfd486a6f685ea2f6b7f2eb3e`  
		Last Modified: Wed, 19 Dec 2018 18:23:43 GMT  
		Size: 5.6 MB (5600699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665c9264e545cbe885be39fa639cdb455c061915f71644ff5df1489250658d0b`  
		Last Modified: Wed, 19 Dec 2018 18:23:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5`

```console
$ docker pull haproxy@sha256:64cac07e372e6e5f035921ee7e1007560a290c7e1a49b4cbd509aeee648cac79
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

### `haproxy:1.5` - linux; amd64

```console
$ docker pull haproxy@sha256:ebb9148cbe836b584a2b9ade8795ad05bce435c745ce30998a60c89eff5f307e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26614680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05edd500bd2d3ee7f8013c044cf47d1a400af524677ebfc10488bc3ffec05fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:29:02 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 01:29:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 01:29:03 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 01:29:36 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:29:36 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:29:37 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:29:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:29:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440b3227cf952dafd8a8cdcdc8c43d66aba3d5231b54f416f4df632d22f0098`  
		Last Modified: Sat, 08 Dec 2018 01:41:09 GMT  
		Size: 4.1 MB (4128000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b44279c8ddbf4415fda0844ee0b8feaf66bb4024eefeda7c460ca4bd43a87d`  
		Last Modified: Sat, 08 Dec 2018 01:41:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:8efdb550f6a93bdbfd329b5dcf5ac71fe70e8c7380b3537c1ddf3df31c621032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24838058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c4821692eb63ebafe2dcde470820b3d22153687a75557de864fbccfa2a9975`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:52:34 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 09:52:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 09:52:36 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 09:53:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:53:15 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:53:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 09:53:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:53:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c0399ec12ade297e2a525c435c9559aac71b3c756dfcc83295ade24149e3fb`  
		Last Modified: Sat, 08 Dec 2018 09:54:54 GMT  
		Size: 3.7 MB (3674648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad581597949c804fea4a7f62c0f26088f189fd96189793aed85c361a3505320`  
		Last Modified: Sat, 08 Dec 2018 09:54:52 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:d42552020cbd99c0c177a29a75189b4029406ce85002ea0a2aa7a9fd21982858
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22853301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a96a38ffa0739ca5331c27dc822d335ce5349ad82da7258f82956b611298f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:09:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 13:09:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 13:09:53 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 13:10:26 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:10:26 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:10:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:10:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:10:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d99f493b5ade5da1cab48923eb7a17b769b0b7edc0e3256214880e9c1708c7b`  
		Last Modified: Sat, 08 Dec 2018 13:12:20 GMT  
		Size: 3.6 MB (3582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf751baff512785f40c3d083d86670d12a200512721e3addfa33d196e36bd42`  
		Last Modified: Sat, 08 Dec 2018 13:12:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:011c32bd570de6c518ea70beb2e2897dc14cd0d5a83fd55451c0e3ece3c17428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24033199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f972e679bb9e00c8af67e5cbc1999c205edfc5053940f927471be7a657e2fdf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 11:46:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 11:46:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 11:46:50 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 11:48:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 11:48:59 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:49:00 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:49:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:49:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ffb932a7548163ca4a29b826684e0d0b97d383b0d202f0bc16c795941afa6c`  
		Last Modified: Sat, 08 Dec 2018 11:55:16 GMT  
		Size: 3.7 MB (3701487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcae44337e098fce14f551914d0ff40457a027a8abd97f95f9000b36f8f618f7`  
		Last Modified: Sat, 08 Dec 2018 11:55:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; 386

```console
$ docker pull haproxy@sha256:f92972a8f6938dedabb079f3fff2808af75f8115419306fbf48e329c697d8217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27021084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5945cc3f9e59853adf3b6d7d7a99c2707729a52597608b2cb029e44913e5917a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 12:36:16 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 12:36:16 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 12:36:16 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 12:36:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 12:36:48 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:36:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:36:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:36:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f415c2e682f835d3a10b4e4041f5747d988672c7f301a2d3c075b37be492a89`  
		Last Modified: Sat, 08 Dec 2018 12:43:48 GMT  
		Size: 3.9 MB (3893906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8128cb6a970e49459df6db85fc63b5b9e451fc54501035f5cdb7f2e947b815`  
		Last Modified: Sat, 08 Dec 2018 12:43:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; ppc64le

```console
$ docker pull haproxy@sha256:5b0c86345e22aade8ed1dc8ba69ba3a658feec40ef25041905163542fa91f9fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26586316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995708322846dfe4916deb59f4dbba5168acba962a6d5f8b761c15e2586b8b48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:33:24 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 10:33:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 10:33:25 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 10:34:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:34:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:34:25 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:34:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:34:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b452d399a6222ea33d6da8030665cde775bcf22606c72517da5f7b08ded5231`  
		Last Modified: Sat, 08 Dec 2018 10:48:48 GMT  
		Size: 3.8 MB (3845199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a43716e1a2e7e91469e7c661bfd8e6ca881e30a181c2229a678d1a4cdfd81f0`  
		Last Modified: Sat, 08 Dec 2018 10:48:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5` - linux; s390x

```console
$ docker pull haproxy@sha256:4d5415ebf39cafa74c703087372fd5c5b6327dc2c424a91e9ef2ef0b5fbcd7ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26288391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54720f920c94ea9447acedd7068d36ebe0110148dd7b51d633091983d1080957`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:32:10 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 13:32:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 13:32:11 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 13:32:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:32:48 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:32:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:32:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:32:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39f059137cebd414346e824138fe358b5ee37e3992ed7eb8ace819f88b8623b`  
		Last Modified: Sat, 08 Dec 2018 13:36:03 GMT  
		Size: 4.0 MB (3953275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace9388c90c07dbd7130f7e85c27fa03a04e51745b747a43aa0e81c176e3447`  
		Last Modified: Sat, 08 Dec 2018 13:36:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19`

```console
$ docker pull haproxy@sha256:64cac07e372e6e5f035921ee7e1007560a290c7e1a49b4cbd509aeee648cac79
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

### `haproxy:1.5.19` - linux; amd64

```console
$ docker pull haproxy@sha256:ebb9148cbe836b584a2b9ade8795ad05bce435c745ce30998a60c89eff5f307e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26614680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05edd500bd2d3ee7f8013c044cf47d1a400af524677ebfc10488bc3ffec05fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:29:02 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 01:29:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 01:29:03 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 01:29:36 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:29:36 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:29:37 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:29:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:29:38 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f440b3227cf952dafd8a8cdcdc8c43d66aba3d5231b54f416f4df632d22f0098`  
		Last Modified: Sat, 08 Dec 2018 01:41:09 GMT  
		Size: 4.1 MB (4128000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b44279c8ddbf4415fda0844ee0b8feaf66bb4024eefeda7c460ca4bd43a87d`  
		Last Modified: Sat, 08 Dec 2018 01:41:08 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:8efdb550f6a93bdbfd329b5dcf5ac71fe70e8c7380b3537c1ddf3df31c621032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24838058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c4821692eb63ebafe2dcde470820b3d22153687a75557de864fbccfa2a9975`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:52:34 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 09:52:35 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 09:52:36 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 09:53:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:53:15 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:53:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 09:53:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:53:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c0399ec12ade297e2a525c435c9559aac71b3c756dfcc83295ade24149e3fb`  
		Last Modified: Sat, 08 Dec 2018 09:54:54 GMT  
		Size: 3.7 MB (3674648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad581597949c804fea4a7f62c0f26088f189fd96189793aed85c361a3505320`  
		Last Modified: Sat, 08 Dec 2018 09:54:52 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:d42552020cbd99c0c177a29a75189b4029406ce85002ea0a2aa7a9fd21982858
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22853301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a96a38ffa0739ca5331c27dc822d335ce5349ad82da7258f82956b611298f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:09:52 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 13:09:52 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 13:09:53 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 13:10:26 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:10:26 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:10:27 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:10:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:10:29 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d99f493b5ade5da1cab48923eb7a17b769b0b7edc0e3256214880e9c1708c7b`  
		Last Modified: Sat, 08 Dec 2018 13:12:20 GMT  
		Size: 3.6 MB (3582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf751baff512785f40c3d083d86670d12a200512721e3addfa33d196e36bd42`  
		Last Modified: Sat, 08 Dec 2018 13:12:19 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:011c32bd570de6c518ea70beb2e2897dc14cd0d5a83fd55451c0e3ece3c17428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24033199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f972e679bb9e00c8af67e5cbc1999c205edfc5053940f927471be7a657e2fdf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 11:46:48 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 11:46:49 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 11:46:50 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 11:48:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 11:48:59 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:49:00 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:49:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:49:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ffb932a7548163ca4a29b826684e0d0b97d383b0d202f0bc16c795941afa6c`  
		Last Modified: Sat, 08 Dec 2018 11:55:16 GMT  
		Size: 3.7 MB (3701487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcae44337e098fce14f551914d0ff40457a027a8abd97f95f9000b36f8f618f7`  
		Last Modified: Sat, 08 Dec 2018 11:55:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; 386

```console
$ docker pull haproxy@sha256:f92972a8f6938dedabb079f3fff2808af75f8115419306fbf48e329c697d8217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27021084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5945cc3f9e59853adf3b6d7d7a99c2707729a52597608b2cb029e44913e5917a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 12:36:16 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 12:36:16 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 12:36:16 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 12:36:47 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 12:36:48 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:36:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:36:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:36:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f415c2e682f835d3a10b4e4041f5747d988672c7f301a2d3c075b37be492a89`  
		Last Modified: Sat, 08 Dec 2018 12:43:48 GMT  
		Size: 3.9 MB (3893906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8128cb6a970e49459df6db85fc63b5b9e451fc54501035f5cdb7f2e947b815`  
		Last Modified: Sat, 08 Dec 2018 12:43:47 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; ppc64le

```console
$ docker pull haproxy@sha256:5b0c86345e22aade8ed1dc8ba69ba3a658feec40ef25041905163542fa91f9fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26586316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:995708322846dfe4916deb59f4dbba5168acba962a6d5f8b761c15e2586b8b48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:33:24 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 10:33:24 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 10:33:25 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 10:34:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:34:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:34:25 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:34:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:34:26 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b452d399a6222ea33d6da8030665cde775bcf22606c72517da5f7b08ded5231`  
		Last Modified: Sat, 08 Dec 2018 10:48:48 GMT  
		Size: 3.8 MB (3845199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a43716e1a2e7e91469e7c661bfd8e6ca881e30a181c2229a678d1a4cdfd81f0`  
		Last Modified: Sat, 08 Dec 2018 10:48:47 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19` - linux; s390x

```console
$ docker pull haproxy@sha256:4d5415ebf39cafa74c703087372fd5c5b6327dc2c424a91e9ef2ef0b5fbcd7ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26288391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54720f920c94ea9447acedd7068d36ebe0110148dd7b51d633091983d1080957`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:32:10 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 13:32:11 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 13:32:11 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 13:32:48 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:32:48 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:32:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:32:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:32:48 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39f059137cebd414346e824138fe358b5ee37e3992ed7eb8ace819f88b8623b`  
		Last Modified: Sat, 08 Dec 2018 13:36:03 GMT  
		Size: 4.0 MB (3953275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace9388c90c07dbd7130f7e85c27fa03a04e51745b747a43aa0e81c176e3447`  
		Last Modified: Sat, 08 Dec 2018 13:36:02 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5.19-alpine`

```console
$ docker pull haproxy@sha256:dc05ed51f673f30d970a5b35c31aa7fb5d356c0774b66e6c3cd645333ca08ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.5.19-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:17e044aa01c36a5094bfd473296736f4437b98ee91c6c0c5a73e451492230932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7115205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecbb5e45b42995b6e23cb988a77d10bf99b19cfc96f5ed41df711d888caea59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:30:09 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 01:30:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 01:30:10 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 01:30:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:30:44 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:30:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:30:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:30:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df542dc6442f436ea5f1b3af83f113551edbb30dc6b39b9cc102c35638463c7`  
		Last Modified: Sat, 08 Dec 2018 01:42:04 GMT  
		Size: 4.9 MB (4907871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b510e4be8cfa273e0e424d3f198fac0126c7cc39ace1d1623abfedcbd58f2`  
		Last Modified: Sat, 08 Dec 2018 01:42:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:dc53bc69e9b8c200c1f1207dd7286ca4622f09afdc7951ec933ede1a5a57e7d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6580415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c697bc5fccf4968ffd2e64a9e08f5634ecac8328a7b9b67441522aa316ca8866`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 08:54:42 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 08:54:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 08:54:43 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 08:54:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 08:54:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 08:54:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 08:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 08:54:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3328096a501db17215b144aab8632bf9382f7af87280cf46d6c9cb0696c2dbc0`  
		Last Modified: Sat, 08 Dec 2018 08:56:24 GMT  
		Size: 4.4 MB (4433385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02544354c4b36b3ff003880837b6bcbdad3159a978f2a5087cde93fde043993`  
		Last Modified: Sat, 08 Dec 2018 08:56:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:18d4509a9cc23146d7521023712cf3ceef99c3bf5b0d2fac48da8c18c879684e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6578221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa191f654ac88cc838ba87ee64cd4cc3a231681a77b981c337b044be04c8083a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 11:49:30 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 11:49:31 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 11:49:31 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 11:49:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 11:49:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:49:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:50:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:50:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1736b399695d6bc589b89ce318282b37c25e887466b5aaa6565158f66a7880`  
		Last Modified: Sat, 08 Dec 2018 11:55:44 GMT  
		Size: 4.5 MB (4477881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d035db302400f47916690ad6839f21797b8cad842ff41e79337c48d2fc529091`  
		Last Modified: Sat, 08 Dec 2018 11:55:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d81313390e72fd6b7376ebd042c2dbbbbd8f42150a7a662f32fbc25c188b5fd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6924063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6ea311ebd9e673ac61e0bacb93429afdf122e49ebeb6392d5033da82ebe210`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 12:37:08 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 12:37:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 12:37:08 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 12:37:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 12:37:29 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:37:29 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:37:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:37:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a234c7d46a7c06154d31fad6ab9e69a4ef4f662d85c841e5979978c44bfc9ca`  
		Last Modified: Sat, 08 Dec 2018 12:44:20 GMT  
		Size: 4.7 MB (4652025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e273d5500ec40597742e4d92be798bcf01a347aa23c208158f38754f34fd6b`  
		Last Modified: Sat, 08 Dec 2018 12:44:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:b419092c1e1320e0e1c143307451bc8b907bfaa54ddb749e2387fe4e51e022c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6797933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191b736aed5281fd129c3491bbb5dc0f2feb588b68631b6bf26574e528200326`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 10:34:57 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 10:34:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 10:34:58 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 10:35:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 10:35:14 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:35:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:35:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:35:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e41ca2a641eea0ae8901d64e00be6641bdf825eb826a17859697b4169b680`  
		Last Modified: Sat, 08 Dec 2018 10:50:02 GMT  
		Size: 4.6 MB (4602128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8c95514ae62de773db549f72766ae94b75ebc08bb884a5c9367be26a4eac7`  
		Last Modified: Sat, 08 Dec 2018 10:50:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5.19-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:4b336e4a738f1bda83c3883c956b11885643bf9568797299b95eee1c35f18bcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6889612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1029a15ff6f1316bc85cab043077385c1f4a22cb69e8625c097181332f964e02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 13:33:01 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 13:33:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 13:33:02 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 13:33:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 13:33:22 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:33:22 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:33:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:33:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c457e9a75468e7e6903b867f6606a5cf621b5bdb0b0ee395e03417998c8ffb4f`  
		Last Modified: Sat, 08 Dec 2018 13:36:15 GMT  
		Size: 4.6 MB (4581286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24225df6477ab31d78c8c6c43c19b631b0ca69b341eb65e84a933d214a2a0562`  
		Last Modified: Sat, 08 Dec 2018 13:36:14 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.5-alpine`

```console
$ docker pull haproxy@sha256:dc05ed51f673f30d970a5b35c31aa7fb5d356c0774b66e6c3cd645333ca08ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.5-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:17e044aa01c36a5094bfd473296736f4437b98ee91c6c0c5a73e451492230932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7115205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecbb5e45b42995b6e23cb988a77d10bf99b19cfc96f5ed41df711d888caea59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:30:09 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 01:30:09 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 01:30:10 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 01:30:43 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:30:44 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:30:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:30:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:30:45 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df542dc6442f436ea5f1b3af83f113551edbb30dc6b39b9cc102c35638463c7`  
		Last Modified: Sat, 08 Dec 2018 01:42:04 GMT  
		Size: 4.9 MB (4907871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b510e4be8cfa273e0e424d3f198fac0126c7cc39ace1d1623abfedcbd58f2`  
		Last Modified: Sat, 08 Dec 2018 01:42:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:dc53bc69e9b8c200c1f1207dd7286ca4622f09afdc7951ec933ede1a5a57e7d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6580415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c697bc5fccf4968ffd2e64a9e08f5634ecac8328a7b9b67441522aa316ca8866`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 08:54:42 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 08:54:42 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 08:54:43 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 08:54:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 08:54:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 08:54:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 08:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 08:54:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3328096a501db17215b144aab8632bf9382f7af87280cf46d6c9cb0696c2dbc0`  
		Last Modified: Sat, 08 Dec 2018 08:56:24 GMT  
		Size: 4.4 MB (4433385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02544354c4b36b3ff003880837b6bcbdad3159a978f2a5087cde93fde043993`  
		Last Modified: Sat, 08 Dec 2018 08:56:23 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:18d4509a9cc23146d7521023712cf3ceef99c3bf5b0d2fac48da8c18c879684e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6578221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa191f654ac88cc838ba87ee64cd4cc3a231681a77b981c337b044be04c8083a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 11:49:30 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 11:49:31 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 11:49:31 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 11:49:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 11:49:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:49:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:50:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:50:00 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1736b399695d6bc589b89ce318282b37c25e887466b5aaa6565158f66a7880`  
		Last Modified: Sat, 08 Dec 2018 11:55:44 GMT  
		Size: 4.5 MB (4477881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d035db302400f47916690ad6839f21797b8cad842ff41e79337c48d2fc529091`  
		Last Modified: Sat, 08 Dec 2018 11:55:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:d81313390e72fd6b7376ebd042c2dbbbbd8f42150a7a662f32fbc25c188b5fd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6924063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6ea311ebd9e673ac61e0bacb93429afdf122e49ebeb6392d5033da82ebe210`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 12:37:08 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 12:37:08 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 12:37:08 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 12:37:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 12:37:29 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:37:29 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:37:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:37:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a234c7d46a7c06154d31fad6ab9e69a4ef4f662d85c841e5979978c44bfc9ca`  
		Last Modified: Sat, 08 Dec 2018 12:44:20 GMT  
		Size: 4.7 MB (4652025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e273d5500ec40597742e4d92be798bcf01a347aa23c208158f38754f34fd6b`  
		Last Modified: Sat, 08 Dec 2018 12:44:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:b419092c1e1320e0e1c143307451bc8b907bfaa54ddb749e2387fe4e51e022c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6797933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191b736aed5281fd129c3491bbb5dc0f2feb588b68631b6bf26574e528200326`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 10:34:57 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 10:34:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 10:34:58 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 10:35:14 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 10:35:14 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:35:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:35:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:35:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e41ca2a641eea0ae8901d64e00be6641bdf825eb826a17859697b4169b680`  
		Last Modified: Sat, 08 Dec 2018 10:50:02 GMT  
		Size: 4.6 MB (4602128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8c95514ae62de773db549f72766ae94b75ebc08bb884a5c9367be26a4eac7`  
		Last Modified: Sat, 08 Dec 2018 10:50:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.5-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:4b336e4a738f1bda83c3883c956b11885643bf9568797299b95eee1c35f18bcc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6889612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1029a15ff6f1316bc85cab043077385c1f4a22cb69e8625c097181332f964e02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 13:33:01 GMT
ENV HAPROXY_VERSION=1.5.19
# Sat, 08 Dec 2018 13:33:02 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.5/src/haproxy-1.5.19.tar.gz
# Sat, 08 Dec 2018 13:33:02 GMT
ENV HAPROXY_SHA256=e00ae2a633da614967f2e3ebebdb817ec537cba8383b833fc8d9a506876e0d5e
# Sat, 08 Dec 2018 13:33:22 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 13:33:22 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:33:22 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:33:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:33:23 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c457e9a75468e7e6903b867f6606a5cf621b5bdb0b0ee395e03417998c8ffb4f`  
		Last Modified: Sat, 08 Dec 2018 13:36:15 GMT  
		Size: 4.6 MB (4581286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24225df6477ab31d78c8c6c43c19b631b0ca69b341eb65e84a933d214a2a0562`  
		Last Modified: Sat, 08 Dec 2018 13:36:14 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6`

```console
$ docker pull haproxy@sha256:d595366a4231f0b321aa1447f00c4b889c061a70bfafecb06d9d578aba5cf6fd
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

### `haproxy:1.6` - linux; amd64

```console
$ docker pull haproxy@sha256:9e86da76e87370a40df608d7cf21113a7d4a2d45b8bf28ddf47b37ea8878f63f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27439338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e02edf5e5277aa6ee35e744e3547831b8b1fcc29cc0b99cc334f0a856087dc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:26:38 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 01:26:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 01:26:39 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 01:27:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:27:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:27:24 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:27:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:27:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3ab087fa8fdfa783d1f5da7280fb013fbb5e53a341bcaae5d1c2431742ae1e`  
		Last Modified: Sat, 08 Dec 2018 01:39:20 GMT  
		Size: 5.0 MB (4952658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702b8ac4edb8f8e87f8158f8eba8271ee62ad68f929415141ebc88b26453fdd6`  
		Last Modified: Sat, 08 Dec 2018 01:39:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:da5a0df013cb384ac568ce73db25dab98958d9a8ed39c0c955971e6095447c3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25627981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95709ffad4d76ac70ff33a4f1a1524411ea3aa50e723bae385784432da3e782b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:51:33 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 09:51:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 09:51:34 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 09:52:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:52:17 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:52:17 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 09:52:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:52:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e752ed1ead628fbe0009eb4fef1ca3a860ae41fb860b3040935a9715f0810c`  
		Last Modified: Sat, 08 Dec 2018 09:54:38 GMT  
		Size: 4.5 MB (4464571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e209b23d6eeb58a3dd03249c1d2dd2a7d1de15cf6d7fa1f8cf17ff4d5df5e`  
		Last Modified: Sat, 08 Dec 2018 09:54:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:364fb9a591126f3b50809c443e754098255e22c791d0194bc0034b9971264557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23612488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857b4bc468aaff156beb2d854a9c661d704f877df142b1eb9fd2408211c05634`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:09:01 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 13:09:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 13:09:01 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 13:09:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:09:37 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:09:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:09:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b8da020c1377b5a3ab3453617330968e361bd40aef9df51a8770a5e96878e9`  
		Last Modified: Sat, 08 Dec 2018 13:12:04 GMT  
		Size: 4.3 MB (4342026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570a7a030a33a0b79a7e65c44d53fe90f1bdbb473d7b04ef5a4cd2b82d99be5a`  
		Last Modified: Sat, 08 Dec 2018 13:12:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a3f38e0fab76ba17199016d6ff2270f9d0830f8e8a2c90213d1cd8a58ec17ace
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24827544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104b90a9a1bd76e5a3eb4083d54ab23165a70074797154053fce8d9cd17f371f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 11:42:21 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 11:42:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 11:42:23 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 11:44:45 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 11:44:46 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:44:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:44:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:44:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5b2f68fa8f5dcf2fe3a12a0c24872edb5149ec011e8caf4208b99c1df9b590`  
		Last Modified: Sat, 08 Dec 2018 11:54:16 GMT  
		Size: 4.5 MB (4495833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb815a79df1f79d650bf8b0916d5fdb65b6807d56d0e6bee8a20fb62e6fa2a20`  
		Last Modified: Sat, 08 Dec 2018 11:54:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; 386

```console
$ docker pull haproxy@sha256:e14bc87f3bb49793923822838d724e9e1c9d7526ec4f1124d8de7735179911b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27863125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d5c91841ec9b033c5a13bbf2ef5588d2e74ab28fb7eb4260e31a0f153e85f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 12:34:30 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 12:34:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 12:34:30 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 12:35:06 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 12:35:06 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:35:07 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:35:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:35:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a954269d5a3ac4a5d9bf04f460ea725bda27df04ae15888ba6c1a4f653f3eeac`  
		Last Modified: Sat, 08 Dec 2018 12:42:43 GMT  
		Size: 4.7 MB (4735947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650fa9c94e5d91b2e5f7cb9c7e7f3e1866725966f59749592931d6e69746c6e1`  
		Last Modified: Sat, 08 Dec 2018 12:42:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; ppc64le

```console
$ docker pull haproxy@sha256:522a3886d246e894da6345f4f49739c66c073ebcda805538b2fc9253c25e4a96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27422777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb179651dab95d84b4ae56a34a3feca0673d3764baa8c24f14ca8af7eac5325`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:30:44 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 10:30:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 10:30:45 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 10:32:00 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:32:01 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:32:01 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:32:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:32:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f118b5be601d9925a296e743f454150451bd0b323e058d03efe28a467549617`  
		Last Modified: Sat, 08 Dec 2018 10:46:23 GMT  
		Size: 4.7 MB (4681660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c419d3c9114506447525903fd9af2a778da7e2562d6d328239f8c902b6006`  
		Last Modified: Sat, 08 Dec 2018 10:46:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6` - linux; s390x

```console
$ docker pull haproxy@sha256:bbcd02067dcddc47bc58faf5163773c40e8f4553e94a6825291e1b3295d556fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27142866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d794c654722b57c59a1a4c13b68bad27a5b52a738b0e87e81c335aeb94286d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:30:32 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 13:30:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 13:30:33 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 13:31:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:31:18 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:31:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:31:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:31:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75afb97a09c1d5fa407a681459a732726e08460fb1dfa339fc746b528d213d49`  
		Last Modified: Sat, 08 Dec 2018 13:35:36 GMT  
		Size: 4.8 MB (4807750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bd727e5bf9a974cd0458c07c587a8a26e153f827f376507175d844a2d7f507`  
		Last Modified: Sat, 08 Dec 2018 13:35:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14`

```console
$ docker pull haproxy@sha256:d595366a4231f0b321aa1447f00c4b889c061a70bfafecb06d9d578aba5cf6fd
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

### `haproxy:1.6.14` - linux; amd64

```console
$ docker pull haproxy@sha256:9e86da76e87370a40df608d7cf21113a7d4a2d45b8bf28ddf47b37ea8878f63f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27439338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e02edf5e5277aa6ee35e744e3547831b8b1fcc29cc0b99cc334f0a856087dc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:26:38 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 01:26:39 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 01:26:39 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 01:27:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:27:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:27:24 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:27:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:27:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3ab087fa8fdfa783d1f5da7280fb013fbb5e53a341bcaae5d1c2431742ae1e`  
		Last Modified: Sat, 08 Dec 2018 01:39:20 GMT  
		Size: 5.0 MB (4952658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702b8ac4edb8f8e87f8158f8eba8271ee62ad68f929415141ebc88b26453fdd6`  
		Last Modified: Sat, 08 Dec 2018 01:39:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:da5a0df013cb384ac568ce73db25dab98958d9a8ed39c0c955971e6095447c3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25627981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95709ffad4d76ac70ff33a4f1a1524411ea3aa50e723bae385784432da3e782b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:51:33 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 09:51:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 09:51:34 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 09:52:16 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:52:17 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:52:17 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 09:52:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:52:18 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e752ed1ead628fbe0009eb4fef1ca3a860ae41fb860b3040935a9715f0810c`  
		Last Modified: Sat, 08 Dec 2018 09:54:38 GMT  
		Size: 4.5 MB (4464571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16e209b23d6eeb58a3dd03249c1d2dd2a7d1de15cf6d7fa1f8cf17ff4d5df5e`  
		Last Modified: Sat, 08 Dec 2018 09:54:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:364fb9a591126f3b50809c443e754098255e22c791d0194bc0034b9971264557
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23612488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857b4bc468aaff156beb2d854a9c661d704f877df142b1eb9fd2408211c05634`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:09:01 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 13:09:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 13:09:01 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 13:09:37 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:09:37 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:09:38 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:09:39 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b8da020c1377b5a3ab3453617330968e361bd40aef9df51a8770a5e96878e9`  
		Last Modified: Sat, 08 Dec 2018 13:12:04 GMT  
		Size: 4.3 MB (4342026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570a7a030a33a0b79a7e65c44d53fe90f1bdbb473d7b04ef5a4cd2b82d99be5a`  
		Last Modified: Sat, 08 Dec 2018 13:12:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:a3f38e0fab76ba17199016d6ff2270f9d0830f8e8a2c90213d1cd8a58ec17ace
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24827544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104b90a9a1bd76e5a3eb4083d54ab23165a70074797154053fce8d9cd17f371f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 11:42:21 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 11:42:22 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 11:42:23 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 11:44:45 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 11:44:46 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:44:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:44:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:44:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5b2f68fa8f5dcf2fe3a12a0c24872edb5149ec011e8caf4208b99c1df9b590`  
		Last Modified: Sat, 08 Dec 2018 11:54:16 GMT  
		Size: 4.5 MB (4495833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb815a79df1f79d650bf8b0916d5fdb65b6807d56d0e6bee8a20fb62e6fa2a20`  
		Last Modified: Sat, 08 Dec 2018 11:54:14 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; 386

```console
$ docker pull haproxy@sha256:e14bc87f3bb49793923822838d724e9e1c9d7526ec4f1124d8de7735179911b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27863125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d5c91841ec9b033c5a13bbf2ef5588d2e74ab28fb7eb4260e31a0f153e85f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 12:34:30 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 12:34:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 12:34:30 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 12:35:06 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 12:35:06 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:35:07 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:35:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:35:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a954269d5a3ac4a5d9bf04f460ea725bda27df04ae15888ba6c1a4f653f3eeac`  
		Last Modified: Sat, 08 Dec 2018 12:42:43 GMT  
		Size: 4.7 MB (4735947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650fa9c94e5d91b2e5f7cb9c7e7f3e1866725966f59749592931d6e69746c6e1`  
		Last Modified: Sat, 08 Dec 2018 12:42:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; ppc64le

```console
$ docker pull haproxy@sha256:522a3886d246e894da6345f4f49739c66c073ebcda805538b2fc9253c25e4a96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27422777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cb179651dab95d84b4ae56a34a3feca0673d3764baa8c24f14ca8af7eac5325`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:30:44 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 10:30:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 10:30:45 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 10:32:00 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:32:01 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:32:01 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:32:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:32:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f118b5be601d9925a296e743f454150451bd0b323e058d03efe28a467549617`  
		Last Modified: Sat, 08 Dec 2018 10:46:23 GMT  
		Size: 4.7 MB (4681660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c419d3c9114506447525903fd9af2a778da7e2562d6d328239f8c902b6006`  
		Last Modified: Sat, 08 Dec 2018 10:46:21 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14` - linux; s390x

```console
$ docker pull haproxy@sha256:bbcd02067dcddc47bc58faf5163773c40e8f4553e94a6825291e1b3295d556fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27142866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d794c654722b57c59a1a4c13b68bad27a5b52a738b0e87e81c335aeb94286d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:30:32 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 13:30:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 13:30:33 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 13:31:18 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl1.0-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:31:18 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:31:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:31:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:31:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75afb97a09c1d5fa407a681459a732726e08460fb1dfa339fc746b528d213d49`  
		Last Modified: Sat, 08 Dec 2018 13:35:36 GMT  
		Size: 4.8 MB (4807750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bd727e5bf9a974cd0458c07c587a8a26e153f827f376507175d844a2d7f507`  
		Last Modified: Sat, 08 Dec 2018 13:35:35 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6.14-alpine`

```console
$ docker pull haproxy@sha256:3c43f95832241044a0a2d54d1e19e9c71539625b3b85f71db8bba3302859d2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.6.14-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:e395f01a8a2887e68cd61fa4a13ca2b30607845868bd3134701f76e35f9d2f10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7802251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d038f54446d5ac134c0664486626b697dec53248b7267c8580fad18688a109`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:27:57 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 01:27:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 01:27:58 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 01:28:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:28:29 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:28:29 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:28:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:28:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dfa9d18ace90507da37ed431d1660b21b49074891fd4f284dbe1f77527fb30`  
		Last Modified: Sat, 08 Dec 2018 01:40:18 GMT  
		Size: 5.6 MB (5594917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c353a83ac0821ca9be8c9bab03a6cdf1fb4070af343e51bb250ec4e83dca62`  
		Last Modified: Sat, 08 Dec 2018 01:40:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:9c6e0a73a94380948d5820d0923cd0bd908779833a12797724a976395f13abbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7252501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048135f49df0e4e5d27a841e3a78953613108cac83c6708cddbd7ee7befe951d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 08:54:14 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 08:54:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 08:54:15 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 08:54:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 08:54:32 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 08:54:32 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 08:54:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 08:54:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9928e410cab171711075e2f7bfa92009e60cd5f6859fe6f44ff53d3d01b818e8`  
		Last Modified: Sat, 08 Dec 2018 08:56:13 GMT  
		Size: 5.1 MB (5105470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc8b3740993d58194932ce1bcb6d3b7798c090b0b22e4434ecadf3e540cd83`  
		Last Modified: Sat, 08 Dec 2018 08:56:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:1c20dc7af68a33c5d8d795be782299d950554df995278766c96fe9d11a05517f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7244359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c393c77713a1c1bf6e2a436b348938d771a9b0ec2bbd8fe5fe98c238875ab485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 11:45:24 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 11:45:25 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 11:45:26 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 11:46:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 11:46:21 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:46:23 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:46:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:46:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6374b07f458144ead10b4a60b918428befe9fbff6c72b412669a3212a22ce429`  
		Last Modified: Sat, 08 Dec 2018 11:54:46 GMT  
		Size: 5.1 MB (5144019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b50c9618b5c9cf5c60ed7fcd8929611dd69ee766c68a439ced0cc090ab803d8`  
		Last Modified: Sat, 08 Dec 2018 11:54:43 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:b2ccc5ce467e74838230effac062b3f3c7a1757b506bebd25d03429955daf697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718d2aa10cbcef0dec60e94d856aaac7a5c43adc07b43dc9d081ba999a8a8b14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 12:35:29 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 12:35:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 12:35:30 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 12:35:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 12:35:57 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:35:57 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:35:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db0bee512be2cf3d887d9fc8fb7dabaa5b2bdc15469c079008bf3dbb1503518`  
		Last Modified: Sat, 08 Dec 2018 12:43:16 GMT  
		Size: 5.3 MB (5341224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d6364c153784821e335a9a901175aeb36684b2fd465ae7ccb60d7fab6434af`  
		Last Modified: Sat, 08 Dec 2018 12:43:15 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:59e50522d94b20be30c4e997d120f56f7e6526548e3ccd74bdbd4f52771f789b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8675ac922f2d43b393c5c1386c5ca956c7263b6b09da213454d69726818790`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 10:32:28 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 10:32:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 10:32:30 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 10:32:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 10:32:51 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:32:52 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:32:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:32:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303939fba20c74f26d925c15f0462bced0e92b4134e83089cd650fc35ae408d6`  
		Last Modified: Sat, 08 Dec 2018 10:47:37 GMT  
		Size: 5.3 MB (5291925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62b1c49a0e3269ad12163c7ab567190a537304986ed2ad4cf30da48c4045f9f`  
		Last Modified: Sat, 08 Dec 2018 10:47:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6.14-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:372a79654ab5afd5a317d93429da5af685536f9303c1a3a251bba9e9935b787a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7589681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c005212d076eefb152ac2c518602bc3dfc5a27633c511a1fd3b145e49a7746`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 13:31:32 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 13:31:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 13:31:33 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 13:31:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 13:31:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:31:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:31:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:31:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626be35bc4c09ba826438e73b0674629e835de0facf18ec497fbf935afcb2d97`  
		Last Modified: Sat, 08 Dec 2018 13:35:50 GMT  
		Size: 5.3 MB (5281356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e8058ba78e1f57c234e016c8c3573da40fc5945396a1756f41dfc5de32c02e`  
		Last Modified: Sat, 08 Dec 2018 13:35:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.6-alpine`

```console
$ docker pull haproxy@sha256:3c43f95832241044a0a2d54d1e19e9c71539625b3b85f71db8bba3302859d2c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.6-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:e395f01a8a2887e68cd61fa4a13ca2b30607845868bd3134701f76e35f9d2f10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7802251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d038f54446d5ac134c0664486626b697dec53248b7267c8580fad18688a109`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:27:57 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 01:27:58 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 01:27:58 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 01:28:29 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:28:29 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:28:29 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:28:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:28:30 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dfa9d18ace90507da37ed431d1660b21b49074891fd4f284dbe1f77527fb30`  
		Last Modified: Sat, 08 Dec 2018 01:40:18 GMT  
		Size: 5.6 MB (5594917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c353a83ac0821ca9be8c9bab03a6cdf1fb4070af343e51bb250ec4e83dca62`  
		Last Modified: Sat, 08 Dec 2018 01:40:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:9c6e0a73a94380948d5820d0923cd0bd908779833a12797724a976395f13abbc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7252501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048135f49df0e4e5d27a841e3a78953613108cac83c6708cddbd7ee7befe951d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 08:54:14 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 08:54:14 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 08:54:15 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 08:54:31 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 08:54:32 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 08:54:32 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 08:54:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 08:54:33 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9928e410cab171711075e2f7bfa92009e60cd5f6859fe6f44ff53d3d01b818e8`  
		Last Modified: Sat, 08 Dec 2018 08:56:13 GMT  
		Size: 5.1 MB (5105470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bc8b3740993d58194932ce1bcb6d3b7798c090b0b22e4434ecadf3e540cd83`  
		Last Modified: Sat, 08 Dec 2018 08:56:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:1c20dc7af68a33c5d8d795be782299d950554df995278766c96fe9d11a05517f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7244359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c393c77713a1c1bf6e2a436b348938d771a9b0ec2bbd8fe5fe98c238875ab485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 11:45:24 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 11:45:25 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 11:45:26 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 11:46:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 11:46:21 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:46:23 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:46:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:46:25 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6374b07f458144ead10b4a60b918428befe9fbff6c72b412669a3212a22ce429`  
		Last Modified: Sat, 08 Dec 2018 11:54:46 GMT  
		Size: 5.1 MB (5144019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b50c9618b5c9cf5c60ed7fcd8929611dd69ee766c68a439ced0cc090ab803d8`  
		Last Modified: Sat, 08 Dec 2018 11:54:43 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:b2ccc5ce467e74838230effac062b3f3c7a1757b506bebd25d03429955daf697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7613262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718d2aa10cbcef0dec60e94d856aaac7a5c43adc07b43dc9d081ba999a8a8b14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 12:35:29 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 12:35:30 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 12:35:30 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 12:35:56 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 12:35:57 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:35:57 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:35:57 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db0bee512be2cf3d887d9fc8fb7dabaa5b2bdc15469c079008bf3dbb1503518`  
		Last Modified: Sat, 08 Dec 2018 12:43:16 GMT  
		Size: 5.3 MB (5341224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d6364c153784821e335a9a901175aeb36684b2fd465ae7ccb60d7fab6434af`  
		Last Modified: Sat, 08 Dec 2018 12:43:15 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:59e50522d94b20be30c4e997d120f56f7e6526548e3ccd74bdbd4f52771f789b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7487731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8675ac922f2d43b393c5c1386c5ca956c7263b6b09da213454d69726818790`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 10:32:28 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 10:32:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 10:32:30 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 10:32:50 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 10:32:51 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:32:52 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:32:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:32:54 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303939fba20c74f26d925c15f0462bced0e92b4134e83089cd650fc35ae408d6`  
		Last Modified: Sat, 08 Dec 2018 10:47:37 GMT  
		Size: 5.3 MB (5291925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62b1c49a0e3269ad12163c7ab567190a537304986ed2ad4cf30da48c4045f9f`  
		Last Modified: Sat, 08 Dec 2018 10:47:35 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.6-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:372a79654ab5afd5a317d93429da5af685536f9303c1a3a251bba9e9935b787a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7589681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c005212d076eefb152ac2c518602bc3dfc5a27633c511a1fd3b145e49a7746`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 13:31:32 GMT
ENV HAPROXY_VERSION=1.6.14
# Sat, 08 Dec 2018 13:31:32 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.6/src/haproxy-1.6.14.tar.gz
# Sat, 08 Dec 2018 13:31:33 GMT
ENV HAPROXY_SHA256=bac949838a3a497221d1a9e937d60cba32156783a216146a524ce40675b6b828
# Sat, 08 Dec 2018 13:31:58 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 13:31:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:31:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:31:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:31:59 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626be35bc4c09ba826438e73b0674629e835de0facf18ec497fbf935afcb2d97`  
		Last Modified: Sat, 08 Dec 2018 13:35:50 GMT  
		Size: 5.3 MB (5281356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e8058ba78e1f57c234e016c8c3573da40fc5945396a1756f41dfc5de32c02e`  
		Last Modified: Sat, 08 Dec 2018 13:35:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7`

```console
$ docker pull haproxy@sha256:eb2979b3dfa15db1c00c6501a9321cd03d5041e7ceb5ca51ae3f038b31cddd07
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

### `haproxy:1.7` - linux; amd64

```console
$ docker pull haproxy@sha256:79a0081fb8761093acae4a293c4c8c9157b805220c57059339cc6d6a8dc229d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27249252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b372d3c555eec47f5371411fbcad96f63cbaa85c73519489072e1165c3820c42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:23:12 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 01:23:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 01:23:12 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 01:24:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:24:14 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:24:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:24:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:24:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfbba89085f2aa862ab46c10ed8ae6c67effac681462e14ee99707f99a9a8ab`  
		Last Modified: Sat, 08 Dec 2018 01:37:30 GMT  
		Size: 4.8 MB (4762572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1a6b7b4bbd23ade44ee47eacecb60b7406405c59b0f2a7b318bd0b12adf392`  
		Last Modified: Sat, 08 Dec 2018 01:37:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:528f038ed3d454f167cb05cbda31fb30f7eb01cb856594d9afcf7c149a71b01b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25613646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cb191e377297bab1232bf34fd10975277d33595893dae30fda853bc94bf6e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:50:34 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 09:50:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 09:50:35 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 09:51:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:51:18 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:51:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 09:51:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:51:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a4c4edd4d46fd4127aa05f835050fe35529331844603f04628495d348a1f6f`  
		Last Modified: Sat, 08 Dec 2018 09:54:23 GMT  
		Size: 4.5 MB (4450235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e49efd4150d332dd71387f7adf6469038a93c4068a7591ff496258aafd17eb`  
		Last Modified: Sat, 08 Dec 2018 09:54:22 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:226d9ede76d35bc07955dffc11ff37934cca2098dc7c7dd92a23133c0b821457
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23597581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e2723795aeac1e58c49573c81df73f0320dfb8912d7c8dde1bf3924b5b3ac3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:08:01 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 13:08:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 13:08:02 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 13:08:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:08:43 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:08:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:08:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:08:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab96f91e6b12db06cac1afd03e7d3b2ea3f008b63848c878a4eb142c1ae9521`  
		Last Modified: Sat, 08 Dec 2018 13:11:44 GMT  
		Size: 4.3 MB (4327119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459504ac4c5267dc4f77109a8f21356d8bb4c66b6b0f8a4d991c82585c7a8887`  
		Last Modified: Sat, 08 Dec 2018 13:11:43 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:ed77c1a89dacc7b9fbbcd491f2a7de9c0d9da5826db65ad6acda5d1986dba015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24779629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f995eb70aba482796f4d89e17b1da19c1e4910b8e89eb1d9896061ecfc47e836`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 11:38:32 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 11:38:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 11:38:37 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 11:40:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 11:40:59 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:41:01 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:41:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d23741ae47c165ea3d739195e8568a82d521899f286e045f45cad7e1995a3c1`  
		Last Modified: Sat, 08 Dec 2018 11:53:18 GMT  
		Size: 4.4 MB (4447917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e68fd14b9e4d7d5e6c0d4b73b14bbdca8abd3382a85025095242e44ec94d2e`  
		Last Modified: Sat, 08 Dec 2018 11:53:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; 386

```console
$ docker pull haproxy@sha256:8ab061ecbc10bc65b88d0dd7b3deb40409fd75ef71ba3016578078f727fcd01d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27845169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd7a88847f98befa2129b95a39db344fd042b077e1873125e6b72c73ee7e1b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 12:32:45 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 12:32:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 12:32:45 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 12:33:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 12:33:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:33:24 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:33:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:33:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec2ca130d5256a7abb8ddd45b18c0d0cd57cc16f4152ad678c51b384795e353`  
		Last Modified: Sat, 08 Dec 2018 12:41:32 GMT  
		Size: 4.7 MB (4717991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6118319584648039b7c1192b4f5565a02a98507d0ce9a92c6415c0f306c1885`  
		Last Modified: Sat, 08 Dec 2018 12:41:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; ppc64le

```console
$ docker pull haproxy@sha256:6ae8d6f0eb633593181d0c959516ff885511d4d8c487262fe5f3cc34de40d763
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27207265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038b3871b5beeddd2640643f234d05fc96b3320668147bc995c573761f59fdec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:27:00 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 10:27:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 10:27:02 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 10:28:45 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:28:46 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:28:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:28:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:28:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f8f0a2bf8c1824eb8cbe966bad4c2cd206e6173112d29086eaf52938d2cf42`  
		Last Modified: Sat, 08 Dec 2018 10:43:53 GMT  
		Size: 4.5 MB (4466149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4ff7f92141225fcee252d88b961d7446d01fc19452ce8071b3738bb4d461d3`  
		Last Modified: Sat, 08 Dec 2018 10:43:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7` - linux; s390x

```console
$ docker pull haproxy@sha256:e7086c21c32b8176d40e0416f62f5978f16e09a15c2ef5788c91268ec47d6006
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26932956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e49c3d996d4481b22d30fd7df997f8469ab4455acd4f115b061316cb55aa61`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:28:37 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 13:28:37 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 13:28:37 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 13:29:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:29:33 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:29:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:29:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:29:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5890d38528328709408e7862c9ab6605e17ebcff65dd82998066e4ee6bbe3`  
		Last Modified: Sat, 08 Dec 2018 13:35:09 GMT  
		Size: 4.6 MB (4597839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee7a8f561331cae907cf109b8a0926f4b803a9caf2585f054fcaf57593aac4`  
		Last Modified: Sat, 08 Dec 2018 13:35:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11`

```console
$ docker pull haproxy@sha256:eb2979b3dfa15db1c00c6501a9321cd03d5041e7ceb5ca51ae3f038b31cddd07
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

### `haproxy:1.7.11` - linux; amd64

```console
$ docker pull haproxy@sha256:79a0081fb8761093acae4a293c4c8c9157b805220c57059339cc6d6a8dc229d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27249252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b372d3c555eec47f5371411fbcad96f63cbaa85c73519489072e1165c3820c42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 01:23:12 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 01:23:12 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 01:23:12 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 01:24:14 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 01:24:14 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:24:15 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:24:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:24:15 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfbba89085f2aa862ab46c10ed8ae6c67effac681462e14ee99707f99a9a8ab`  
		Last Modified: Sat, 08 Dec 2018 01:37:30 GMT  
		Size: 4.8 MB (4762572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1a6b7b4bbd23ade44ee47eacecb60b7406405c59b0f2a7b318bd0b12adf392`  
		Last Modified: Sat, 08 Dec 2018 01:37:29 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v5

```console
$ docker pull haproxy@sha256:528f038ed3d454f167cb05cbda31fb30f7eb01cb856594d9afcf7c149a71b01b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25613646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cb191e377297bab1232bf34fd10975277d33595893dae30fda853bc94bf6e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:58:31 GMT
ADD file:571b664b51137693f1c3889a3ace44345b13edf68179c54841bcf69428925fb3 in / 
# Fri, 16 Nov 2018 09:58:32 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 09:50:34 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 09:50:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 09:50:35 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 09:51:17 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 09:51:18 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 09:51:19 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 09:51:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 09:51:19 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:409ea78f2caa9a970b3fae4f7a23caf60fe64dd022e2b3841944e6d82da81c03`  
		Last Modified: Fri, 16 Nov 2018 10:13:25 GMT  
		Size: 21.2 MB (21163007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a4c4edd4d46fd4127aa05f835050fe35529331844603f04628495d348a1f6f`  
		Last Modified: Sat, 08 Dec 2018 09:54:23 GMT  
		Size: 4.5 MB (4450235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e49efd4150d332dd71387f7adf6469038a93c4068a7591ff496258aafd17eb`  
		Last Modified: Sat, 08 Dec 2018 09:54:22 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm variant v7

```console
$ docker pull haproxy@sha256:226d9ede76d35bc07955dffc11ff37934cca2098dc7c7dd92a23133c0b821457
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23597581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e2723795aeac1e58c49573c81df73f0320dfb8912d7c8dde1bf3924b5b3ac3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:08:01 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 13:08:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 13:08:02 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 13:08:43 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:08:43 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:08:44 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:08:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:08:46 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab96f91e6b12db06cac1afd03e7d3b2ea3f008b63848c878a4eb142c1ae9521`  
		Last Modified: Sat, 08 Dec 2018 13:11:44 GMT  
		Size: 4.3 MB (4327119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459504ac4c5267dc4f77109a8f21356d8bb4c66b6b0f8a4d991c82585c7a8887`  
		Last Modified: Sat, 08 Dec 2018 13:11:43 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:ed77c1a89dacc7b9fbbcd491f2a7de9c0d9da5826db65ad6acda5d1986dba015
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24779629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f995eb70aba482796f4d89e17b1da19c1e4910b8e89eb1d9896061ecfc47e836`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 11:38:32 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 11:38:34 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 11:38:37 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 11:40:58 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 11:40:59 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:41:01 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:41:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:41:03 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d23741ae47c165ea3d739195e8568a82d521899f286e045f45cad7e1995a3c1`  
		Last Modified: Sat, 08 Dec 2018 11:53:18 GMT  
		Size: 4.4 MB (4447917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e68fd14b9e4d7d5e6c0d4b73b14bbdca8abd3382a85025095242e44ec94d2e`  
		Last Modified: Sat, 08 Dec 2018 11:53:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; 386

```console
$ docker pull haproxy@sha256:8ab061ecbc10bc65b88d0dd7b3deb40409fd75ef71ba3016578078f727fcd01d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27845169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd7a88847f98befa2129b95a39db344fd042b077e1873125e6b72c73ee7e1b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:37:07 GMT
ADD file:e79bc0c504d8730048ef2ccae209fa270a0e3785a4029777112a397261336279 in / 
# Fri, 16 Nov 2018 12:37:08 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 12:32:45 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 12:32:45 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 12:32:45 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 12:33:23 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 12:33:23 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:33:24 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:33:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:33:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:137021d63f76f1d8c7a7bcdd4c59e1a909b9d440414a2623b215f830920128e4`  
		Last Modified: Thu, 15 Nov 2018 01:55:24 GMT  
		Size: 23.1 MB (23126776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec2ca130d5256a7abb8ddd45b18c0d0cd57cc16f4152ad678c51b384795e353`  
		Last Modified: Sat, 08 Dec 2018 12:41:32 GMT  
		Size: 4.7 MB (4717991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6118319584648039b7c1192b4f5565a02a98507d0ce9a92c6415c0f306c1885`  
		Last Modified: Sat, 08 Dec 2018 12:41:32 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; ppc64le

```console
$ docker pull haproxy@sha256:6ae8d6f0eb633593181d0c959516ff885511d4d8c487262fe5f3cc34de40d763
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27207265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038b3871b5beeddd2640643f234d05fc96b3320668147bc995c573761f59fdec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 09:32:15 GMT
ADD file:204503423ebb04acd333e18949cb54bcaed457b7cc62e0b3ea379a6e8f2954d3 in / 
# Fri, 16 Nov 2018 09:32:22 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 10:27:00 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 10:27:01 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 10:27:02 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 10:28:45 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 10:28:46 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:28:48 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:28:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:28:51 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:5f1fd7593ff8841061926e767f73d9fd35ddfcbbe3858208ebf5ff0a20a961d0`  
		Last Modified: Fri, 16 Nov 2018 09:42:42 GMT  
		Size: 22.7 MB (22740714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f8f0a2bf8c1824eb8cbe966bad4c2cd206e6173112d29086eaf52938d2cf42`  
		Last Modified: Sat, 08 Dec 2018 10:43:53 GMT  
		Size: 4.5 MB (4466149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4ff7f92141225fcee252d88b961d7446d01fc19452ce8071b3738bb4d461d3`  
		Last Modified: Sat, 08 Dec 2018 10:43:51 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11` - linux; s390x

```console
$ docker pull haproxy@sha256:e7086c21c32b8176d40e0416f62f5978f16e09a15c2ef5788c91268ec47d6006
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26932956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7e49c3d996d4481b22d30fd7df997f8469ab4455acd4f115b061316cb55aa61`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Fri, 16 Nov 2018 12:44:25 GMT
ADD file:9efa49fd8473756c5464573f90c63a692161d897b042f07c4ef674e90de81064 in / 
# Fri, 16 Nov 2018 12:44:27 GMT
CMD ["bash"]
# Sat, 08 Dec 2018 13:28:37 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 13:28:37 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 13:28:37 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 13:29:33 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Sat, 08 Dec 2018 13:29:33 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:29:33 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:29:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:29:34 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:db7aa0264595016e37963ab9cf4e6fbfa7b19d99cb39b16bbb561a02b7b459d2`  
		Last Modified: Thu, 15 Nov 2018 02:03:05 GMT  
		Size: 22.3 MB (22334714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a5890d38528328709408e7862c9ab6605e17ebcff65dd82998066e4ee6bbe3`  
		Last Modified: Sat, 08 Dec 2018 13:35:09 GMT  
		Size: 4.6 MB (4597839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee7a8f561331cae907cf109b8a0926f4b803a9caf2585f054fcaf57593aac4`  
		Last Modified: Sat, 08 Dec 2018 13:35:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7.11-alpine`

```console
$ docker pull haproxy@sha256:712430275b32a184e24fa7247283db6cf8eb4e780dcb99f55e0ac63ae2171edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.7.11-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:70cf1ab15e84d777eebc3923e1507683e75637c9baffe7183329b72e46a000a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8278237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75342e0760e5657772b8ae6db06a55e2ed0e4dbc33baeb46aa00698c49ecd503`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:25:29 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 01:25:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 01:25:30 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 01:25:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:26:15 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:26:16 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:26:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:26:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2b8c0a179d2a1d5d1696b7f6a8fdd81dc4962aa82c54bf25cf78e3ada77e96`  
		Last Modified: Sat, 08 Dec 2018 01:38:21 GMT  
		Size: 6.1 MB (6070903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abddbd22634c9471fe62118eca71ed0ab2dc96c645d0b4de0504da2cf444dc8`  
		Last Modified: Sat, 08 Dec 2018 01:38:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:1a7755999c73a96690b94f45f37dca14240036eab463ba1080108f9c27bb2544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7729049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2a9e67c1b169f0f93a5934273a3b7bfef6dd3bedb5fd0e48069bf3303b59ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 08:53:47 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 08:53:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 08:53:48 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 08:54:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 08:54:04 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 08:54:05 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 08:54:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 08:54:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a736bb2ee2474ee61ff56d7a36112f472ac1db3c791211824ec77c137b4921`  
		Last Modified: Sat, 08 Dec 2018 08:56:02 GMT  
		Size: 5.6 MB (5582019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6149bc64914fd3155edfeb6bc16c34d316c40374ea14ed385aefdee704a7a35`  
		Last Modified: Sat, 08 Dec 2018 08:56:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:04aacf326dd503cc3e0ae0413e2d527ac0ade8f2af5be19709442851870a6b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7711930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d63504fbfea4e045b45cc0ff0d0cd859b6ce877699a0f31bab35844c0080e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 11:41:19 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 11:41:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 11:41:20 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 11:42:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 11:42:04 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:42:05 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:42:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:42:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a920d5def74802fd371830816208470e51332a3866276f3a428e3b758754cf`  
		Last Modified: Sat, 08 Dec 2018 11:53:47 GMT  
		Size: 5.6 MB (5611589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e25e0cb4247f0d4e7b372f692f3bd68ab9a4e0f01496b7b9390e29ef3882449`  
		Last Modified: Sat, 08 Dec 2018 11:53:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:f6eda39b65d4946e9c5a1f1798f4d9a040c1b5c55ff95b3f45c3ccc4d5fc8d3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8080674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46497748a06ecf3d3630b70eddb8c5b132577960a603087817b8471462960dc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 12:33:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 12:33:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 12:33:44 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 12:34:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 12:34:13 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:34:13 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:34:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:34:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f4b55933306cf0866b4e101672179bbfd5af9fb9a8ca70ac113faf1ba4a74`  
		Last Modified: Sat, 08 Dec 2018 12:42:05 GMT  
		Size: 5.8 MB (5808637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9a775e856212e13945dee9c9c6e556d80efcc394677636d49e9aa3e71f6411`  
		Last Modified: Sat, 08 Dec 2018 12:42:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:fbba9afc6cf72402e7bbbcebd6439d239ab4538c78f671374ceda4297e6dfca5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcb6828b63f1fe69c4e8b648087aaa9e329fad55fb7f7ea86133a8b1e8d2d3f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 10:29:25 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 10:29:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 10:29:27 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 10:29:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 10:29:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:29:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:30:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:30:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68795c7d7214a8514523539112e1a69a3b6bb40d5f2d7a63e293a1764f7b0446`  
		Last Modified: Sat, 08 Dec 2018 10:45:05 GMT  
		Size: 5.8 MB (5768176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b697997d2b0c386e9085587933f41a554018d34885b3ec0b2bff0a4c878e76`  
		Last Modified: Sat, 08 Dec 2018 10:45:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7.11-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:4a8e59191a78e600be33f3b9394dede69f088ea2af8d366218c1e186e68cd231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8076253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b814b76fb19e9b3725bb6ac669fd64a4906361452dde0d167804104e82fcca86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 13:29:48 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 13:29:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 13:29:48 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 13:30:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 13:30:20 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:30:21 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:30:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:30:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eec291605eb1e7d319555ed7f333ec371f506d5e1187c5ada52db1dab529c2`  
		Last Modified: Sat, 08 Dec 2018 13:35:23 GMT  
		Size: 5.8 MB (5767929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7d666a8ddfeff7d9276e8d2bb0cdba10abf8d07254fa9dfa34127b4faa6ad`  
		Last Modified: Sat, 08 Dec 2018 13:35:21 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.7-alpine`

```console
$ docker pull haproxy@sha256:712430275b32a184e24fa7247283db6cf8eb4e780dcb99f55e0ac63ae2171edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `haproxy:1.7-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:70cf1ab15e84d777eebc3923e1507683e75637c9baffe7183329b72e46a000a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8278237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75342e0760e5657772b8ae6db06a55e2ed0e4dbc33baeb46aa00698c49ecd503`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 01:25:29 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 01:25:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 01:25:30 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 01:25:55 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 01:26:15 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 01:26:16 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 01:26:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 01:26:16 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2b8c0a179d2a1d5d1696b7f6a8fdd81dc4962aa82c54bf25cf78e3ada77e96`  
		Last Modified: Sat, 08 Dec 2018 01:38:21 GMT  
		Size: 6.1 MB (6070903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abddbd22634c9471fe62118eca71ed0ab2dc96c645d0b4de0504da2cf444dc8`  
		Last Modified: Sat, 08 Dec 2018 01:38:19 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm variant v6

```console
$ docker pull haproxy@sha256:1a7755999c73a96690b94f45f37dca14240036eab463ba1080108f9c27bb2544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7729049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2a9e67c1b169f0f93a5934273a3b7bfef6dd3bedb5fd0e48069bf3303b59ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 08:53:47 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 08:53:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 08:53:48 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 08:54:04 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 08:54:04 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 08:54:05 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 08:54:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 08:54:06 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a736bb2ee2474ee61ff56d7a36112f472ac1db3c791211824ec77c137b4921`  
		Last Modified: Sat, 08 Dec 2018 08:56:02 GMT  
		Size: 5.6 MB (5582019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6149bc64914fd3155edfeb6bc16c34d316c40374ea14ed385aefdee704a7a35`  
		Last Modified: Sat, 08 Dec 2018 08:56:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; arm64 variant v8

```console
$ docker pull haproxy@sha256:04aacf326dd503cc3e0ae0413e2d527ac0ade8f2af5be19709442851870a6b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.7 MB (7711930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d63504fbfea4e045b45cc0ff0d0cd859b6ce877699a0f31bab35844c0080e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 11:41:19 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 11:41:19 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 11:41:20 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 11:42:03 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 11:42:04 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 11:42:05 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 11:42:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 11:42:07 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a920d5def74802fd371830816208470e51332a3866276f3a428e3b758754cf`  
		Last Modified: Sat, 08 Dec 2018 11:53:47 GMT  
		Size: 5.6 MB (5611589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e25e0cb4247f0d4e7b372f692f3bd68ab9a4e0f01496b7b9390e29ef3882449`  
		Last Modified: Sat, 08 Dec 2018 11:53:45 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; 386

```console
$ docker pull haproxy@sha256:f6eda39b65d4946e9c5a1f1798f4d9a040c1b5c55ff95b3f45c3ccc4d5fc8d3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8080674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46497748a06ecf3d3630b70eddb8c5b132577960a603087817b8471462960dc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 12:33:44 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 12:33:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 12:33:44 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 12:34:12 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 12:34:13 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 12:34:13 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 12:34:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 12:34:13 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f4b55933306cf0866b4e101672179bbfd5af9fb9a8ca70ac113faf1ba4a74`  
		Last Modified: Sat, 08 Dec 2018 12:42:05 GMT  
		Size: 5.8 MB (5808637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9a775e856212e13945dee9c9c6e556d80efcc394677636d49e9aa3e71f6411`  
		Last Modified: Sat, 08 Dec 2018 12:42:04 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; ppc64le

```console
$ docker pull haproxy@sha256:fbba9afc6cf72402e7bbbcebd6439d239ab4538c78f671374ceda4297e6dfca5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7963982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcb6828b63f1fe69c4e8b648087aaa9e329fad55fb7f7ea86133a8b1e8d2d3f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 10:29:25 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 10:29:26 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 10:29:27 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 10:29:57 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 10:29:58 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 10:29:59 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 10:30:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 10:30:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68795c7d7214a8514523539112e1a69a3b6bb40d5f2d7a63e293a1764f7b0446`  
		Last Modified: Sat, 08 Dec 2018 10:45:05 GMT  
		Size: 5.8 MB (5768176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b697997d2b0c386e9085587933f41a554018d34885b3ec0b2bff0a4c878e76`  
		Last Modified: Sat, 08 Dec 2018 10:45:03 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `haproxy:1.7-alpine` - linux; s390x

```console
$ docker pull haproxy@sha256:4a8e59191a78e600be33f3b9394dede69f088ea2af8d366218c1e186e68cd231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.1 MB (8076253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b814b76fb19e9b3725bb6ac669fd64a4906361452dde0d167804104e82fcca86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Sat, 08 Dec 2018 13:29:48 GMT
ENV HAPROXY_VERSION=1.7.11
# Sat, 08 Dec 2018 13:29:48 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.7/src/haproxy-1.7.11.tar.gz
# Sat, 08 Dec 2018 13:29:48 GMT
ENV HAPROXY_SHA256=d564b8e9429d1e8e13cb648bf4694926b472e36da1079df946bb732927b232ea
# Sat, 08 Dec 2018 13:30:20 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Sat, 08 Dec 2018 13:30:20 GMT
STOPSIGNAL [SIGUSR1]
# Sat, 08 Dec 2018 13:30:21 GMT
COPY file:63974b52f7ab0d89c675fa9fa9504d7da0b1fc1b78ff1c7486097821178a12ae in / 
# Sat, 08 Dec 2018 13:30:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 08 Dec 2018 13:30:21 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eec291605eb1e7d319555ed7f333ec371f506d5e1187c5ada52db1dab529c2`  
		Last Modified: Sat, 08 Dec 2018 13:35:23 GMT  
		Size: 5.8 MB (5767929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c7d666a8ddfeff7d9276e8d2bb0cdba10abf8d07254fa9dfa34127b4faa6ad`  
		Last Modified: Sat, 08 Dec 2018 13:35:21 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8`

```console
$ docker pull haproxy@sha256:c5183360ae0936fa358272a506d5ebb93dc6c2d6a3f27e4f14efc9422b1adf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8` - linux; amd64

```console
$ docker pull haproxy@sha256:f5dfee8026b9d10d0f95acfd0fd42769575b50ec1a8da880a494161d9628d639
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28087356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6ba9c5df5a2bc8e63ab43f36e3786eee2a2aa7db59a9028999a9c4851a064b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:22:24 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 19 Dec 2018 18:22:24 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:22:24 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:22:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:22:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e976541d4dd9864af8d168da4b68fde0d2255cfd486a6f685ea2f6b7f2eb3e`  
		Last Modified: Wed, 19 Dec 2018 18:23:43 GMT  
		Size: 5.6 MB (5600699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665c9264e545cbe885be39fa639cdb455c061915f71644ff5df1489250658d0b`  
		Last Modified: Wed, 19 Dec 2018 18:23:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.15`

```console
$ docker pull haproxy@sha256:c5183360ae0936fa358272a506d5ebb93dc6c2d6a3f27e4f14efc9422b1adf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8.15` - linux; amd64

```console
$ docker pull haproxy@sha256:f5dfee8026b9d10d0f95acfd0fd42769575b50ec1a8da880a494161d9628d639
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28087356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6ba9c5df5a2bc8e63ab43f36e3786eee2a2aa7db59a9028999a9c4851a064b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:22:24 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 19 Dec 2018 18:22:24 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:22:24 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:22:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:22:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e976541d4dd9864af8d168da4b68fde0d2255cfd486a6f685ea2f6b7f2eb3e`  
		Last Modified: Wed, 19 Dec 2018 18:23:43 GMT  
		Size: 5.6 MB (5600699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665c9264e545cbe885be39fa639cdb455c061915f71644ff5df1489250658d0b`  
		Last Modified: Wed, 19 Dec 2018 18:23:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8.15-alpine`

```console
$ docker pull haproxy@sha256:2ac27295923e99f9af7b6079beb4e79b69387a95297571da23c08f66e0856b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8.15-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:f9f3973a8bb84491fb5d37aca6f1f73c63ef21690ced105a6be66fb5d784b5c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9191487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689d2839aed1c11f8356b2c7e221b572d0ee90cec46a2e667a38159b8f64dec6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:23:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:23:01 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:23:01 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:23:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:23:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafbd8db70fe64f0699c1a705f79fea72fd1479ed564133817224a9bbd2c16f8`  
		Last Modified: Wed, 19 Dec 2018 18:23:49 GMT  
		Size: 7.0 MB (6984176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cccaf2f468d19ba1b462991f1cafb6936cc219a501d4e4b3a25942463bca31`  
		Last Modified: Wed, 19 Dec 2018 18:23:48 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.8-alpine`

```console
$ docker pull haproxy@sha256:2ac27295923e99f9af7b6079beb4e79b69387a95297571da23c08f66e0856b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.8-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:f9f3973a8bb84491fb5d37aca6f1f73c63ef21690ced105a6be66fb5d784b5c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9191487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689d2839aed1c11f8356b2c7e221b572d0ee90cec46a2e667a38159b8f64dec6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:23:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:23:01 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:23:01 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:23:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:23:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafbd8db70fe64f0699c1a705f79fea72fd1479ed564133817224a9bbd2c16f8`  
		Last Modified: Wed, 19 Dec 2018 18:23:49 GMT  
		Size: 7.0 MB (6984176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cccaf2f468d19ba1b462991f1cafb6936cc219a501d4e4b3a25942463bca31`  
		Last Modified: Wed, 19 Dec 2018 18:23:48 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9-dev11`

```console
$ docker pull haproxy@sha256:8fdde204234b6f940824597118297e5f7454eba5be922b78530bba2dc75d2f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.9-dev11` - linux; amd64

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

## `haproxy:1.9-dev11-alpine`

```console
$ docker pull haproxy@sha256:63f0d27bd3eed869b1562c05eda77778bd2fe2bf4ecedf50d0275b8acec9f6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.9-dev11-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:725efe577783b38a497f03ab20ef40343299deb4d17b5a4368a1c801e656b78c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10258680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767c729119871dd9d2a951d0cd57d37a7b986acab711f1d6ccdf2ae633d703a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_VERSION=1.9-dev11
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev11.tar.gz
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_SHA256=c80f06d57b54da8dc897419af0bd7a2ff4e90c43a257e71c87f970f910997dd8
# Wed, 19 Dec 2018 18:21:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:21:39 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:21:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:21:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:21:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7995b57058fabd9eb11415a914581036dd1927f3010b0efd172b0c42974474f5`  
		Last Modified: Wed, 19 Dec 2018 18:23:37 GMT  
		Size: 8.1 MB (8051369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0b64d3249296d24e207e3954d1c7965fed1bec4a741df254e484cd6d937d5e`  
		Last Modified: Wed, 19 Dec 2018 18:23:36 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1.9-rc`

```console
$ docker pull haproxy@sha256:8fdde204234b6f940824597118297e5f7454eba5be922b78530bba2dc75d2f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.9-rc` - linux; amd64

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

## `haproxy:1.9-rc-alpine`

```console
$ docker pull haproxy@sha256:63f0d27bd3eed869b1562c05eda77778bd2fe2bf4ecedf50d0275b8acec9f6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1.9-rc-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:725efe577783b38a497f03ab20ef40343299deb4d17b5a4368a1c801e656b78c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10258680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767c729119871dd9d2a951d0cd57d37a7b986acab711f1d6ccdf2ae633d703a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_VERSION=1.9-dev11
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev11.tar.gz
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_SHA256=c80f06d57b54da8dc897419af0bd7a2ff4e90c43a257e71c87f970f910997dd8
# Wed, 19 Dec 2018 18:21:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:21:39 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:21:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:21:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:21:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7995b57058fabd9eb11415a914581036dd1927f3010b0efd172b0c42974474f5`  
		Last Modified: Wed, 19 Dec 2018 18:23:37 GMT  
		Size: 8.1 MB (8051369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0b64d3249296d24e207e3954d1c7965fed1bec4a741df254e484cd6d937d5e`  
		Last Modified: Wed, 19 Dec 2018 18:23:36 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:1-alpine`

```console
$ docker pull haproxy@sha256:2ac27295923e99f9af7b6079beb4e79b69387a95297571da23c08f66e0856b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:1-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:f9f3973a8bb84491fb5d37aca6f1f73c63ef21690ced105a6be66fb5d784b5c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9191487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689d2839aed1c11f8356b2c7e221b572d0ee90cec46a2e667a38159b8f64dec6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:23:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:23:01 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:23:01 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:23:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:23:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafbd8db70fe64f0699c1a705f79fea72fd1479ed564133817224a9bbd2c16f8`  
		Last Modified: Wed, 19 Dec 2018 18:23:49 GMT  
		Size: 7.0 MB (6984176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cccaf2f468d19ba1b462991f1cafb6936cc219a501d4e4b3a25942463bca31`  
		Last Modified: Wed, 19 Dec 2018 18:23:48 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:alpine`

```console
$ docker pull haproxy@sha256:2ac27295923e99f9af7b6079beb4e79b69387a95297571da23c08f66e0856b80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:f9f3973a8bb84491fb5d37aca6f1f73c63ef21690ced105a6be66fb5d784b5c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9191487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689d2839aed1c11f8356b2c7e221b572d0ee90cec46a2e667a38159b8f64dec6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:22:29 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:23:01 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:23:01 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:23:01 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:23:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:23:01 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafbd8db70fe64f0699c1a705f79fea72fd1479ed564133817224a9bbd2c16f8`  
		Last Modified: Wed, 19 Dec 2018 18:23:49 GMT  
		Size: 7.0 MB (6984176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cccaf2f468d19ba1b462991f1cafb6936cc219a501d4e4b3a25942463bca31`  
		Last Modified: Wed, 19 Dec 2018 18:23:48 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `haproxy:latest`

```console
$ docker pull haproxy@sha256:c5183360ae0936fa358272a506d5ebb93dc6c2d6a3f27e4f14efc9422b1adf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:latest` - linux; amd64

```console
$ docker pull haproxy@sha256:f5dfee8026b9d10d0f95acfd0fd42769575b50ec1a8da880a494161d9628d639
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28087356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee6ba9c5df5a2bc8e63ab43f36e3786eee2a2aa7db59a9028999a9c4851a064b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_VERSION=1.8.15
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.8/src/haproxy-1.8.15.tar.gz
# Wed, 19 Dec 2018 18:21:44 GMT
ENV HAPROXY_SHA256=7113862f1146d7de8b8e64f45826ab3533c7f7f7b7767e24c08f7c762202a032
# Wed, 19 Dec 2018 18:22:24 GMT
RUN set -x 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		gcc 		libc6-dev 		liblua5.3-dev 		libpcre3-dev 		libssl-dev 		make 		wget 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(nproc)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& apt-mark auto '.*' > /dev/null 	&& { [ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; } 	&& find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
# Wed, 19 Dec 2018 18:22:24 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:22:24 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:22:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:22:24 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e976541d4dd9864af8d168da4b68fde0d2255cfd486a6f685ea2f6b7f2eb3e`  
		Last Modified: Wed, 19 Dec 2018 18:23:43 GMT  
		Size: 5.6 MB (5600699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665c9264e545cbe885be39fa639cdb455c061915f71644ff5df1489250658d0b`  
		Last Modified: Wed, 19 Dec 2018 18:23:42 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `haproxy:rc-alpine`

```console
$ docker pull haproxy@sha256:63f0d27bd3eed869b1562c05eda77778bd2fe2bf4ecedf50d0275b8acec9f6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `haproxy:rc-alpine` - linux; amd64

```console
$ docker pull haproxy@sha256:725efe577783b38a497f03ab20ef40343299deb4d17b5a4368a1c801e656b78c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.3 MB (10258680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767c729119871dd9d2a951d0cd57d37a7b986acab711f1d6ccdf2ae633d703a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["haproxy","-f","\/usr\/local\/etc\/haproxy\/haproxy.cfg"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_VERSION=1.9-dev11
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_URL=https://www.haproxy.org/download/1.9/src/devel/haproxy-1.9-dev11.tar.gz
# Wed, 19 Dec 2018 18:20:59 GMT
ENV HAPROXY_SHA256=c80f06d57b54da8dc897419af0bd7a2ff4e90c43a257e71c87f970f910997dd8
# Wed, 19 Dec 2018 18:21:39 GMT
RUN set -x 		&& apk add --no-cache --virtual .build-deps 		ca-certificates 		gcc 		libc-dev 		linux-headers 		lua5.3-dev 		make 		openssl 		openssl-dev 		pcre-dev 		readline-dev 		tar 		zlib-dev 		&& wget -O haproxy.tar.gz "$HAPROXY_URL" 	&& echo "$HAPROXY_SHA256 *haproxy.tar.gz" | sha256sum -c 	&& mkdir -p /usr/src/haproxy 	&& tar -xzf haproxy.tar.gz -C /usr/src/haproxy --strip-components=1 	&& rm haproxy.tar.gz 		&& makeOpts=' 		TARGET=linux2628 		USE_LUA=1 LUA_INC=/usr/include/lua5.3 LUA_LIB=/usr/lib/lua5.3 		USE_OPENSSL=1 		USE_PCRE=1 PCREDIR= 		USE_ZLIB=1 	' 	&& make -C /usr/src/haproxy -j "$(getconf _NPROCESSORS_ONLN)" all $makeOpts 	&& make -C /usr/src/haproxy install-bin $makeOpts 		&& mkdir -p /usr/local/etc/haproxy 	&& cp -R /usr/src/haproxy/examples/errorfiles /usr/local/etc/haproxy/errors 	&& rm -rf /usr/src/haproxy 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .haproxy-rundeps $runDeps 	&& apk del .build-deps
# Wed, 19 Dec 2018 18:21:39 GMT
STOPSIGNAL SIGUSR1
# Wed, 19 Dec 2018 18:21:39 GMT
COPY file:a7db5ef8dbcd831ff68d6ff2fb45bc340539ad6d7a58d54323fd7399d1520910 in / 
# Wed, 19 Dec 2018 18:21:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Dec 2018 18:21:40 GMT
CMD ["haproxy" "-f" "/usr/local/etc/haproxy/haproxy.cfg"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7995b57058fabd9eb11415a914581036dd1927f3010b0efd172b0c42974474f5`  
		Last Modified: Wed, 19 Dec 2018 18:23:37 GMT  
		Size: 8.1 MB (8051369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0b64d3249296d24e207e3954d1c7965fed1bec4a741df254e484cd6d937d5e`  
		Last Modified: Wed, 19 Dec 2018 18:23:36 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
