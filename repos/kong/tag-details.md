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
-	[`kong:0.13.0`](#kong0130)
-	[`kong:0.13.0-alpine`](#kong0130-alpine)
-	[`kong:0.13.0-centos`](#kong0130-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:358f51e2db03178cace81520197aea1ead5b6ab2a75953ae7d6bf1f19c4de2c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:935d70feeab0e6bf39cf8bfc09433588e051a4357d9bda2239cf0f2f331f38c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865f4aff14c3388164fabc7372136083ecbdbb461bce9bc14bf53dae71c635af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 06 Mar 2018 06:40:50 GMT
ENV KONG_VERSION=0.11.2
# Wed, 07 Mar 2018 20:34:42 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 07 Mar 2018 20:34:43 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 07 Mar 2018 20:34:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Mar 2018 20:34:43 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 07 Mar 2018 20:34:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 07 Mar 2018 20:34:44 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e26312a87fee69055ee8532e1ad73222e7062f2a38b24cef30896fa928a22d8`  
		Last Modified: Wed, 07 Mar 2018 20:35:20 GMT  
		Size: 48.9 MB (48856131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc12dad0a4d38ac62ad5c27f93f89914b1e9a40b42f21e98eeda2f2fcfb26f`  
		Last Modified: Wed, 07 Mar 2018 20:35:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:358f51e2db03178cace81520197aea1ead5b6ab2a75953ae7d6bf1f19c4de2c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:935d70feeab0e6bf39cf8bfc09433588e051a4357d9bda2239cf0f2f331f38c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121837176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:865f4aff14c3388164fabc7372136083ecbdbb461bce9bc14bf53dae71c635af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 06 Mar 2018 06:40:50 GMT
ENV KONG_VERSION=0.11.2
# Wed, 07 Mar 2018 20:34:42 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 07 Mar 2018 20:34:43 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 07 Mar 2018 20:34:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Mar 2018 20:34:43 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 07 Mar 2018 20:34:43 GMT
STOPSIGNAL [SIGTERM]
# Wed, 07 Mar 2018 20:34:44 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e26312a87fee69055ee8532e1ad73222e7062f2a38b24cef30896fa928a22d8`  
		Last Modified: Wed, 07 Mar 2018 20:35:20 GMT  
		Size: 48.9 MB (48856131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc12dad0a4d38ac62ad5c27f93f89914b1e9a40b42f21e98eeda2f2fcfb26f`  
		Last Modified: Wed, 07 Mar 2018 20:35:13 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:0bf9d37aac28aa98336ca8041639512e975d359586334421da20384472d61e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:9aef09089b458ea181f9b87836e814b05cf7da6b722de03ecd96de31a2760d79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30032442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faaa9cf26b6af4cda25abc86b91f680b0f79122f57467bbcada859b77d8567a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 10 Jan 2018 01:27:04 GMT
ENV KONG_VERSION=0.11.2
# Wed, 10 Jan 2018 01:27:04 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Wed, 10 Jan 2018 01:27:17 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 10 Jan 2018 01:27:17 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 10 Jan 2018 01:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 01:27:18 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 10 Jan 2018 01:27:18 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 01:27:18 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b03f8754199ad4a2666ff8d835cb1d5ed0261855f7ace9adc6946ab0f732a3d`  
		Last Modified: Wed, 10 Jan 2018 01:28:15 GMT  
		Size: 28.0 MB (28040372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4e0ff8ed8f8845910f93b2df44787de2ffba26e22611b10527b9d45de381cc`  
		Last Modified: Wed, 10 Jan 2018 01:28:10 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:0bf9d37aac28aa98336ca8041639512e975d359586334421da20384472d61e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:9aef09089b458ea181f9b87836e814b05cf7da6b722de03ecd96de31a2760d79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30032442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faaa9cf26b6af4cda25abc86b91f680b0f79122f57467bbcada859b77d8567a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 10 Jan 2018 01:27:04 GMT
ENV KONG_VERSION=0.11.2
# Wed, 10 Jan 2018 01:27:04 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Wed, 10 Jan 2018 01:27:17 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 10 Jan 2018 01:27:17 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 10 Jan 2018 01:27:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Jan 2018 01:27:18 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 10 Jan 2018 01:27:18 GMT
STOPSIGNAL [SIGTERM]
# Wed, 10 Jan 2018 01:27:18 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b03f8754199ad4a2666ff8d835cb1d5ed0261855f7ace9adc6946ab0f732a3d`  
		Last Modified: Wed, 10 Jan 2018 01:28:15 GMT  
		Size: 28.0 MB (28040372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4e0ff8ed8f8845910f93b2df44787de2ffba26e22611b10527b9d45de381cc`  
		Last Modified: Wed, 10 Jan 2018 01:28:10 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12`

```console
$ docker pull kong@sha256:5a4e72d3fafa29e85239e2789d29e5461eda0e2f0764db72398c95e5b2dfce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:db6d221c6a24f056fc8e84cd8b00491730ffd3683c2fa6f1facfd4795d984fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123294585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afbb6ef6005c77e827487c1cc8f7fc0a4e1fab65ba3a20b721dc9bc17ae608d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 13 Mar 2018 00:09:15 GMT
ENV KONG_VERSION=0.12.3
# Tue, 13 Mar 2018 00:09:35 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 13 Mar 2018 00:09:35 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 13 Mar 2018 00:09:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Mar 2018 00:09:36 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 13 Mar 2018 00:09:36 GMT
STOPSIGNAL [SIGTERM]
# Tue, 13 Mar 2018 00:09:36 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c03bf803bd295d1e77060c16f61ca6b23cc7985885325c95356f27b33159fe`  
		Last Modified: Tue, 13 Mar 2018 00:12:03 GMT  
		Size: 50.3 MB (50313538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf0bffddf0aeea794e4635172ff2086d892067447bad2271e9c7df6dbaabe3`  
		Last Modified: Tue, 13 Mar 2018 00:11:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:5a4e72d3fafa29e85239e2789d29e5461eda0e2f0764db72398c95e5b2dfce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:db6d221c6a24f056fc8e84cd8b00491730ffd3683c2fa6f1facfd4795d984fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123294585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afbb6ef6005c77e827487c1cc8f7fc0a4e1fab65ba3a20b721dc9bc17ae608d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 13 Mar 2018 00:09:15 GMT
ENV KONG_VERSION=0.12.3
# Tue, 13 Mar 2018 00:09:35 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 13 Mar 2018 00:09:35 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 13 Mar 2018 00:09:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Mar 2018 00:09:36 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 13 Mar 2018 00:09:36 GMT
STOPSIGNAL [SIGTERM]
# Tue, 13 Mar 2018 00:09:36 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c03bf803bd295d1e77060c16f61ca6b23cc7985885325c95356f27b33159fe`  
		Last Modified: Tue, 13 Mar 2018 00:12:03 GMT  
		Size: 50.3 MB (50313538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf0bffddf0aeea794e4635172ff2086d892067447bad2271e9c7df6dbaabe3`  
		Last Modified: Tue, 13 Mar 2018 00:11:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:838b012cc9c001eb065e120f159652effdc06887e1f2bfc049d811da1adeafa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:f16750526362d9e4209ebc3143cb7049d8ef90902da41bd1bb4537796acf79a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30796479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f3ef766cb665cc8d55ab87bdd219d819b116359026a31238c112b1c1582aea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 13 Mar 2018 00:08:47 GMT
ENV KONG_VERSION=0.12.3
# Tue, 13 Mar 2018 00:08:47 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Tue, 13 Mar 2018 00:08:58 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 13 Mar 2018 00:08:59 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 13 Mar 2018 00:08:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Mar 2018 00:08:59 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 13 Mar 2018 00:08:59 GMT
STOPSIGNAL [SIGTERM]
# Tue, 13 Mar 2018 00:09:00 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e653a3ca5b95110e88b30ac36b71fc8d8ec8b80b632da09ac8272d9af367aa`  
		Last Modified: Tue, 13 Mar 2018 00:11:17 GMT  
		Size: 28.8 MB (28804407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bc798e333806ac96de0410820a7e624b56b12d4a62002fbedccbf3a8f81506`  
		Last Modified: Tue, 13 Mar 2018 00:11:12 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:5a4e72d3fafa29e85239e2789d29e5461eda0e2f0764db72398c95e5b2dfce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:db6d221c6a24f056fc8e84cd8b00491730ffd3683c2fa6f1facfd4795d984fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123294585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afbb6ef6005c77e827487c1cc8f7fc0a4e1fab65ba3a20b721dc9bc17ae608d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 13 Mar 2018 00:09:15 GMT
ENV KONG_VERSION=0.12.3
# Tue, 13 Mar 2018 00:09:35 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 13 Mar 2018 00:09:35 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 13 Mar 2018 00:09:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Mar 2018 00:09:36 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 13 Mar 2018 00:09:36 GMT
STOPSIGNAL [SIGTERM]
# Tue, 13 Mar 2018 00:09:36 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c03bf803bd295d1e77060c16f61ca6b23cc7985885325c95356f27b33159fe`  
		Last Modified: Tue, 13 Mar 2018 00:12:03 GMT  
		Size: 50.3 MB (50313538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf0bffddf0aeea794e4635172ff2086d892067447bad2271e9c7df6dbaabe3`  
		Last Modified: Tue, 13 Mar 2018 00:11:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:838b012cc9c001eb065e120f159652effdc06887e1f2bfc049d811da1adeafa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:f16750526362d9e4209ebc3143cb7049d8ef90902da41bd1bb4537796acf79a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30796479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f3ef766cb665cc8d55ab87bdd219d819b116359026a31238c112b1c1582aea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Tue, 13 Mar 2018 00:08:47 GMT
ENV KONG_VERSION=0.12.3
# Tue, 13 Mar 2018 00:08:47 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Tue, 13 Mar 2018 00:08:58 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Tue, 13 Mar 2018 00:08:59 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 13 Mar 2018 00:08:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Mar 2018 00:08:59 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 13 Mar 2018 00:08:59 GMT
STOPSIGNAL [SIGTERM]
# Tue, 13 Mar 2018 00:09:00 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e653a3ca5b95110e88b30ac36b71fc8d8ec8b80b632da09ac8272d9af367aa`  
		Last Modified: Tue, 13 Mar 2018 00:11:17 GMT  
		Size: 28.8 MB (28804407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bc798e333806ac96de0410820a7e624b56b12d4a62002fbedccbf3a8f81506`  
		Last Modified: Tue, 13 Mar 2018 00:11:12 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:5a4e72d3fafa29e85239e2789d29e5461eda0e2f0764db72398c95e5b2dfce57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:db6d221c6a24f056fc8e84cd8b00491730ffd3683c2fa6f1facfd4795d984fe3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123294585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6afbb6ef6005c77e827487c1cc8f7fc0a4e1fab65ba3a20b721dc9bc17ae608d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 13 Mar 2018 00:09:15 GMT
ENV KONG_VERSION=0.12.3
# Tue, 13 Mar 2018 00:09:35 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 13 Mar 2018 00:09:35 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 13 Mar 2018 00:09:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Mar 2018 00:09:36 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 13 Mar 2018 00:09:36 GMT
STOPSIGNAL [SIGTERM]
# Tue, 13 Mar 2018 00:09:36 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c03bf803bd295d1e77060c16f61ca6b23cc7985885325c95356f27b33159fe`  
		Last Modified: Tue, 13 Mar 2018 00:12:03 GMT  
		Size: 50.3 MB (50313538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf0bffddf0aeea794e4635172ff2086d892067447bad2271e9c7df6dbaabe3`  
		Last Modified: Tue, 13 Mar 2018 00:11:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0`

```console
$ docker pull kong@sha256:b035a58f3e22af6e5bbf2d5603ebf6e6955d66799a4d6773a17d13aca3cc47d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0` - linux; amd64

```console
$ docker pull kong@sha256:fa0f3d4a30cdf397a2d12ec4d31229c2a36820d6a2493d41ccbe38152486b12e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32598490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b23a2f30cb0729dd076e996898d6845cd54ee9a15be2a35a78705ff918618f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_VERSION=0.13.0
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_SHA256=93a277a98276cc857198db66cb8257dc30009bcda2ae0a3322f6e20a6cf8d91a
# Fri, 23 Mar 2018 19:58:56 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 23 Mar 2018 19:58:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 23 Mar 2018 19:58:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Mar 2018 19:58:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 23 Mar 2018 19:58:58 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Mar 2018 19:58:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc145e54e4da6596d95c6ab5c30a78a7c88aaafbc7d5c702ba69f2552841b06`  
		Last Modified: Fri, 23 Mar 2018 20:00:17 GMT  
		Size: 30.6 MB (30606420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b90ef13a77c253567091abe3f711c19e0044736466093e278ddb6e3635bcf8`  
		Last Modified: Fri, 23 Mar 2018 20:00:11 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0-alpine`

```console
$ docker pull kong@sha256:b035a58f3e22af6e5bbf2d5603ebf6e6955d66799a4d6773a17d13aca3cc47d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:fa0f3d4a30cdf397a2d12ec4d31229c2a36820d6a2493d41ccbe38152486b12e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32598490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b23a2f30cb0729dd076e996898d6845cd54ee9a15be2a35a78705ff918618f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_VERSION=0.13.0
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_SHA256=93a277a98276cc857198db66cb8257dc30009bcda2ae0a3322f6e20a6cf8d91a
# Fri, 23 Mar 2018 19:58:56 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 23 Mar 2018 19:58:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 23 Mar 2018 19:58:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Mar 2018 19:58:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 23 Mar 2018 19:58:58 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Mar 2018 19:58:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc145e54e4da6596d95c6ab5c30a78a7c88aaafbc7d5c702ba69f2552841b06`  
		Last Modified: Fri, 23 Mar 2018 20:00:17 GMT  
		Size: 30.6 MB (30606420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b90ef13a77c253567091abe3f711c19e0044736466093e278ddb6e3635bcf8`  
		Last Modified: Fri, 23 Mar 2018 20:00:11 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0-centos`

```console
$ docker pull kong@sha256:3ae3b62300665d48eb76b0d124d37a72c2c785e5c2866b51569a04878a3c3655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:39194918e010347ba65ceaacc8feb244b5d84128ae76ceb2c268391745cea0d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126213328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9dc55619b772da4231b0ca2f08658cb7a7e9d041e1aaa619ffd7448b385fbc2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 06 Mar 2018 00:48:12 GMT
ADD file:8d83f3e2c14f39e7f7b281117a45e245c1941668f2d560e9f7ac23da89d667a9 in / 
# Tue, 06 Mar 2018 00:48:12 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180302
# Tue, 06 Mar 2018 00:48:12 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 06:39:33 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Fri, 23 Mar 2018 19:59:17 GMT
ENV KONG_VERSION=0.13.0
# Fri, 23 Mar 2018 19:59:43 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Fri, 23 Mar 2018 19:59:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 23 Mar 2018 19:59:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Mar 2018 19:59:44 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 23 Mar 2018 19:59:44 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Mar 2018 19:59:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee73b3347d7fce5e62aaccd337d6f3b3bd118237f348a6eb4407f896dd9520c1`  
		Last Modified: Fri, 23 Mar 2018 20:01:25 GMT  
		Size: 53.2 MB (53232280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b268959bd6dfe3b893225b38ddc14cfaaec4242f1b9e860a87b847d1bded0c7`  
		Last Modified: Fri, 23 Mar 2018 20:01:17 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:b035a58f3e22af6e5bbf2d5603ebf6e6955d66799a4d6773a17d13aca3cc47d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:fa0f3d4a30cdf397a2d12ec4d31229c2a36820d6a2493d41ccbe38152486b12e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32598490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b23a2f30cb0729dd076e996898d6845cd54ee9a15be2a35a78705ff918618f2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_VERSION=0.13.0
# Fri, 23 Mar 2018 19:58:46 GMT
ENV KONG_SHA256=93a277a98276cc857198db66cb8257dc30009bcda2ae0a3322f6e20a6cf8d91a
# Fri, 23 Mar 2018 19:58:56 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 23 Mar 2018 19:58:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 23 Mar 2018 19:58:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Mar 2018 19:58:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 23 Mar 2018 19:58:58 GMT
STOPSIGNAL [SIGTERM]
# Fri, 23 Mar 2018 19:58:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc145e54e4da6596d95c6ab5c30a78a7c88aaafbc7d5c702ba69f2552841b06`  
		Last Modified: Fri, 23 Mar 2018 20:00:17 GMT  
		Size: 30.6 MB (30606420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b90ef13a77c253567091abe3f711c19e0044736466093e278ddb6e3635bcf8`  
		Last Modified: Fri, 23 Mar 2018 20:00:11 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
