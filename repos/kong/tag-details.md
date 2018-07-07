<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.11`](#kong011)
-	[`kong:0.11.2`](#kong0112)
-	[`kong:0.11.2-alpine`](#kong0112-alpine)
-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.12`](#kong012)
-	[`kong:0.12.3`](#kong0123)
-	[`kong:0.12.3-alpine`](#kong0123-alpine)
-	[`kong:0.12.3-centos`](#kong0123-centos)
-	[`kong:0.12-alpine`](#kong012-alpine)
-	[`kong:0.12-centos`](#kong012-centos)
-	[`kong:0.13`](#kong013)
-	[`kong:0.13.1`](#kong0131)
-	[`kong:0.13.1-alpine`](#kong0131-alpine)
-	[`kong:0.13.1-centos`](#kong0131-centos)
-	[`kong:0.13-centos`](#kong013-centos)
-	[`kong:0.14.0`](#kong0140)
-	[`kong:0.14.0-alpine`](#kong0140-alpine)
-	[`kong:0.14.0-centos`](#kong0140-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:da6edb583fb14e09d274da45c951412705e9869f7c62f54a0c20e339f2851655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:a9f5ab711be62acffd794e5c4e59effb379df274f95f7be8a51627c68ffde585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123916825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f7a70e8900327645716adf2af272b0888046cbec45c7902b3b01fb6cbcd95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:23:33 GMT
ENV KONG_VERSION=0.11.2
# Thu, 21 Jun 2018 19:23:57 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:23:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:23:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:23:58 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:23:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5534bdb1193d77a816c2502c91d60888cd23eddb1fd7b31480bf3b69d3af2`  
		Last Modified: Thu, 21 Jun 2018 19:29:33 GMT  
		Size: 49.2 MB (49223134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e98e7d365f17bcaf46616fbb9108a7519141371349c6ab623ba278ecd3893a7`  
		Last Modified: Thu, 21 Jun 2018 19:29:20 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:da6edb583fb14e09d274da45c951412705e9869f7c62f54a0c20e339f2851655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:a9f5ab711be62acffd794e5c4e59effb379df274f95f7be8a51627c68ffde585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123916825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f7a70e8900327645716adf2af272b0888046cbec45c7902b3b01fb6cbcd95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:23:33 GMT
ENV KONG_VERSION=0.11.2
# Thu, 21 Jun 2018 19:23:57 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:23:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:23:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:23:58 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:23:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5534bdb1193d77a816c2502c91d60888cd23eddb1fd7b31480bf3b69d3af2`  
		Last Modified: Thu, 21 Jun 2018 19:29:33 GMT  
		Size: 49.2 MB (49223134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e98e7d365f17bcaf46616fbb9108a7519141371349c6ab623ba278ecd3893a7`  
		Last Modified: Thu, 21 Jun 2018 19:29:20 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:f0044182d9953540cb3968b0ec839b0e74a1a6b2a3623ae31f394ac09ee0237f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:53bc2357e26e45311b232e477ba493ec65b3d9c0b2adf7c250b014700aeb8dd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30095609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82133185b789d4be9356af7b2c7c762e522f109934287dd6abeb992f2ba25ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:48:06 GMT
ENV KONG_VERSION=0.11.2
# Sat, 07 Jul 2018 03:48:06 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Sat, 07 Jul 2018 03:48:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:48:19 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:48:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:48:20 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:48:20 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:48:20 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a2989a355cf140bfb1ee87913f658148a72e635adc7f4425e9c52cc6038b7b`  
		Last Modified: Sat, 07 Jul 2018 03:53:08 GMT  
		Size: 28.1 MB (28080627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54f3a3b10859f92a2110a887e77dcd9718378384488868ec518f70dafed514a`  
		Last Modified: Sat, 07 Jul 2018 03:52:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:f0044182d9953540cb3968b0ec839b0e74a1a6b2a3623ae31f394ac09ee0237f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:53bc2357e26e45311b232e477ba493ec65b3d9c0b2adf7c250b014700aeb8dd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30095609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82133185b789d4be9356af7b2c7c762e522f109934287dd6abeb992f2ba25ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:48:06 GMT
ENV KONG_VERSION=0.11.2
# Sat, 07 Jul 2018 03:48:06 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Sat, 07 Jul 2018 03:48:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:48:19 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:48:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:48:20 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:48:20 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:48:20 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a2989a355cf140bfb1ee87913f658148a72e635adc7f4425e9c52cc6038b7b`  
		Last Modified: Sat, 07 Jul 2018 03:53:08 GMT  
		Size: 28.1 MB (28080627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54f3a3b10859f92a2110a887e77dcd9718378384488868ec518f70dafed514a`  
		Last Modified: Sat, 07 Jul 2018 03:52:34 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:b79b32fca1beac848f7736cd2d5831c8cde6ee268798ab6241d7c292c2f61385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4c9c8ca78cb3095fb0d4f5c2942ac530c1006005102dab74b66cecc6856de35f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77daf0df187b6440b8e9e009e21f9c6656a2341b146f7af01981673206f1703b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_VERSION=0.12.3
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Sat, 07 Jul 2018 03:47:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:47:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:47:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:47:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:47:33 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:47:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5fffad003cf19b11297672dc917fabc2e5504d04c13a49e261bd595be7cbf4`  
		Last Modified: Sat, 07 Jul 2018 03:51:55 GMT  
		Size: 28.8 MB (28840800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56224e70faba376218950d02cec3ab6291a29d47907c7d9930c664fddd75347`  
		Last Modified: Sat, 07 Jul 2018 03:51:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:b79b32fca1beac848f7736cd2d5831c8cde6ee268798ab6241d7c292c2f61385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4c9c8ca78cb3095fb0d4f5c2942ac530c1006005102dab74b66cecc6856de35f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77daf0df187b6440b8e9e009e21f9c6656a2341b146f7af01981673206f1703b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_VERSION=0.12.3
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Sat, 07 Jul 2018 03:47:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:47:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:47:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:47:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:47:33 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:47:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5fffad003cf19b11297672dc917fabc2e5504d04c13a49e261bd595be7cbf4`  
		Last Modified: Sat, 07 Jul 2018 03:51:55 GMT  
		Size: 28.8 MB (28840800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56224e70faba376218950d02cec3ab6291a29d47907c7d9930c664fddd75347`  
		Last Modified: Sat, 07 Jul 2018 03:51:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:714c56c48c52861fad6958704ab921106a3a666aec911d16f323cc4bc505ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:fc41fe2a579497fc417aa648bf8a9aaa84539a1f50d29d86064b7902a7fd00a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33425939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ab3b43d6b330548dc0c2b4ead89f69b5b1884265a1577247bff0dd98290fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_VERSION=0.13.1
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Sat, 07 Jul 2018 03:46:35 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:46:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:46:41 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:46:41 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:46:41 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe9a992739faaaacd7348ee281bfbde4bd67bbd11837eb73cc2cc447a88859`  
		Last Modified: Sat, 07 Jul 2018 03:50:49 GMT  
		Size: 31.4 MB (31410958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea6286977835b4168df3b2c23fdfc0c4b7bea46967af1ca600cac535aee3c9`  
		Last Modified: Sat, 07 Jul 2018 03:50:37 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:714c56c48c52861fad6958704ab921106a3a666aec911d16f323cc4bc505ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:fc41fe2a579497fc417aa648bf8a9aaa84539a1f50d29d86064b7902a7fd00a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33425939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ab3b43d6b330548dc0c2b4ead89f69b5b1884265a1577247bff0dd98290fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_VERSION=0.13.1
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Sat, 07 Jul 2018 03:46:35 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:46:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:46:41 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:46:41 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:46:41 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe9a992739faaaacd7348ee281bfbde4bd67bbd11837eb73cc2cc447a88859`  
		Last Modified: Sat, 07 Jul 2018 03:50:49 GMT  
		Size: 31.4 MB (31410958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea6286977835b4168df3b2c23fdfc0c4b7bea46967af1ca600cac535aee3c9`  
		Last Modified: Sat, 07 Jul 2018 03:50:37 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:714c56c48c52861fad6958704ab921106a3a666aec911d16f323cc4bc505ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:fc41fe2a579497fc417aa648bf8a9aaa84539a1f50d29d86064b7902a7fd00a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33425939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ab3b43d6b330548dc0c2b4ead89f69b5b1884265a1577247bff0dd98290fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_VERSION=0.13.1
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Sat, 07 Jul 2018 03:46:35 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:46:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:46:41 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:46:41 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:46:41 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe9a992739faaaacd7348ee281bfbde4bd67bbd11837eb73cc2cc447a88859`  
		Last Modified: Sat, 07 Jul 2018 03:50:49 GMT  
		Size: 31.4 MB (31410958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea6286977835b4168df3b2c23fdfc0c4b7bea46967af1ca600cac535aee3c9`  
		Last Modified: Sat, 07 Jul 2018 03:50:37 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:a2643850300ee0d08506586c92d5bce4553c4e1bb5637def681db15648b67890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:a2fe43994e067353de141838e8a1cf9506067d1204c0f3175a2feb2d09793c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128328238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c14e5af01f4d3c5484948aaa431568b36424b4f3caae3892ae2297ea9e107f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:37 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:22:00 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:01 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:01 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:01 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:02 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4c0db2cc588fbc10cf81da9992801a9e196ea1b67d63196653b687026b199`  
		Last Modified: Thu, 21 Jun 2018 19:26:35 GMT  
		Size: 53.6 MB (53634546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a000ac16d9add8097e0d38da1403b23e50580cddc127cf4724e4e031d7df392a`  
		Last Modified: Thu, 21 Jun 2018 19:26:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:a2643850300ee0d08506586c92d5bce4553c4e1bb5637def681db15648b67890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:a2fe43994e067353de141838e8a1cf9506067d1204c0f3175a2feb2d09793c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128328238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c14e5af01f4d3c5484948aaa431568b36424b4f3caae3892ae2297ea9e107f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:37 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:22:00 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:01 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:01 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:01 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:02 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4c0db2cc588fbc10cf81da9992801a9e196ea1b67d63196653b687026b199`  
		Last Modified: Thu, 21 Jun 2018 19:26:35 GMT  
		Size: 53.6 MB (53634546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a000ac16d9add8097e0d38da1403b23e50580cddc127cf4724e4e031d7df392a`  
		Last Modified: Thu, 21 Jun 2018 19:26:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.0`

```console
$ docker pull kong@sha256:e5b1cfb2107d2a4018b1364536fdd4af7d2755962a2c53ddd966b27c7680b962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.0` - linux; amd64

```console
$ docker pull kong@sha256:effa9a68317ff2ab0e384fbccaae75213e89cd7909a054a819de90349351942a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33564000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0423fe5663fcb29c83f3bff1ee0064ab200a4b7d1e38e4dd7b2122a6caa2bc00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:44:49 GMT
ENV KONG_VERSION=0.14.0
# Sat, 07 Jul 2018 03:44:50 GMT
ENV KONG_SHA256=968b355f6e46218dee31497f65fd708cf219b096c1c54bff7da00efb0c2db520
# Sat, 07 Jul 2018 03:45:02 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:45:03 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:45:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:45:04 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:45:04 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:45:04 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9db5a53243089eee0256ac935d0d650755f05b17e419d6e6e0fe2f09ef452b`  
		Last Modified: Sat, 07 Jul 2018 03:48:57 GMT  
		Size: 31.5 MB (31549028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdea2e533866fe120db80ba618785b29d0655593230e8e5d882c6e6d7ccd35b`  
		Last Modified: Sat, 07 Jul 2018 03:48:45 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.0-alpine`

```console
$ docker pull kong@sha256:e5b1cfb2107d2a4018b1364536fdd4af7d2755962a2c53ddd966b27c7680b962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:effa9a68317ff2ab0e384fbccaae75213e89cd7909a054a819de90349351942a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33564000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0423fe5663fcb29c83f3bff1ee0064ab200a4b7d1e38e4dd7b2122a6caa2bc00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:44:49 GMT
ENV KONG_VERSION=0.14.0
# Sat, 07 Jul 2018 03:44:50 GMT
ENV KONG_SHA256=968b355f6e46218dee31497f65fd708cf219b096c1c54bff7da00efb0c2db520
# Sat, 07 Jul 2018 03:45:02 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:45:03 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:45:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:45:04 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:45:04 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:45:04 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9db5a53243089eee0256ac935d0d650755f05b17e419d6e6e0fe2f09ef452b`  
		Last Modified: Sat, 07 Jul 2018 03:48:57 GMT  
		Size: 31.5 MB (31549028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdea2e533866fe120db80ba618785b29d0655593230e8e5d882c6e6d7ccd35b`  
		Last Modified: Sat, 07 Jul 2018 03:48:45 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.0-centos`

```console
$ docker pull kong@sha256:1208a794c1bbbda492319f8c4db4b522e2c302f9d1d4dc608a4ac4e286dabcf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:3abb0cd45d7c7fc98ac49e6ef60dd49acc137656e78cff27eac8700e3d5d8b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128617831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b834078d298ceedd808d382ee0c3287db7e1fab357f26c2fe1168a13dfc52e6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:45:26 GMT
ENV KONG_VERSION=0.14.0
# Sat, 07 Jul 2018 03:45:52 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Sat, 07 Jul 2018 03:45:53 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:45:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:45:53 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:45:53 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:45:54 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af4e3490d251b14425a4d2315f885e647796e1c11c8f69a9ce2d830b93d614b`  
		Last Modified: Sat, 07 Jul 2018 03:50:19 GMT  
		Size: 53.9 MB (53924151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3794e50004e2103da81bd3e3e14eb4ec2278995f68895492cd03ed4e05ae65a6`  
		Last Modified: Sat, 07 Jul 2018 03:50:02 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:e5b1cfb2107d2a4018b1364536fdd4af7d2755962a2c53ddd966b27c7680b962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:effa9a68317ff2ab0e384fbccaae75213e89cd7909a054a819de90349351942a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33564000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0423fe5663fcb29c83f3bff1ee0064ab200a4b7d1e38e4dd7b2122a6caa2bc00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:44:49 GMT
ENV KONG_VERSION=0.14.0
# Sat, 07 Jul 2018 03:44:50 GMT
ENV KONG_SHA256=968b355f6e46218dee31497f65fd708cf219b096c1c54bff7da00efb0c2db520
# Sat, 07 Jul 2018 03:45:02 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:45:03 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:45:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:45:04 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:45:04 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:45:04 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9db5a53243089eee0256ac935d0d650755f05b17e419d6e6e0fe2f09ef452b`  
		Last Modified: Sat, 07 Jul 2018 03:48:57 GMT  
		Size: 31.5 MB (31549028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdea2e533866fe120db80ba618785b29d0655593230e8e5d882c6e6d7ccd35b`  
		Last Modified: Sat, 07 Jul 2018 03:48:45 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
