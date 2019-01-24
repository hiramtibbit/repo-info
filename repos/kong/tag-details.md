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
-	[`kong:0.13-alpine`](#kong013-alpine)
-	[`kong:0.13-centos`](#kong013-centos)
-	[`kong:0.14`](#kong014)
-	[`kong:0.14.1`](#kong0141)
-	[`kong:0.14.1-alpine`](#kong0141-alpine)
-	[`kong:0.14.1-centos`](#kong0141-centos)
-	[`kong:0.14-alpine`](#kong014-alpine)
-	[`kong:0.14-centos`](#kong014-centos)
-	[`kong:0.15`](#kong015)
-	[`kong:0.15.0`](#kong0150)
-	[`kong:0.15.0-alpine`](#kong0150-alpine)
-	[`kong:0.15.0-centos`](#kong0150-centos)
-	[`kong:0.15-alpine`](#kong015-alpine)
-	[`kong:0.15-centos`](#kong015-centos)
-	[`kong:1.0`](#kong10)
-	[`kong:1.0.2`](#kong102)
-	[`kong:1.0.2-alpine`](#kong102-alpine)
-	[`kong:1.0.2-centos`](#kong102-centos)
-	[`kong:1.0-centos`](#kong10-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:91fb2412bd805081bf7eb18d344409809886d2fb5594b4701a0e2bc7fac70793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:c988d2d7c5a2ea47496d4c355ffbf32805e8cb246150efab255d0a9c107427f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124710149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c6a40f4e9c41ee8f1ca7bc7e2b71ce02a1ae6f28d56d499c3b15b137864ee2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:54:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 06 Dec 2018 00:54:54 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:54:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:54:55 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:54:56 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:54:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420b3039f6c7b594fecf1aac97ea36c93fde9e3192d28fede14148d4b7dcb464`  
		Last Modified: Thu, 06 Dec 2018 01:01:53 GMT  
		Size: 49.5 MB (49544296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf7f29d4169a7ce830cf19d2db08a026e1abb7f929de966c8252313a3268a6`  
		Last Modified: Thu, 06 Dec 2018 01:01:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:91fb2412bd805081bf7eb18d344409809886d2fb5594b4701a0e2bc7fac70793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:c988d2d7c5a2ea47496d4c355ffbf32805e8cb246150efab255d0a9c107427f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124710149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c6a40f4e9c41ee8f1ca7bc7e2b71ce02a1ae6f28d56d499c3b15b137864ee2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:54:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 06 Dec 2018 00:54:54 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:54:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:54:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:54:55 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:54:56 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:54:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420b3039f6c7b594fecf1aac97ea36c93fde9e3192d28fede14148d4b7dcb464`  
		Last Modified: Thu, 06 Dec 2018 01:01:53 GMT  
		Size: 49.5 MB (49544296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bf7f29d4169a7ce830cf19d2db08a026e1abb7f929de966c8252313a3268a6`  
		Last Modified: Thu, 06 Dec 2018 01:01:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:1a9a0622eac295c4454d773198699f7bed3a8752d9c04e362f72a281019a0ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0b92fbac6d4996623dbf2fb866f5f4d7c4bdf6ceb822c07f5488c5ecbf9f82b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30122467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe3edcc3df0aa5dc80518c12af74ac87a67185f769851f858719322beccf900`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:56:35 GMT
ENV KONG_VERSION=0.11.2
# Fri, 21 Dec 2018 04:56:35 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 21 Dec 2018 04:56:44 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:44 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:45 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:45 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa4647ffeebc0e0153dae148672e787531ae7158235bd10e9d010a65d8b2849`  
		Last Modified: Fri, 21 Dec 2018 04:59:20 GMT  
		Size: 28.1 MB (28105451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33da5004ad466e26ea69f5baad4f6774ce8a0e821ea933661a5758f46e94d9cd`  
		Last Modified: Fri, 21 Dec 2018 04:58:49 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:1a9a0622eac295c4454d773198699f7bed3a8752d9c04e362f72a281019a0ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0b92fbac6d4996623dbf2fb866f5f4d7c4bdf6ceb822c07f5488c5ecbf9f82b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30122467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe3edcc3df0aa5dc80518c12af74ac87a67185f769851f858719322beccf900`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:56:35 GMT
ENV KONG_VERSION=0.11.2
# Fri, 21 Dec 2018 04:56:35 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 21 Dec 2018 04:56:44 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:44 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:45 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:45 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa4647ffeebc0e0153dae148672e787531ae7158235bd10e9d010a65d8b2849`  
		Last Modified: Fri, 21 Dec 2018 04:59:20 GMT  
		Size: 28.1 MB (28105451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33da5004ad466e26ea69f5baad4f6774ce8a0e821ea933661a5758f46e94d9cd`  
		Last Modified: Fri, 21 Dec 2018 04:58:49 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12`

```console
$ docker pull kong@sha256:69f81d976b6091a23c61c9391a447f1668dc0a01a7caea069c222385fbeaa2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:23732e12656619c5ead590513bb52f789860447a73ea3a9323085e18fd0ee2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c726d9889bfaa5d455d35facf59582278f15326e47410fb9002b1b1f2f633d6e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:54:15 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:54:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:54:16 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:54:16 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:54:16 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4045587a74265bc3ffa59387747c5149d7d784b99c39c6d416cac192817d14f9`  
		Last Modified: Thu, 06 Dec 2018 00:59:38 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:69f81d976b6091a23c61c9391a447f1668dc0a01a7caea069c222385fbeaa2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:23732e12656619c5ead590513bb52f789860447a73ea3a9323085e18fd0ee2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c726d9889bfaa5d455d35facf59582278f15326e47410fb9002b1b1f2f633d6e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:54:15 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:54:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:54:16 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:54:16 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:54:16 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4045587a74265bc3ffa59387747c5149d7d784b99c39c6d416cac192817d14f9`  
		Last Modified: Thu, 06 Dec 2018 00:59:38 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:940a8d1d47f0b865f7192c30310cabf196fe50baa36b6c2a98d1c5318de5e262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:3eb5bdd014b0552d49915113abf755d565fccc550165c154f06d8205b0e1c592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30879552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02ac8cdde86b1fe8bb8c2abdabc364aad1a91465b7636c5dd3ebf5b28173bf4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:56:17 GMT
ENV KONG_VERSION=0.12.3
# Fri, 21 Dec 2018 04:56:17 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Fri, 21 Dec 2018 04:56:26 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:26 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:27 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:27 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:27 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e91c8a6abda3ad18afbc18896a8649ae2e5bdeb818162324ae0f580215c324`  
		Last Modified: Fri, 21 Dec 2018 04:58:43 GMT  
		Size: 28.9 MB (28862537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7671e45f7144de1b18ffc6fa25d6e485485beb2844dd9cf718b4937c74e45005`  
		Last Modified: Fri, 21 Dec 2018 04:58:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:69f81d976b6091a23c61c9391a447f1668dc0a01a7caea069c222385fbeaa2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:23732e12656619c5ead590513bb52f789860447a73ea3a9323085e18fd0ee2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c726d9889bfaa5d455d35facf59582278f15326e47410fb9002b1b1f2f633d6e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:54:15 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:54:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:54:16 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:54:16 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:54:16 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4045587a74265bc3ffa59387747c5149d7d784b99c39c6d416cac192817d14f9`  
		Last Modified: Thu, 06 Dec 2018 00:59:38 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:940a8d1d47f0b865f7192c30310cabf196fe50baa36b6c2a98d1c5318de5e262
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:3eb5bdd014b0552d49915113abf755d565fccc550165c154f06d8205b0e1c592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30879552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02ac8cdde86b1fe8bb8c2abdabc364aad1a91465b7636c5dd3ebf5b28173bf4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:56:17 GMT
ENV KONG_VERSION=0.12.3
# Fri, 21 Dec 2018 04:56:17 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Fri, 21 Dec 2018 04:56:26 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:26 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:27 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:27 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:27 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e91c8a6abda3ad18afbc18896a8649ae2e5bdeb818162324ae0f580215c324`  
		Last Modified: Fri, 21 Dec 2018 04:58:43 GMT  
		Size: 28.9 MB (28862537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7671e45f7144de1b18ffc6fa25d6e485485beb2844dd9cf718b4937c74e45005`  
		Last Modified: Fri, 21 Dec 2018 04:58:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:69f81d976b6091a23c61c9391a447f1668dc0a01a7caea069c222385fbeaa2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:23732e12656619c5ead590513bb52f789860447a73ea3a9323085e18fd0ee2c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c726d9889bfaa5d455d35facf59582278f15326e47410fb9002b1b1f2f633d6e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:54:15 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:54:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:54:16 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:54:16 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:54:16 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4045587a74265bc3ffa59387747c5149d7d784b99c39c6d416cac192817d14f9`  
		Last Modified: Thu, 06 Dec 2018 00:59:38 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:d71ee4c6ce0c597c135c8f5bfeeca1c20175f9b8b7cdb26b7356d07d9816c218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:c92283348b176b1cba067417b75089647b38e7578956d945816cc00cd94e7de4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36eac1061062b7e18b09bfe99b2e7c8ac895e9adcd179caf8f5a6160c25a0bde`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_VERSION=0.13.1
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 21 Dec 2018 04:56:07 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:08 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:08 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:09 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:09 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5ddee2c994b4786b22c752d47914a9d1e97d28facb823af23d31a1455c1ed9`  
		Last Modified: Fri, 21 Dec 2018 04:58:29 GMT  
		Size: 31.5 MB (31451226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cebd72b375a2b4bf09fe8eeaed44485391a88880870c2c9d803b9de87a91f1e`  
		Last Modified: Fri, 21 Dec 2018 04:58:17 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:d71ee4c6ce0c597c135c8f5bfeeca1c20175f9b8b7cdb26b7356d07d9816c218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:c92283348b176b1cba067417b75089647b38e7578956d945816cc00cd94e7de4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36eac1061062b7e18b09bfe99b2e7c8ac895e9adcd179caf8f5a6160c25a0bde`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_VERSION=0.13.1
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 21 Dec 2018 04:56:07 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:08 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:08 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:09 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:09 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5ddee2c994b4786b22c752d47914a9d1e97d28facb823af23d31a1455c1ed9`  
		Last Modified: Fri, 21 Dec 2018 04:58:29 GMT  
		Size: 31.5 MB (31451226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cebd72b375a2b4bf09fe8eeaed44485391a88880870c2c9d803b9de87a91f1e`  
		Last Modified: Fri, 21 Dec 2018 04:58:17 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:d71ee4c6ce0c597c135c8f5bfeeca1c20175f9b8b7cdb26b7356d07d9816c218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c92283348b176b1cba067417b75089647b38e7578956d945816cc00cd94e7de4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36eac1061062b7e18b09bfe99b2e7c8ac895e9adcd179caf8f5a6160c25a0bde`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_VERSION=0.13.1
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 21 Dec 2018 04:56:07 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:08 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:08 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:09 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:09 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5ddee2c994b4786b22c752d47914a9d1e97d28facb823af23d31a1455c1ed9`  
		Last Modified: Fri, 21 Dec 2018 04:58:29 GMT  
		Size: 31.5 MB (31451226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cebd72b375a2b4bf09fe8eeaed44485391a88880870c2c9d803b9de87a91f1e`  
		Last Modified: Fri, 21 Dec 2018 04:58:17 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:0a754f5a248c7223f2d9bd224e7e4e78e3f76650efc11e49ba4189210e822952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:e1f667382b34822643c10771b2147fefa9a00957e03fa31328832db6cb42cda9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129118577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48567f8ad0f1c30422cc77af344100e0d95a497c9dafde0a4dfb1b0db53e3dd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:06 GMT
ENV KONG_VERSION=0.13.1
# Thu, 06 Dec 2018 00:53:20 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:53:21 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:21 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:53:21 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:53:22 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a137d079b0ade30a3980e00579d2a89d310aa37d5c953fa378a63af466477e`  
		Last Modified: Thu, 06 Dec 2018 00:58:43 GMT  
		Size: 54.0 MB (53952725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f440b484d0898e1b83dbc7e68a2d6525512243dea1e59dfe24e671b2019999`  
		Last Modified: Thu, 06 Dec 2018 00:58:34 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-alpine`

```console
$ docker pull kong@sha256:d71ee4c6ce0c597c135c8f5bfeeca1c20175f9b8b7cdb26b7356d07d9816c218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c92283348b176b1cba067417b75089647b38e7578956d945816cc00cd94e7de4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36eac1061062b7e18b09bfe99b2e7c8ac895e9adcd179caf8f5a6160c25a0bde`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_VERSION=0.13.1
# Fri, 21 Dec 2018 04:55:58 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 21 Dec 2018 04:56:07 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:56:08 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:56:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:56:08 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:56:09 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:56:09 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5ddee2c994b4786b22c752d47914a9d1e97d28facb823af23d31a1455c1ed9`  
		Last Modified: Fri, 21 Dec 2018 04:58:29 GMT  
		Size: 31.5 MB (31451226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cebd72b375a2b4bf09fe8eeaed44485391a88880870c2c9d803b9de87a91f1e`  
		Last Modified: Fri, 21 Dec 2018 04:58:17 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:0a754f5a248c7223f2d9bd224e7e4e78e3f76650efc11e49ba4189210e822952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:e1f667382b34822643c10771b2147fefa9a00957e03fa31328832db6cb42cda9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129118577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48567f8ad0f1c30422cc77af344100e0d95a497c9dafde0a4dfb1b0db53e3dd8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:06 GMT
ENV KONG_VERSION=0.13.1
# Thu, 06 Dec 2018 00:53:20 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:53:21 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:53:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:53:21 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:53:21 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:53:22 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a137d079b0ade30a3980e00579d2a89d310aa37d5c953fa378a63af466477e`  
		Last Modified: Thu, 06 Dec 2018 00:58:43 GMT  
		Size: 54.0 MB (53952725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f440b484d0898e1b83dbc7e68a2d6525512243dea1e59dfe24e671b2019999`  
		Last Modified: Thu, 06 Dec 2018 00:58:34 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14`

```console
$ docker pull kong@sha256:53568338c2af188aef8798775f8ff82dbc8f1d1ca6d897bbb06f0de766a375d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14` - linux; amd64

```console
$ docker pull kong@sha256:303dc400032056f5649019a7fd80644e4d1347ccbf53af97a6caa8f93ce7c3c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d06586eb1a89a5e6d4e481ed2db7b296332c3949d75f522c15922562e43deb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_VERSION=0.14.1
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 21 Dec 2018 04:55:49 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:49 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:50 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:50 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:50 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ba226f037b91aad58f8a0c6edd5e26a7832061d3c6274d56c7f412af1ba63a`  
		Last Modified: Fri, 21 Dec 2018 04:58:09 GMT  
		Size: 31.6 MB (31584229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92be8dc12cef35c21fe9e3f41192e749feb592689b89d177a0b44965fbb10143`  
		Last Modified: Fri, 21 Dec 2018 04:57:58 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1`

```console
$ docker pull kong@sha256:53568338c2af188aef8798775f8ff82dbc8f1d1ca6d897bbb06f0de766a375d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1` - linux; amd64

```console
$ docker pull kong@sha256:303dc400032056f5649019a7fd80644e4d1347ccbf53af97a6caa8f93ce7c3c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d06586eb1a89a5e6d4e481ed2db7b296332c3949d75f522c15922562e43deb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_VERSION=0.14.1
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 21 Dec 2018 04:55:49 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:49 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:50 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:50 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:50 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ba226f037b91aad58f8a0c6edd5e26a7832061d3c6274d56c7f412af1ba63a`  
		Last Modified: Fri, 21 Dec 2018 04:58:09 GMT  
		Size: 31.6 MB (31584229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92be8dc12cef35c21fe9e3f41192e749feb592689b89d177a0b44965fbb10143`  
		Last Modified: Fri, 21 Dec 2018 04:57:58 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-alpine`

```console
$ docker pull kong@sha256:53568338c2af188aef8798775f8ff82dbc8f1d1ca6d897bbb06f0de766a375d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:303dc400032056f5649019a7fd80644e4d1347ccbf53af97a6caa8f93ce7c3c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d06586eb1a89a5e6d4e481ed2db7b296332c3949d75f522c15922562e43deb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_VERSION=0.14.1
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 21 Dec 2018 04:55:49 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:49 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:50 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:50 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:50 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ba226f037b91aad58f8a0c6edd5e26a7832061d3c6274d56c7f412af1ba63a`  
		Last Modified: Fri, 21 Dec 2018 04:58:09 GMT  
		Size: 31.6 MB (31584229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92be8dc12cef35c21fe9e3f41192e749feb592689b89d177a0b44965fbb10143`  
		Last Modified: Fri, 21 Dec 2018 04:57:58 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-centos`

```console
$ docker pull kong@sha256:968f73a65115952a3264e25aae91bc7f5e88c2fe77972aa0a7425054eaf3d159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:c33d272747ada019565d2890ada4e5afa0d379141167d6bd91e9d0d9a0bd5e34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129406042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced99aa130e3beddd42157ca02204b57a7879e245a4d59c8ebec88673d01d8eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:52:22 GMT
ENV KONG_VERSION=0.14.1
# Thu, 06 Dec 2018 00:52:34 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:52:34 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:35 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:52:35 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:52:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad790075d076e58a31b75428e49317b7af723d86ec24581a19c15465785d0b69`  
		Last Modified: Thu, 06 Dec 2018 00:57:45 GMT  
		Size: 54.2 MB (54240199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60c50c63bb7cfabec48d28d53d67c52baeda44b97084e56c3630f8fa049b205`  
		Last Modified: Thu, 06 Dec 2018 00:57:32 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14-alpine`

```console
$ docker pull kong@sha256:53568338c2af188aef8798775f8ff82dbc8f1d1ca6d897bbb06f0de766a375d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-alpine` - linux; amd64

```console
$ docker pull kong@sha256:303dc400032056f5649019a7fd80644e4d1347ccbf53af97a6caa8f93ce7c3c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d06586eb1a89a5e6d4e481ed2db7b296332c3949d75f522c15922562e43deb4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:39 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_VERSION=0.14.1
# Fri, 21 Dec 2018 04:55:39 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 21 Dec 2018 04:55:49 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:49 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:50 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:50 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:50 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ba226f037b91aad58f8a0c6edd5e26a7832061d3c6274d56c7f412af1ba63a`  
		Last Modified: Fri, 21 Dec 2018 04:58:09 GMT  
		Size: 31.6 MB (31584229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92be8dc12cef35c21fe9e3f41192e749feb592689b89d177a0b44965fbb10143`  
		Last Modified: Fri, 21 Dec 2018 04:57:58 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14-centos`

```console
$ docker pull kong@sha256:968f73a65115952a3264e25aae91bc7f5e88c2fe77972aa0a7425054eaf3d159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-centos` - linux; amd64

```console
$ docker pull kong@sha256:c33d272747ada019565d2890ada4e5afa0d379141167d6bd91e9d0d9a0bd5e34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129406042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ced99aa130e3beddd42157ca02204b57a7879e245a4d59c8ebec88673d01d8eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:52:22 GMT
ENV KONG_VERSION=0.14.1
# Thu, 06 Dec 2018 00:52:34 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:52:34 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:52:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:52:35 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:52:35 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:52:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad790075d076e58a31b75428e49317b7af723d86ec24581a19c15465785d0b69`  
		Last Modified: Thu, 06 Dec 2018 00:57:45 GMT  
		Size: 54.2 MB (54240199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60c50c63bb7cfabec48d28d53d67c52baeda44b97084e56c3630f8fa049b205`  
		Last Modified: Thu, 06 Dec 2018 00:57:32 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15`

```console
$ docker pull kong@sha256:9d0ef858a14ca10259ec3b10d66315a3d21a74dfb4f5922e5718f3ee91370048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15` - linux; amd64

```console
$ docker pull kong@sha256:11d542f390a8f7cd2075d4bdbbff12f7b4dc9aedd3a3e2bb889c6020df01fc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a79e9da61e79fb76d547df6294d0b9dab500c977cbb20ed61659bfe5293fb3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_VERSION=0.15.0
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Tue, 08 Jan 2019 00:20:22 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 08 Jan 2019 00:20:22 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Tue, 08 Jan 2019 00:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Jan 2019 00:20:23 GMT
EXPOSE 8000 8001 8443 8444
# Tue, 08 Jan 2019 00:20:23 GMT
STOPSIGNAL SIGTERM
# Tue, 08 Jan 2019 00:20:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19efbabe485b0bcd0fb0377dda97a8b8a305024065f5f5b04ded86676792d3e2`  
		Last Modified: Tue, 08 Jan 2019 00:21:56 GMT  
		Size: 28.5 MB (28496358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2caba7b038df79dbc6d49b005c388ac89ba5b0557e8cecc6bc6fca1f7edfed`  
		Last Modified: Tue, 08 Jan 2019 00:21:50 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0`

```console
$ docker pull kong@sha256:9d0ef858a14ca10259ec3b10d66315a3d21a74dfb4f5922e5718f3ee91370048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0` - linux; amd64

```console
$ docker pull kong@sha256:11d542f390a8f7cd2075d4bdbbff12f7b4dc9aedd3a3e2bb889c6020df01fc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a79e9da61e79fb76d547df6294d0b9dab500c977cbb20ed61659bfe5293fb3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_VERSION=0.15.0
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Tue, 08 Jan 2019 00:20:22 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 08 Jan 2019 00:20:22 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Tue, 08 Jan 2019 00:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Jan 2019 00:20:23 GMT
EXPOSE 8000 8001 8443 8444
# Tue, 08 Jan 2019 00:20:23 GMT
STOPSIGNAL SIGTERM
# Tue, 08 Jan 2019 00:20:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19efbabe485b0bcd0fb0377dda97a8b8a305024065f5f5b04ded86676792d3e2`  
		Last Modified: Tue, 08 Jan 2019 00:21:56 GMT  
		Size: 28.5 MB (28496358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2caba7b038df79dbc6d49b005c388ac89ba5b0557e8cecc6bc6fca1f7edfed`  
		Last Modified: Tue, 08 Jan 2019 00:21:50 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0-alpine`

```console
$ docker pull kong@sha256:9d0ef858a14ca10259ec3b10d66315a3d21a74dfb4f5922e5718f3ee91370048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:11d542f390a8f7cd2075d4bdbbff12f7b4dc9aedd3a3e2bb889c6020df01fc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a79e9da61e79fb76d547df6294d0b9dab500c977cbb20ed61659bfe5293fb3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_VERSION=0.15.0
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Tue, 08 Jan 2019 00:20:22 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 08 Jan 2019 00:20:22 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Tue, 08 Jan 2019 00:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Jan 2019 00:20:23 GMT
EXPOSE 8000 8001 8443 8444
# Tue, 08 Jan 2019 00:20:23 GMT
STOPSIGNAL SIGTERM
# Tue, 08 Jan 2019 00:20:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19efbabe485b0bcd0fb0377dda97a8b8a305024065f5f5b04ded86676792d3e2`  
		Last Modified: Tue, 08 Jan 2019 00:21:56 GMT  
		Size: 28.5 MB (28496358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2caba7b038df79dbc6d49b005c388ac89ba5b0557e8cecc6bc6fca1f7edfed`  
		Last Modified: Tue, 08 Jan 2019 00:21:50 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0-centos`

```console
$ docker pull kong@sha256:7161410f57e2c839b17ff3548c793c555fc72b360af9c10ba04a6d2e72158a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:e03771e3eed2aca8a7c09a2eda9379be715a5e1b18da5220215d5fdb5058e8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131083639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30213e14c3028e3472108114b4a79849518bba231bb12daf02e536985670659`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:27 GMT
ENV KONG_VERSION=0.15.0
# Thu, 17 Jan 2019 23:22:11 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 17 Jan 2019 23:22:12 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 17 Jan 2019 23:22:49 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 17 Jan 2019 23:23:09 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 17 Jan 2019 23:23:09 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:23:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:23:10 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 17 Jan 2019 23:23:10 GMT
STOPSIGNAL SIGTERM
# Thu, 17 Jan 2019 23:23:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e072090149aa510ec4fb8f81eba4971e8c48935154be57e6a716f8595ac88f7`  
		Last Modified: Thu, 17 Jan 2019 23:24:28 GMT  
		Size: 6.1 MB (6099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef45cb3aa3a82c63086f42984552316acf7dd0c52794fb4f7d7cc51c334f7a3`  
		Last Modified: Thu, 17 Jan 2019 23:24:36 GMT  
		Size: 49.8 MB (49818087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef703ac7f82c9178636609cd2f51d39b9003ee26d2f5cd8756e6d20025aad0`  
		Last Modified: Thu, 17 Jan 2019 23:24:27 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15-alpine`

```console
$ docker pull kong@sha256:9d0ef858a14ca10259ec3b10d66315a3d21a74dfb4f5922e5718f3ee91370048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15-alpine` - linux; amd64

```console
$ docker pull kong@sha256:11d542f390a8f7cd2075d4bdbbff12f7b4dc9aedd3a3e2bb889c6020df01fc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a79e9da61e79fb76d547df6294d0b9dab500c977cbb20ed61659bfe5293fb3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_VERSION=0.15.0
# Tue, 08 Jan 2019 00:20:17 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Tue, 08 Jan 2019 00:20:22 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 08 Jan 2019 00:20:22 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Tue, 08 Jan 2019 00:20:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Jan 2019 00:20:23 GMT
EXPOSE 8000 8001 8443 8444
# Tue, 08 Jan 2019 00:20:23 GMT
STOPSIGNAL SIGTERM
# Tue, 08 Jan 2019 00:20:23 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19efbabe485b0bcd0fb0377dda97a8b8a305024065f5f5b04ded86676792d3e2`  
		Last Modified: Tue, 08 Jan 2019 00:21:56 GMT  
		Size: 28.5 MB (28496358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2caba7b038df79dbc6d49b005c388ac89ba5b0557e8cecc6bc6fca1f7edfed`  
		Last Modified: Tue, 08 Jan 2019 00:21:50 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15-centos`

```console
$ docker pull kong@sha256:7161410f57e2c839b17ff3548c793c555fc72b360af9c10ba04a6d2e72158a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15-centos` - linux; amd64

```console
$ docker pull kong@sha256:e03771e3eed2aca8a7c09a2eda9379be715a5e1b18da5220215d5fdb5058e8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131083639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30213e14c3028e3472108114b4a79849518bba231bb12daf02e536985670659`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:27 GMT
ENV KONG_VERSION=0.15.0
# Thu, 17 Jan 2019 23:22:11 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 17 Jan 2019 23:22:12 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 17 Jan 2019 23:22:49 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 17 Jan 2019 23:23:09 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 17 Jan 2019 23:23:09 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:23:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:23:10 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 17 Jan 2019 23:23:10 GMT
STOPSIGNAL SIGTERM
# Thu, 17 Jan 2019 23:23:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e072090149aa510ec4fb8f81eba4971e8c48935154be57e6a716f8595ac88f7`  
		Last Modified: Thu, 17 Jan 2019 23:24:28 GMT  
		Size: 6.1 MB (6099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef45cb3aa3a82c63086f42984552316acf7dd0c52794fb4f7d7cc51c334f7a3`  
		Last Modified: Thu, 17 Jan 2019 23:24:36 GMT  
		Size: 49.8 MB (49818087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef703ac7f82c9178636609cd2f51d39b9003ee26d2f5cd8756e6d20025aad0`  
		Last Modified: Thu, 17 Jan 2019 23:24:27 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0`

```console
$ docker pull kong@sha256:3307d7e414abe1a8bad0d99424d33e3c7deac9f3b57725d0af77cbaea7c52059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0` - linux; amd64

```console
$ docker pull kong@sha256:e08cfaee0e011648aa8f66014ade78f0167aba19641676947235386be93cb646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30457774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa81dce37ec3dd08e64cab6d481594b11839ea86fd1086497599d3bf405e04a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Wed, 23 Jan 2019 23:20:56 GMT
ENV KONG_VERSION=1.0.2
# Wed, 23 Jan 2019 23:20:57 GMT
ENV KONG_SHA256=e15473300f60bee4e59e69115f6adb65356cb67c5b86fb0acc39243d8b4d6613
# Wed, 23 Jan 2019 23:21:10 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 23 Jan 2019 23:21:11 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:21:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:21:14 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:21:14 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:21:14 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf5ff8abbda7fbc12716b89c3fed024528128723861f50a6fb035e9d3949ab8`  
		Last Modified: Wed, 23 Jan 2019 23:24:49 GMT  
		Size: 28.4 MB (28440539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a150b1cc54e27e78db5b2db01af45f000195d3ac490c12200c2934ae34406fa1`  
		Last Modified: Wed, 23 Jan 2019 23:24:38 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.2`

```console
$ docker pull kong@sha256:3307d7e414abe1a8bad0d99424d33e3c7deac9f3b57725d0af77cbaea7c52059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.2` - linux; amd64

```console
$ docker pull kong@sha256:e08cfaee0e011648aa8f66014ade78f0167aba19641676947235386be93cb646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30457774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa81dce37ec3dd08e64cab6d481594b11839ea86fd1086497599d3bf405e04a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Wed, 23 Jan 2019 23:20:56 GMT
ENV KONG_VERSION=1.0.2
# Wed, 23 Jan 2019 23:20:57 GMT
ENV KONG_SHA256=e15473300f60bee4e59e69115f6adb65356cb67c5b86fb0acc39243d8b4d6613
# Wed, 23 Jan 2019 23:21:10 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 23 Jan 2019 23:21:11 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:21:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:21:14 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:21:14 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:21:14 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf5ff8abbda7fbc12716b89c3fed024528128723861f50a6fb035e9d3949ab8`  
		Last Modified: Wed, 23 Jan 2019 23:24:49 GMT  
		Size: 28.4 MB (28440539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a150b1cc54e27e78db5b2db01af45f000195d3ac490c12200c2934ae34406fa1`  
		Last Modified: Wed, 23 Jan 2019 23:24:38 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.2-alpine`

```console
$ docker pull kong@sha256:3307d7e414abe1a8bad0d99424d33e3c7deac9f3b57725d0af77cbaea7c52059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:e08cfaee0e011648aa8f66014ade78f0167aba19641676947235386be93cb646
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30457774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa81dce37ec3dd08e64cab6d481594b11839ea86fd1086497599d3bf405e04a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Wed, 23 Jan 2019 23:20:56 GMT
ENV KONG_VERSION=1.0.2
# Wed, 23 Jan 2019 23:20:57 GMT
ENV KONG_SHA256=e15473300f60bee4e59e69115f6adb65356cb67c5b86fb0acc39243d8b4d6613
# Wed, 23 Jan 2019 23:21:10 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 23 Jan 2019 23:21:11 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:21:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:21:14 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:21:14 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:21:14 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf5ff8abbda7fbc12716b89c3fed024528128723861f50a6fb035e9d3949ab8`  
		Last Modified: Wed, 23 Jan 2019 23:24:49 GMT  
		Size: 28.4 MB (28440539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a150b1cc54e27e78db5b2db01af45f000195d3ac490c12200c2934ae34406fa1`  
		Last Modified: Wed, 23 Jan 2019 23:24:38 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.2-centos`

```console
$ docker pull kong@sha256:4be823caf0e3011721ebf2d7ac3e63bc89a77aa017273098c87328a1141dc2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.2-centos` - linux; amd64

```console
$ docker pull kong@sha256:358f6939a7b056e5e6c7206ab66ab393a2b950679e6272a5c6121e01a8879352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130968082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a295ecee315e377f4da9b5975d2e24c5a7a3f3ef2f0ceec6ee0634a9118761`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Wed, 23 Jan 2019 23:21:25 GMT
ENV KONG_VERSION=1.0.2
# Wed, 23 Jan 2019 23:21:26 GMT
ARG SU_EXEC_VERSION=0.2
# Wed, 23 Jan 2019 23:21:27 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Wed, 23 Jan 2019 23:22:15 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Wed, 23 Jan 2019 23:22:47 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Wed, 23 Jan 2019 23:22:48 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:22:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:22:48 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:22:49 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:22:50 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6d742a753e3d2719770febe99933d95523694097038cc22dc01d79375849da`  
		Last Modified: Wed, 23 Jan 2019 23:25:02 GMT  
		Size: 6.1 MB (6099491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a01c0d4c0feee02e16d2badd0c9e99430f2c1d9392c2ddec28d30aaf80f1423`  
		Last Modified: Wed, 23 Jan 2019 23:25:15 GMT  
		Size: 49.7 MB (49702520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6722bcf307e9bbe90d90950ed6a027003e06a1a69696249bf000043e6725994c`  
		Last Modified: Wed, 23 Jan 2019 23:25:01 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0-centos`

```console
$ docker pull kong@sha256:4be823caf0e3011721ebf2d7ac3e63bc89a77aa017273098c87328a1141dc2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:358f6939a7b056e5e6c7206ab66ab393a2b950679e6272a5c6121e01a8879352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130968082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a295ecee315e377f4da9b5975d2e24c5a7a3f3ef2f0ceec6ee0634a9118761`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Wed, 23 Jan 2019 23:21:25 GMT
ENV KONG_VERSION=1.0.2
# Wed, 23 Jan 2019 23:21:26 GMT
ARG SU_EXEC_VERSION=0.2
# Wed, 23 Jan 2019 23:21:27 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Wed, 23 Jan 2019 23:22:15 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Wed, 23 Jan 2019 23:22:47 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Wed, 23 Jan 2019 23:22:48 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:22:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:22:48 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:22:49 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:22:50 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6d742a753e3d2719770febe99933d95523694097038cc22dc01d79375849da`  
		Last Modified: Wed, 23 Jan 2019 23:25:02 GMT  
		Size: 6.1 MB (6099491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a01c0d4c0feee02e16d2badd0c9e99430f2c1d9392c2ddec28d30aaf80f1423`  
		Last Modified: Wed, 23 Jan 2019 23:25:15 GMT  
		Size: 49.7 MB (49702520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6722bcf307e9bbe90d90950ed6a027003e06a1a69696249bf000043e6725994c`  
		Last Modified: Wed, 23 Jan 2019 23:25:01 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:a1e7c66e0e8faf39849f10fc9d48e58400ae010a75cfa95df84871ce3c50f5da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:58aaad03190e6073c7564c7550d7ec2033e03fdc5dc592f2fda5fa6b9ff1941a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30456880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f15f4bb1ffb9cb627b67299a5631822aaed3f1fc9496601f0638a43a9986c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 17 Jan 2019 23:19:40 GMT
ENV KONG_VERSION=1.0.1
# Thu, 17 Jan 2019 23:19:40 GMT
ENV KONG_SHA256=4c394b73ece3f83bf67a71240cad6b3a225d621757b04cd1ea8cd45aa8469813
# Thu, 17 Jan 2019 23:19:45 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 17 Jan 2019 23:19:46 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:19:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:19:46 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 17 Jan 2019 23:19:46 GMT
STOPSIGNAL SIGTERM
# Thu, 17 Jan 2019 23:19:46 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c7f93cf2e398548ef75537c8db3e19353789837b85bc013dfa43cb15dadcc9`  
		Last Modified: Thu, 17 Jan 2019 23:23:56 GMT  
		Size: 28.4 MB (28439645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcc1b86071e69c748aaf1d442accdd6e83befe51259abde1f984433d4ef725a`  
		Last Modified: Thu, 17 Jan 2019 23:23:49 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
