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
$ docker pull kong@sha256:f8e8b8a067293c9e067e6d734839284ddc08b3701808325f332913cd15fc068b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4717033b1e1b932c146ba5bf784563896c098e78eec1bbfd195fd12ad9d6c478
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b98cfa0d9fd9044d900e9812013a2a1151757b67b1080a6f74f6e520476423`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:41:03 GMT
ENV KONG_VERSION=0.11.2
# Tue, 11 Sep 2018 23:41:03 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Tue, 11 Sep 2018 23:41:09 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:41:09 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:41:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:41:10 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:41:10 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:41:10 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6f7a26bda0999b53a7ae06e6149b52daf5fdab727dbf673f5f400bc8f33d55`  
		Last Modified: Tue, 11 Sep 2018 23:44:48 GMT  
		Size: 28.1 MB (28101195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c002884eaf8cf57db4243ffca32f9911550487ae3c64f3026574e38fcd8d8`  
		Last Modified: Tue, 11 Sep 2018 23:44:39 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:f8e8b8a067293c9e067e6d734839284ddc08b3701808325f332913cd15fc068b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4717033b1e1b932c146ba5bf784563896c098e78eec1bbfd195fd12ad9d6c478
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30118212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b98cfa0d9fd9044d900e9812013a2a1151757b67b1080a6f74f6e520476423`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:39:06 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 11 Sep 2018 23:41:03 GMT
ENV KONG_VERSION=0.11.2
# Tue, 11 Sep 2018 23:41:03 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Tue, 11 Sep 2018 23:41:09 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 11 Sep 2018 23:41:09 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 23:41:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 23:41:10 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 11 Sep 2018 23:41:10 GMT
STOPSIGNAL [SIGTERM]
# Tue, 11 Sep 2018 23:41:10 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6f7a26bda0999b53a7ae06e6149b52daf5fdab727dbf673f5f400bc8f33d55`  
		Last Modified: Tue, 11 Sep 2018 23:44:48 GMT  
		Size: 28.1 MB (28101195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c002884eaf8cf57db4243ffca32f9911550487ae3c64f3026574e38fcd8d8`  
		Last Modified: Tue, 11 Sep 2018 23:44:39 GMT  
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
$ docker pull kong@sha256:0da579dc4947dbf3cf87c436c88cc6584ae16f569eb1c4c67e737edb9b974879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-alpine` - linux; amd64

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
$ docker pull kong@sha256:eb294641b50cf7aaf97aa65598f6e9483624d621588517f9561e7bec921221e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-alpine` - linux; amd64

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
$ docker pull kong@sha256:cf551de5e3d7c365b29ca94bb18be3003f1b35721e646e00cdf2f743a3cc8d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc2` - linux; amd64

```console
$ docker pull kong@sha256:d1c717d320ba397d102a6d446261ea09d27accf50025545666d92c71e291947a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30366808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d2fc1ad8c4ce4d3f485bebcb872662c5d22286d30e5902b52b1934011d76c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Thu, 25 Oct 2018 01:07:08 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 25 Oct 2018 01:07:13 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:07:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:07:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 25 Oct 2018 01:07:14 GMT
STOPSIGNAL [SIGTERM]
# Thu, 25 Oct 2018 01:07:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf60a72d25394fba34ecd575dd06bed6a406dd713121d92069c6b3ff46d4fd5`  
		Last Modified: Thu, 25 Oct 2018 01:09:14 GMT  
		Size: 28.3 MB (28349800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f03796ef48c1c25cdb7e4ac0642840efedc7305ccb336ae5f55b8315e00270c`  
		Last Modified: Thu, 25 Oct 2018 01:09:04 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc2-alpine`

```console
$ docker pull kong@sha256:cf551de5e3d7c365b29ca94bb18be3003f1b35721e646e00cdf2f743a3cc8d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:d1c717d320ba397d102a6d446261ea09d27accf50025545666d92c71e291947a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30366808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d2fc1ad8c4ce4d3f485bebcb872662c5d22286d30e5902b52b1934011d76c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Thu, 25 Oct 2018 01:07:08 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 25 Oct 2018 01:07:13 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:07:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:07:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 25 Oct 2018 01:07:14 GMT
STOPSIGNAL [SIGTERM]
# Thu, 25 Oct 2018 01:07:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf60a72d25394fba34ecd575dd06bed6a406dd713121d92069c6b3ff46d4fd5`  
		Last Modified: Thu, 25 Oct 2018 01:09:14 GMT  
		Size: 28.3 MB (28349800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f03796ef48c1c25cdb7e4ac0642840efedc7305ccb336ae5f55b8315e00270c`  
		Last Modified: Thu, 25 Oct 2018 01:09:04 GMT  
		Size: 315.0 B  
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
$ docker pull kong@sha256:621d6e3cd6d7796579d3b5b2de5b7c89cbabeea3cd492e0c9b6514a7f1a0bf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc3` - linux; amd64

```console
$ docker pull kong@sha256:e8a967c253bfc6d03f57351b0859fd5090fe67c68441cd78c42c7f380de55972
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b695d0917d349446ca4306d87e834d5a4a7f0b8061a8c03bc1a4eb2e2d307b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Mon, 26 Nov 2018 21:19:56 GMT
ENV KONG_VERSION=1.0.0rc3
# Tue, 04 Dec 2018 22:20:32 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Tue, 04 Dec 2018 22:20:37 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Tue, 04 Dec 2018 22:20:37 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 22:20:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 22:20:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 04 Dec 2018 22:20:38 GMT
STOPSIGNAL [SIGTERM]
# Tue, 04 Dec 2018 22:20:38 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c038a333b47c4f34b06aee452ab245308a2ddf633394e4d8510ee4d3010fef92`  
		Last Modified: Tue, 04 Dec 2018 22:22:58 GMT  
		Size: 28.4 MB (28390094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5e71ef8c8bcc7306b8dc289bace00e89c3663a14822a0264a80d22711b7df`  
		Last Modified: Tue, 04 Dec 2018 22:22:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc3-alpine`

```console
$ docker pull kong@sha256:621d6e3cd6d7796579d3b5b2de5b7c89cbabeea3cd492e0c9b6514a7f1a0bf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:e8a967c253bfc6d03f57351b0859fd5090fe67c68441cd78c42c7f380de55972
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b695d0917d349446ca4306d87e834d5a4a7f0b8061a8c03bc1a4eb2e2d307b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Mon, 26 Nov 2018 21:19:56 GMT
ENV KONG_VERSION=1.0.0rc3
# Tue, 04 Dec 2018 22:20:32 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Tue, 04 Dec 2018 22:20:37 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Tue, 04 Dec 2018 22:20:37 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 22:20:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 22:20:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 04 Dec 2018 22:20:38 GMT
STOPSIGNAL [SIGTERM]
# Tue, 04 Dec 2018 22:20:38 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c038a333b47c4f34b06aee452ab245308a2ddf633394e4d8510ee4d3010fef92`  
		Last Modified: Tue, 04 Dec 2018 22:22:58 GMT  
		Size: 28.4 MB (28390094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5e71ef8c8bcc7306b8dc289bace00e89c3663a14822a0264a80d22711b7df`  
		Last Modified: Tue, 04 Dec 2018 22:22:46 GMT  
		Size: 315.0 B  
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
$ docker pull kong@sha256:cf551de5e3d7c365b29ca94bb18be3003f1b35721e646e00cdf2f743a3cc8d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc2` - linux; amd64

```console
$ docker pull kong@sha256:d1c717d320ba397d102a6d446261ea09d27accf50025545666d92c71e291947a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30366808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d2fc1ad8c4ce4d3f485bebcb872662c5d22286d30e5902b52b1934011d76c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Thu, 25 Oct 2018 01:07:08 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 25 Oct 2018 01:07:13 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:07:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:07:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 25 Oct 2018 01:07:14 GMT
STOPSIGNAL [SIGTERM]
# Thu, 25 Oct 2018 01:07:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf60a72d25394fba34ecd575dd06bed6a406dd713121d92069c6b3ff46d4fd5`  
		Last Modified: Thu, 25 Oct 2018 01:09:14 GMT  
		Size: 28.3 MB (28349800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f03796ef48c1c25cdb7e4ac0642840efedc7305ccb336ae5f55b8315e00270c`  
		Last Modified: Thu, 25 Oct 2018 01:09:04 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc2-alpine`

```console
$ docker pull kong@sha256:cf551de5e3d7c365b29ca94bb18be3003f1b35721e646e00cdf2f743a3cc8d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:d1c717d320ba397d102a6d446261ea09d27accf50025545666d92c71e291947a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30366808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d2fc1ad8c4ce4d3f485bebcb872662c5d22286d30e5902b52b1934011d76c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 25 Oct 2018 01:07:01 GMT
ENV KONG_SHA256=42eba2f0c566740472ce69aae44dd93df81a75f494f32f45285426545ba1e914
# Thu, 25 Oct 2018 01:07:08 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 25 Oct 2018 01:07:13 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:07:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:07:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 25 Oct 2018 01:07:14 GMT
STOPSIGNAL [SIGTERM]
# Thu, 25 Oct 2018 01:07:24 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf60a72d25394fba34ecd575dd06bed6a406dd713121d92069c6b3ff46d4fd5`  
		Last Modified: Thu, 25 Oct 2018 01:09:14 GMT  
		Size: 28.3 MB (28349800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f03796ef48c1c25cdb7e4ac0642840efedc7305ccb336ae5f55b8315e00270c`  
		Last Modified: Thu, 25 Oct 2018 01:09:04 GMT  
		Size: 315.0 B  
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
$ docker pull kong@sha256:621d6e3cd6d7796579d3b5b2de5b7c89cbabeea3cd492e0c9b6514a7f1a0bf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc3` - linux; amd64

```console
$ docker pull kong@sha256:e8a967c253bfc6d03f57351b0859fd5090fe67c68441cd78c42c7f380de55972
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b695d0917d349446ca4306d87e834d5a4a7f0b8061a8c03bc1a4eb2e2d307b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Mon, 26 Nov 2018 21:19:56 GMT
ENV KONG_VERSION=1.0.0rc3
# Tue, 04 Dec 2018 22:20:32 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Tue, 04 Dec 2018 22:20:37 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Tue, 04 Dec 2018 22:20:37 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 22:20:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 22:20:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 04 Dec 2018 22:20:38 GMT
STOPSIGNAL [SIGTERM]
# Tue, 04 Dec 2018 22:20:38 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c038a333b47c4f34b06aee452ab245308a2ddf633394e4d8510ee4d3010fef92`  
		Last Modified: Tue, 04 Dec 2018 22:22:58 GMT  
		Size: 28.4 MB (28390094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5e71ef8c8bcc7306b8dc289bace00e89c3663a14822a0264a80d22711b7df`  
		Last Modified: Tue, 04 Dec 2018 22:22:46 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc3-alpine`

```console
$ docker pull kong@sha256:621d6e3cd6d7796579d3b5b2de5b7c89cbabeea3cd492e0c9b6514a7f1a0bf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:e8a967c253bfc6d03f57351b0859fd5090fe67c68441cd78c42c7f380de55972
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30407102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b695d0917d349446ca4306d87e834d5a4a7f0b8061a8c03bc1a4eb2e2d307b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Fri, 28 Sep 2018 18:19:40 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Mon, 26 Nov 2018 21:19:56 GMT
ENV KONG_VERSION=1.0.0rc3
# Tue, 04 Dec 2018 22:20:32 GMT
ENV KONG_SHA256=a71ecdc90dd9af72a9305b4007753d237e1b982a912902ac687cfa119cac865e
# Tue, 04 Dec 2018 22:20:37 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& mkdir -p "/usr/local/kong" 	&& chgrp -R 0 "/usr/local/kong" 	&& chmod -R g=u "/usr/local/kong"
# Tue, 04 Dec 2018 22:20:37 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 22:20:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 22:20:38 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 04 Dec 2018 22:20:38 GMT
STOPSIGNAL [SIGTERM]
# Tue, 04 Dec 2018 22:20:38 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c038a333b47c4f34b06aee452ab245308a2ddf633394e4d8510ee4d3010fef92`  
		Last Modified: Tue, 04 Dec 2018 22:22:58 GMT  
		Size: 28.4 MB (28390094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e5e71ef8c8bcc7306b8dc289bace00e89c3663a14822a0264a80d22711b7df`  
		Last Modified: Tue, 04 Dec 2018 22:22:46 GMT  
		Size: 315.0 B  
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
$ docker pull kong@sha256:eb294641b50cf7aaf97aa65598f6e9483624d621588517f9561e7bec921221e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

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
