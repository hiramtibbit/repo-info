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
-	[`kong:0.14`](#kong014)
-	[`kong:0.14.1`](#kong0141)
-	[`kong:0.14.1-alpine`](#kong0141-alpine)
-	[`kong:0.14.1-centos`](#kong0141-centos)
-	[`kong:0.14-centos`](#kong014-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:36ab584fcefafecb572dd2ca29afb83814522a8edefc64cf6515c6a83007b4b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:74a4258bffec540e4d886f92f04bb9aab7fed9db5b3231b37abd272be8ebf070
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123923140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d4c3e1733b79f43d3199fad9ca35da6f77afb614a87151d8fd4c9bd7e172ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Mon, 06 Aug 2018 20:03:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 06 Aug 2018 20:07:15 GMT
ENV KONG_VERSION=0.11.2
# Mon, 06 Aug 2018 20:07:39 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:07:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:07:40 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:07:41 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:07:59 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4c1f9581d53c97e1d32d5bc7f102b52e75fb98d9261680e568e8c97e770486`  
		Last Modified: Mon, 06 Aug 2018 20:12:23 GMT  
		Size: 49.2 MB (49228134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c87c943b26817dd9323cefa014b70d2f6341ee1a8bd115fadca5bc726bc810a`  
		Last Modified: Mon, 06 Aug 2018 20:12:08 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:36ab584fcefafecb572dd2ca29afb83814522a8edefc64cf6515c6a83007b4b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:74a4258bffec540e4d886f92f04bb9aab7fed9db5b3231b37abd272be8ebf070
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123923140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d4c3e1733b79f43d3199fad9ca35da6f77afb614a87151d8fd4c9bd7e172ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Mon, 06 Aug 2018 20:03:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 06 Aug 2018 20:07:15 GMT
ENV KONG_VERSION=0.11.2
# Mon, 06 Aug 2018 20:07:39 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:07:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:07:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:07:40 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:07:41 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:07:59 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de4c1f9581d53c97e1d32d5bc7f102b52e75fb98d9261680e568e8c97e770486`  
		Last Modified: Mon, 06 Aug 2018 20:12:23 GMT  
		Size: 49.2 MB (49228134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c87c943b26817dd9323cefa014b70d2f6341ee1a8bd115fadca5bc726bc810a`  
		Last Modified: Mon, 06 Aug 2018 20:12:08 GMT  
		Size: 325.0 B  
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
$ docker pull kong@sha256:c8f9805778cb158cf52b1512c3e31499d5475df916f0aa6e283b1667130ada94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:95f12eb397fab5f599a8be59ef31ebaf0f01921193ae4c14ececaaa9bacdbe48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125364190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3ee7aa1f3ee900f8f9ef49a30c5bdf09a9369b7624ce83e0970028cd5ec86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:40:38 GMT
ENV KONG_VERSION=0.12.3
# Tue, 11 Sep 2018 23:40:53 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:40:53 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:53 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:53 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:54 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d790183e5f78c176448109f9b68cac405bb3cb1e8c2206f3158d1324aaa471a4`  
		Last Modified: Tue, 11 Sep 2018 23:44:13 GMT  
		Size: 50.7 MB (50669186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7f51fb890743f0d86a326c99d71567c7753ebee2c19d641d78cce553ffc4ea`  
		Last Modified: Tue, 11 Sep 2018 23:44:05 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:c8f9805778cb158cf52b1512c3e31499d5475df916f0aa6e283b1667130ada94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:95f12eb397fab5f599a8be59ef31ebaf0f01921193ae4c14ececaaa9bacdbe48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125364190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3ee7aa1f3ee900f8f9ef49a30c5bdf09a9369b7624ce83e0970028cd5ec86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:40:38 GMT
ENV KONG_VERSION=0.12.3
# Tue, 11 Sep 2018 23:40:53 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:40:53 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:53 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:53 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:54 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d790183e5f78c176448109f9b68cac405bb3cb1e8c2206f3158d1324aaa471a4`  
		Last Modified: Tue, 11 Sep 2018 23:44:13 GMT  
		Size: 50.7 MB (50669186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7f51fb890743f0d86a326c99d71567c7753ebee2c19d641d78cce553ffc4ea`  
		Last Modified: Tue, 11 Sep 2018 23:44:05 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:d6751014f747020a98c9c4fa12a932ea64ab07114005a1a2ecfdbc6d40c653e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0cc0731f5caadf55d26807042d3124ffa46ae61452562e4b907713abc6994004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30877719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf4c17f6b911422db7862e9bf7014ae2c977f935824cecdf30deb4afa2c8428`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:40:24 GMT
ENV KONG_VERSION=0.12.3
# Tue, 11 Sep 2018 23:40:24 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Tue, 11 Sep 2018 23:40:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:40:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:31 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:31 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:31 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67d96ab19853cb38a358ee322337749495421f3bd9fc59f69445a1d31b20b6c`  
		Last Modified: Tue, 11 Sep 2018 23:43:51 GMT  
		Size: 28.9 MB (28860703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3279379cc6b609d2ee550c12419010f4b3ad301d486f7f0b73834295c20880ba`  
		Last Modified: Tue, 11 Sep 2018 23:43:44 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:c8f9805778cb158cf52b1512c3e31499d5475df916f0aa6e283b1667130ada94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:95f12eb397fab5f599a8be59ef31ebaf0f01921193ae4c14ececaaa9bacdbe48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125364190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3ee7aa1f3ee900f8f9ef49a30c5bdf09a9369b7624ce83e0970028cd5ec86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:40:38 GMT
ENV KONG_VERSION=0.12.3
# Tue, 11 Sep 2018 23:40:53 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:40:53 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:53 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:53 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:54 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d790183e5f78c176448109f9b68cac405bb3cb1e8c2206f3158d1324aaa471a4`  
		Last Modified: Tue, 11 Sep 2018 23:44:13 GMT  
		Size: 50.7 MB (50669186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7f51fb890743f0d86a326c99d71567c7753ebee2c19d641d78cce553ffc4ea`  
		Last Modified: Tue, 11 Sep 2018 23:44:05 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:d6751014f747020a98c9c4fa12a932ea64ab07114005a1a2ecfdbc6d40c653e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0cc0731f5caadf55d26807042d3124ffa46ae61452562e4b907713abc6994004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30877719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf4c17f6b911422db7862e9bf7014ae2c977f935824cecdf30deb4afa2c8428`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:40:24 GMT
ENV KONG_VERSION=0.12.3
# Tue, 11 Sep 2018 23:40:24 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Tue, 11 Sep 2018 23:40:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:40:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:31 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:31 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:31 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67d96ab19853cb38a358ee322337749495421f3bd9fc59f69445a1d31b20b6c`  
		Last Modified: Tue, 11 Sep 2018 23:43:51 GMT  
		Size: 28.9 MB (28860703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3279379cc6b609d2ee550c12419010f4b3ad301d486f7f0b73834295c20880ba`  
		Last Modified: Tue, 11 Sep 2018 23:43:44 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:c8f9805778cb158cf52b1512c3e31499d5475df916f0aa6e283b1667130ada94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:95f12eb397fab5f599a8be59ef31ebaf0f01921193ae4c14ececaaa9bacdbe48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125364190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c3ee7aa1f3ee900f8f9ef49a30c5bdf09a9369b7624ce83e0970028cd5ec86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:40:38 GMT
ENV KONG_VERSION=0.12.3
# Tue, 11 Sep 2018 23:40:53 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:40:53 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:53 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:53 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:54 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d790183e5f78c176448109f9b68cac405bb3cb1e8c2206f3158d1324aaa471a4`  
		Last Modified: Tue, 11 Sep 2018 23:44:13 GMT  
		Size: 50.7 MB (50669186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7f51fb890743f0d86a326c99d71567c7753ebee2c19d641d78cce553ffc4ea`  
		Last Modified: Tue, 11 Sep 2018 23:44:05 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:0da579dc4947dbf3cf87c436c88cc6584ae16f569eb1c4c67e737edb9b974879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:618f64aee01fd1430d69bdf7c4a92c642a993dd6b7bfd30f2ffafaa6976271c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33454605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa59ec12ab552543d1f2ed9265c6e9d1baf03c57f4797de80f01b10ca4769078`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:46 GMT
ENV KONG_VERSION=0.13.1
# Tue, 11 Sep 2018 23:39:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Tue, 11 Sep 2018 23:39:51 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:39:52 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c74ebd7209de23337157c90a0c6265e13047f6a9db8f62da59718d85b2849b9`  
		Last Modified: Tue, 11 Sep 2018 23:43:00 GMT  
		Size: 31.4 MB (31437589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549050c53fca47ba9a425a37a533b22946434d28f86425de1ae44b1a91c00152`  
		Last Modified: Tue, 11 Sep 2018 23:42:54 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:0da579dc4947dbf3cf87c436c88cc6584ae16f569eb1c4c67e737edb9b974879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:618f64aee01fd1430d69bdf7c4a92c642a993dd6b7bfd30f2ffafaa6976271c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33454605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa59ec12ab552543d1f2ed9265c6e9d1baf03c57f4797de80f01b10ca4769078`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:46 GMT
ENV KONG_VERSION=0.13.1
# Tue, 11 Sep 2018 23:39:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Tue, 11 Sep 2018 23:39:51 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:39:52 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c74ebd7209de23337157c90a0c6265e13047f6a9db8f62da59718d85b2849b9`  
		Last Modified: Tue, 11 Sep 2018 23:43:00 GMT  
		Size: 31.4 MB (31437589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549050c53fca47ba9a425a37a533b22946434d28f86425de1ae44b1a91c00152`  
		Last Modified: Tue, 11 Sep 2018 23:42:54 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:0da579dc4947dbf3cf87c436c88cc6584ae16f569eb1c4c67e737edb9b974879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:618f64aee01fd1430d69bdf7c4a92c642a993dd6b7bfd30f2ffafaa6976271c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33454605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa59ec12ab552543d1f2ed9265c6e9d1baf03c57f4797de80f01b10ca4769078`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:46 GMT
ENV KONG_VERSION=0.13.1
# Tue, 11 Sep 2018 23:39:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Tue, 11 Sep 2018 23:39:51 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:39:52 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:52 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:52 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c74ebd7209de23337157c90a0c6265e13047f6a9db8f62da59718d85b2849b9`  
		Last Modified: Tue, 11 Sep 2018 23:43:00 GMT  
		Size: 31.4 MB (31437589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549050c53fca47ba9a425a37a533b22946434d28f86425de1ae44b1a91c00152`  
		Last Modified: Tue, 11 Sep 2018 23:42:54 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:cfae48bc638a2872dece9f579b74a08c3109fba5cdff00496ef508bcfc0ac203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:9c36ff7be41dccddc89ac6f3e113e21170a498c582c7696aa1aecaf2934ab05a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128346902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed70eef28d2c81f01746ef558e0b82bcc80046f1b7d3af450a526c2e6a4bbfc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:59 GMT
ENV KONG_VERSION=0.13.1
# Tue, 11 Sep 2018 23:40:15 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:40:15 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:15 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:16 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:16 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3c3c1cda88315d97a6d3fe28ce3d7d133fb5035d4113bdea8fc89cc634ce2b`  
		Last Modified: Tue, 11 Sep 2018 23:43:31 GMT  
		Size: 53.7 MB (53651897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118c51a1791d96a780949ad88d6be74c93b09c8e93614ae7050f9cbca8181900`  
		Last Modified: Tue, 11 Sep 2018 23:43:20 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:cfae48bc638a2872dece9f579b74a08c3109fba5cdff00496ef508bcfc0ac203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:9c36ff7be41dccddc89ac6f3e113e21170a498c582c7696aa1aecaf2934ab05a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128346902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed70eef28d2c81f01746ef558e0b82bcc80046f1b7d3af450a526c2e6a4bbfc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:59 GMT
ENV KONG_VERSION=0.13.1
# Tue, 11 Sep 2018 23:40:15 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:40:15 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:40:15 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:40:16 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:40:16 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e3c3c1cda88315d97a6d3fe28ce3d7d133fb5035d4113bdea8fc89cc634ce2b`  
		Last Modified: Tue, 11 Sep 2018 23:43:31 GMT  
		Size: 53.7 MB (53651897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118c51a1791d96a780949ad88d6be74c93b09c8e93614ae7050f9cbca8181900`  
		Last Modified: Tue, 11 Sep 2018 23:43:20 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14`

```console
$ docker pull kong@sha256:eb294641b50cf7aaf97aa65598f6e9483624d621588517f9561e7bec921221e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14` - linux; amd64

```console
$ docker pull kong@sha256:07d3512f9f4bdf02d61c2b13567da9d00d09062b07dddb58a42682e107eab152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33590573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eb0d085fa67462d5fa39c8a676fd5a366b70006965c57cdf9fb0ac5839855e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:06 GMT
ENV KONG_VERSION=0.14.1
# Tue, 11 Sep 2018 23:39:06 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Tue, 11 Sep 2018 23:39:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:39:14 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:14 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:14 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb239b37ff746e3937f6bc48c273b04db2d12cdc0c64c4fa8d045f1b71aa3c`  
		Last Modified: Tue, 11 Sep 2018 23:41:54 GMT  
		Size: 31.6 MB (31573565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136565b6d830933aefb55c00511b081178352db552ad719c7ca62cda3c51a5fa`  
		Last Modified: Tue, 11 Sep 2018 23:41:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1`

```console
$ docker pull kong@sha256:eb294641b50cf7aaf97aa65598f6e9483624d621588517f9561e7bec921221e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1` - linux; amd64

```console
$ docker pull kong@sha256:07d3512f9f4bdf02d61c2b13567da9d00d09062b07dddb58a42682e107eab152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33590573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eb0d085fa67462d5fa39c8a676fd5a366b70006965c57cdf9fb0ac5839855e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:06 GMT
ENV KONG_VERSION=0.14.1
# Tue, 11 Sep 2018 23:39:06 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Tue, 11 Sep 2018 23:39:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:39:14 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:14 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:14 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb239b37ff746e3937f6bc48c273b04db2d12cdc0c64c4fa8d045f1b71aa3c`  
		Last Modified: Tue, 11 Sep 2018 23:41:54 GMT  
		Size: 31.6 MB (31573565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136565b6d830933aefb55c00511b081178352db552ad719c7ca62cda3c51a5fa`  
		Last Modified: Tue, 11 Sep 2018 23:41:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-alpine`

```console
$ docker pull kong@sha256:eb294641b50cf7aaf97aa65598f6e9483624d621588517f9561e7bec921221e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:07d3512f9f4bdf02d61c2b13567da9d00d09062b07dddb58a42682e107eab152
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33590573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65eb0d085fa67462d5fa39c8a676fd5a366b70006965c57cdf9fb0ac5839855e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:06 GMT
ENV KONG_VERSION=0.14.1
# Tue, 11 Sep 2018 23:39:06 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Tue, 11 Sep 2018 23:39:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:39:14 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:14 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:14 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb239b37ff746e3937f6bc48c273b04db2d12cdc0c64c4fa8d045f1b71aa3c`  
		Last Modified: Tue, 11 Sep 2018 23:41:54 GMT  
		Size: 31.6 MB (31573565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136565b6d830933aefb55c00511b081178352db552ad719c7ca62cda3c51a5fa`  
		Last Modified: Tue, 11 Sep 2018 23:41:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-centos`

```console
$ docker pull kong@sha256:1eecf568561f5b832e0a8686a6a2de2d06679475a4f9e134982670bd7454572d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:45d47dac6ebeb7b36f00f591e1d5153664aa44829aeeb0db25d090c02b74afe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128617990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c727896c6c5132bd9ec65d24100159c83ac7266c03ef09eccace8f920afd7f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:21 GMT
ENV KONG_VERSION=0.14.1
# Tue, 11 Sep 2018 23:39:37 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:39:37 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:38 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:38 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba00fe3ebc38601becbfb1dd9e93cc33e10d606be10a32625e12f0643e429636`  
		Last Modified: Tue, 11 Sep 2018 23:42:37 GMT  
		Size: 53.9 MB (53922995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbd5e6c2ee01ec13001c09e3ae74780feba9836f9cac0df8c3310ecf57b4d5`  
		Last Modified: Tue, 11 Sep 2018 23:42:25 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14-centos`

```console
$ docker pull kong@sha256:1eecf568561f5b832e0a8686a6a2de2d06679475a4f9e134982670bd7454572d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-centos` - linux; amd64

```console
$ docker pull kong@sha256:45d47dac6ebeb7b36f00f591e1d5153664aa44829aeeb0db25d090c02b74afe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128617990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c727896c6c5132bd9ec65d24100159c83ac7266c03ef09eccace8f920afd7f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Mon, 06 Aug 2018 19:21:47 GMT
ADD file:6340c690b08865d7eb84a36050a0ab0e8effc2b010a4ccb20b810153a97a9228 in / 
# Mon, 06 Aug 2018 19:21:47 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20180804
# Mon, 06 Aug 2018 19:21:48 GMT
CMD ["/bin/bash"]
# Tue, 11 Sep 2018 23:39:21 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:39:21 GMT
ENV KONG_VERSION=0.14.1
# Tue, 11 Sep 2018 23:39:37 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 11 Sep 2018 23:39:37 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:39:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:39:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:39:38 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:39:38 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba00fe3ebc38601becbfb1dd9e93cc33e10d606be10a32625e12f0643e429636`  
		Last Modified: Tue, 11 Sep 2018 23:42:37 GMT  
		Size: 53.9 MB (53922995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbd5e6c2ee01ec13001c09e3ae74780feba9836f9cac0df8c3310ecf57b4d5`  
		Last Modified: Tue, 11 Sep 2018 23:42:25 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:7663f791a32ba82713632d0d058ee90c671c1227e176213c2b0367d347a33e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:3694a1a8cbf4ecd63a94a601688c4fab9826dada2e71a0008b1b10b695d87878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33588648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d01475aa05df76a7ddbf9540ab034c4910ae782d006100c5241878d0c9380b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 22 Aug 2018 17:24:37 GMT
ENV KONG_VERSION=0.14.1
# Wed, 22 Aug 2018 17:24:38 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Wed, 22 Aug 2018 17:24:50 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 22 Aug 2018 17:24:50 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Wed, 22 Aug 2018 17:24:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Aug 2018 17:24:51 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 22 Aug 2018 17:24:51 GMT
STOPSIGNAL [SIGTERM]
# Wed, 22 Aug 2018 17:24:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d58a465fc1aeee376a141d583da24569ea4d9cdb365fd60536c8f2c3bd4a7b`  
		Last Modified: Wed, 22 Aug 2018 17:26:48 GMT  
		Size: 31.6 MB (31573678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ea073b984ed55a8ae611d1ad9c337ddb8ff1c029c5bc6d63ab50700d5507f2`  
		Last Modified: Wed, 22 Aug 2018 17:26:35 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
