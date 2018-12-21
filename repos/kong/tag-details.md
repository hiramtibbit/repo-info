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
-	[`kong:1.0.0rc2`](#kong100rc2)
-	[`kong:1.0.0rc2-alpine`](#kong100rc2-alpine)
-	[`kong:1.0.0rc2-centos`](#kong100rc2-centos)
-	[`kong:1.0.0rc3`](#kong100rc3)
-	[`kong:1.0.0rc3-alpine`](#kong100rc3-alpine)
-	[`kong:1.0.0rc3-centos`](#kong100rc3-centos)
-	[`kong:1.0rc2`](#kong10rc2)
-	[`kong:1.0rc2-alpine`](#kong10rc2-alpine)
-	[`kong:1.0rc2-centos`](#kong10rc2-centos)
-	[`kong:1.0rc3`](#kong10rc3)
-	[`kong:1.0rc3-alpine`](#kong10rc3-alpine)
-	[`kong:1.0rc3-centos`](#kong10rc3-centos)
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

## `kong:1.0.0rc2`

```console
$ docker pull kong@sha256:165aa7926152cf7b9a1f7683041703f9e87406233b57d33c77a1624b663a658e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc2` - linux; amd64

```console
$ docker pull kong@sha256:0b3b0f9597a7c7e7af451b362c320559dfa9820065bee96490d735ff7f2f27f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30375341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7c9badd74804180dbaf93fea44642a510818bd9078384b7a3601555fced785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:20 GMT
ENV KONG_VERSION=1.0.0rc2
# Fri, 21 Dec 2018 04:55:21 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Fri, 21 Dec 2018 04:55:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:31 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:31 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:31 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51ebbd66d1544c5296026a21ec87183c23a28dba1dd2f39f5cf8a1acf705c74`  
		Last Modified: Fri, 21 Dec 2018 04:57:50 GMT  
		Size: 28.4 MB (28358336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af3066255d372b40d49ffbf2eda301ba934de1cacfe2b710908b7e8d9851cb8`  
		Last Modified: Fri, 21 Dec 2018 04:57:38 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc2-alpine`

```console
$ docker pull kong@sha256:165aa7926152cf7b9a1f7683041703f9e87406233b57d33c77a1624b663a658e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0b3b0f9597a7c7e7af451b362c320559dfa9820065bee96490d735ff7f2f27f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30375341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7c9badd74804180dbaf93fea44642a510818bd9078384b7a3601555fced785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:20 GMT
ENV KONG_VERSION=1.0.0rc2
# Fri, 21 Dec 2018 04:55:21 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Fri, 21 Dec 2018 04:55:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:31 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:31 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:31 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51ebbd66d1544c5296026a21ec87183c23a28dba1dd2f39f5cf8a1acf705c74`  
		Last Modified: Fri, 21 Dec 2018 04:57:50 GMT  
		Size: 28.4 MB (28358336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af3066255d372b40d49ffbf2eda301ba934de1cacfe2b710908b7e8d9851cb8`  
		Last Modified: Fri, 21 Dec 2018 04:57:38 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc2-centos`

```console
$ docker pull kong@sha256:06279b79bff0b771969c65aef98c4fa06077e4a9abe3dc72274d6a418d7ea622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc2-centos` - linux; amd64

```console
$ docker pull kong@sha256:98e8604bebd4ed824068d96c29e55a5367d98dce10c5a6c096efcdccf53670aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124957620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97937880c8b7f7e743cbca7d1ed98635a077a0f2b72a05573bbda75ae5d2dec8`
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
# Thu, 06 Dec 2018 00:51:29 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 06 Dec 2018 00:51:43 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:51:57 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:51:58 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:51:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea96ee240979e1e11122a1efc6636566f975011c4bd9c70ecd6fb0736c435423`  
		Last Modified: Thu, 06 Dec 2018 00:56:40 GMT  
		Size: 49.8 MB (49791778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ae0f79ef3102a5dd494ffd5f6f146d5d2ea41ed24bfcc88608cd53c26868f5`  
		Last Modified: Thu, 06 Dec 2018 00:56:32 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc3`

```console
$ docker pull kong@sha256:6f12fc702db1c34b7e1cf2baafa4476a83b3d20c4f2bf7c6d8586ae27cdd133d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc3` - linux; amd64

```console
$ docker pull kong@sha256:c1a5374d6031ea201c9c50a6b78d93fca896d11c48582673790596a91d27fe12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d407102f9fb8dfba0e38cba265bc24397519834dfa1220a75717a3d74ab51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_VERSION=1.0.0rc3
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Fri, 21 Dec 2018 04:55:10 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Fri, 21 Dec 2018 04:55:10 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:11 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:11 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:11 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acc0df54127312b10a53958828c93972f23e5cbc5df9b4beb4317bebc97b243`  
		Last Modified: Fri, 21 Dec 2018 04:57:31 GMT  
		Size: 28.4 MB (28390637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f20a47b0945439fe6aff19ee73ade53582f1af6a84f3bcee5c648f2bdef6a`  
		Last Modified: Fri, 21 Dec 2018 04:57:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc3-alpine`

```console
$ docker pull kong@sha256:6f12fc702db1c34b7e1cf2baafa4476a83b3d20c4f2bf7c6d8586ae27cdd133d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c1a5374d6031ea201c9c50a6b78d93fca896d11c48582673790596a91d27fe12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d407102f9fb8dfba0e38cba265bc24397519834dfa1220a75717a3d74ab51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_VERSION=1.0.0rc3
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Fri, 21 Dec 2018 04:55:10 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Fri, 21 Dec 2018 04:55:10 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:11 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:11 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:11 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acc0df54127312b10a53958828c93972f23e5cbc5df9b4beb4317bebc97b243`  
		Last Modified: Fri, 21 Dec 2018 04:57:31 GMT  
		Size: 28.4 MB (28390637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f20a47b0945439fe6aff19ee73ade53582f1af6a84f3bcee5c648f2bdef6a`  
		Last Modified: Fri, 21 Dec 2018 04:57:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc3-centos`

```console
$ docker pull kong@sha256:24efb66495881311820dceb506e3533712cc37f641ac575bc2a81d71c2508b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc3-centos` - linux; amd64

```console
$ docker pull kong@sha256:fd563df128bdb9af52b7a645f01d69cfcbdfb064048289224c5a4f1767918b91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125192448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8668a214a87f3d812c8beae4ca852d4494684316eeda280b92ed41704b5635`
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
# Thu, 06 Dec 2018 00:50:52 GMT
ENV KONG_VERSION=1.0.0rc3
# Thu, 06 Dec 2018 00:51:04 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all &&     mkdir -p "/usr/local/kong" &&     chgrp -R 0 "/usr/local/kong" &&     chmod -R g=u "/usr/local/kong"
# Thu, 06 Dec 2018 00:51:04 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:05 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:51:05 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:51:05 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43458b89db183fd8c5fc7b97bae64c99b9f7aadce5aa0e75e96cd9897186352f`  
		Last Modified: Thu, 06 Dec 2018 00:55:40 GMT  
		Size: 50.0 MB (50026604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c26b790efaeca8ec088d51b9cee5ea35e9381ff340c786fc78ebc7b3293248`  
		Last Modified: Thu, 06 Dec 2018 00:55:31 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc2`

```console
$ docker pull kong@sha256:165aa7926152cf7b9a1f7683041703f9e87406233b57d33c77a1624b663a658e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc2` - linux; amd64

```console
$ docker pull kong@sha256:0b3b0f9597a7c7e7af451b362c320559dfa9820065bee96490d735ff7f2f27f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30375341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7c9badd74804180dbaf93fea44642a510818bd9078384b7a3601555fced785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:20 GMT
ENV KONG_VERSION=1.0.0rc2
# Fri, 21 Dec 2018 04:55:21 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Fri, 21 Dec 2018 04:55:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:31 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:31 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:31 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51ebbd66d1544c5296026a21ec87183c23a28dba1dd2f39f5cf8a1acf705c74`  
		Last Modified: Fri, 21 Dec 2018 04:57:50 GMT  
		Size: 28.4 MB (28358336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af3066255d372b40d49ffbf2eda301ba934de1cacfe2b710908b7e8d9851cb8`  
		Last Modified: Fri, 21 Dec 2018 04:57:38 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc2-alpine`

```console
$ docker pull kong@sha256:165aa7926152cf7b9a1f7683041703f9e87406233b57d33c77a1624b663a658e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0b3b0f9597a7c7e7af451b362c320559dfa9820065bee96490d735ff7f2f27f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30375341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7c9badd74804180dbaf93fea44642a510818bd9078384b7a3601555fced785`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:20 GMT
ENV KONG_VERSION=1.0.0rc2
# Fri, 21 Dec 2018 04:55:21 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Fri, 21 Dec 2018 04:55:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 21 Dec 2018 04:55:31 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:31 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:31 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:32 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51ebbd66d1544c5296026a21ec87183c23a28dba1dd2f39f5cf8a1acf705c74`  
		Last Modified: Fri, 21 Dec 2018 04:57:50 GMT  
		Size: 28.4 MB (28358336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af3066255d372b40d49ffbf2eda301ba934de1cacfe2b710908b7e8d9851cb8`  
		Last Modified: Fri, 21 Dec 2018 04:57:38 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc2-centos`

```console
$ docker pull kong@sha256:06279b79bff0b771969c65aef98c4fa06077e4a9abe3dc72274d6a418d7ea622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc2-centos` - linux; amd64

```console
$ docker pull kong@sha256:98e8604bebd4ed824068d96c29e55a5367d98dce10c5a6c096efcdccf53670aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.0 MB (124957620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97937880c8b7f7e743cbca7d1ed98635a077a0f2b72a05573bbda75ae5d2dec8`
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
# Thu, 06 Dec 2018 00:51:29 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 06 Dec 2018 00:51:43 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 06 Dec 2018 00:51:57 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:51:58 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:51:58 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea96ee240979e1e11122a1efc6636566f975011c4bd9c70ecd6fb0736c435423`  
		Last Modified: Thu, 06 Dec 2018 00:56:40 GMT  
		Size: 49.8 MB (49791778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ae0f79ef3102a5dd494ffd5f6f146d5d2ea41ed24bfcc88608cd53c26868f5`  
		Last Modified: Thu, 06 Dec 2018 00:56:32 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc3`

```console
$ docker pull kong@sha256:6f12fc702db1c34b7e1cf2baafa4476a83b3d20c4f2bf7c6d8586ae27cdd133d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc3` - linux; amd64

```console
$ docker pull kong@sha256:c1a5374d6031ea201c9c50a6b78d93fca896d11c48582673790596a91d27fe12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d407102f9fb8dfba0e38cba265bc24397519834dfa1220a75717a3d74ab51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_VERSION=1.0.0rc3
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Fri, 21 Dec 2018 04:55:10 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Fri, 21 Dec 2018 04:55:10 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:11 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:11 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:11 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acc0df54127312b10a53958828c93972f23e5cbc5df9b4beb4317bebc97b243`  
		Last Modified: Fri, 21 Dec 2018 04:57:31 GMT  
		Size: 28.4 MB (28390637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f20a47b0945439fe6aff19ee73ade53582f1af6a84f3bcee5c648f2bdef6a`  
		Last Modified: Fri, 21 Dec 2018 04:57:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc3-alpine`

```console
$ docker pull kong@sha256:6f12fc702db1c34b7e1cf2baafa4476a83b3d20c4f2bf7c6d8586ae27cdd133d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c1a5374d6031ea201c9c50a6b78d93fca896d11c48582673790596a91d27fe12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565d407102f9fb8dfba0e38cba265bc24397519834dfa1220a75717a3d74ab51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:55:00 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_VERSION=1.0.0rc3
# Fri, 21 Dec 2018 04:55:01 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Fri, 21 Dec 2018 04:55:10 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Fri, 21 Dec 2018 04:55:10 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 21 Dec 2018 04:55:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 04:55:11 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 21 Dec 2018 04:55:11 GMT
STOPSIGNAL SIGTERM
# Fri, 21 Dec 2018 04:55:11 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acc0df54127312b10a53958828c93972f23e5cbc5df9b4beb4317bebc97b243`  
		Last Modified: Fri, 21 Dec 2018 04:57:31 GMT  
		Size: 28.4 MB (28390637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f20a47b0945439fe6aff19ee73ade53582f1af6a84f3bcee5c648f2bdef6a`  
		Last Modified: Fri, 21 Dec 2018 04:57:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc3-centos`

```console
$ docker pull kong@sha256:24efb66495881311820dceb506e3533712cc37f641ac575bc2a81d71c2508b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc3-centos` - linux; amd64

```console
$ docker pull kong@sha256:fd563df128bdb9af52b7a645f01d69cfcbdfb064048289224c5a4f1767918b91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125192448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8668a214a87f3d812c8beae4ca852d4494684316eeda280b92ed41704b5635`
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
# Thu, 06 Dec 2018 00:50:52 GMT
ENV KONG_VERSION=1.0.0rc3
# Thu, 06 Dec 2018 00:51:04 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all &&     mkdir -p "/usr/local/kong" &&     chgrp -R 0 "/usr/local/kong" &&     chmod -R g=u "/usr/local/kong"
# Thu, 06 Dec 2018 00:51:04 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 06 Dec 2018 00:51:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 06 Dec 2018 00:51:05 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 06 Dec 2018 00:51:05 GMT
STOPSIGNAL [SIGTERM]
# Thu, 06 Dec 2018 00:51:05 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43458b89db183fd8c5fc7b97bae64c99b9f7aadce5aa0e75e96cd9897186352f`  
		Last Modified: Thu, 06 Dec 2018 00:55:40 GMT  
		Size: 50.0 MB (50026604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c26b790efaeca8ec088d51b9cee5ea35e9381ff340c786fc78ebc7b3293248`  
		Last Modified: Thu, 06 Dec 2018 00:55:31 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:53568338c2af188aef8798775f8ff82dbc8f1d1ca6d897bbb06f0de766a375d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

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
