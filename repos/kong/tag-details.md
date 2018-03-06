<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kong`

-	[`kong:0.11`](#kong011)
-	[`kong:0.11.2`](#kong0112)
-	[`kong:0.11.2-alpine`](#kong0112-alpine)
-	[`kong:0.11-alpine`](#kong011-alpine)
-	[`kong:0.12`](#kong012)
-	[`kong:0.12.2`](#kong0122)
-	[`kong:0.12.2-alpine`](#kong0122-alpine)
-	[`kong:0.12.2-centos`](#kong0122-centos)
-	[`kong:0.12-alpine`](#kong012-alpine)
-	[`kong:0.12-centos`](#kong012-centos)
-	[`kong:0.13.0rc1`](#kong0130rc1)
-	[`kong:0.13.0rc1-alpine`](#kong0130rc1-alpine)
-	[`kong:0.13.0rc1-centos`](#kong0130rc1-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:507c3a0eab679071c9a6d9ad83005572f0b4f53d4f45a9d1601b5f450ee51b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:2515a825fc580cb223eff800ec27c1065adc2f15e5cf32543487997b90d20611
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122535372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bd520edf34adfbb68fb7f06f363f82047a560132ec88aafb6c168c93f0f439`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 08 Jan 2018 19:58:26 GMT
ADD file:6bba01fe946852a560a939627ba0bd1b219aaf9abc538d9e2d8470d475c5a399 in / 
# Mon, 08 Jan 2018 19:58:27 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 19:58:27 GMT
CMD ["/bin/bash"]
# Mon, 08 Jan 2018 20:28:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 08 Jan 2018 20:29:49 GMT
ENV KONG_VERSION=0.11.2
# Mon, 08 Jan 2018 20:30:12 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 08 Jan 2018 20:30:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 08 Jan 2018 20:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 Jan 2018 20:30:13 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 08 Jan 2018 20:30:14 GMT
STOPSIGNAL [SIGTERM]
# Mon, 08 Jan 2018 20:30:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6324aab5ef83f053c741718b6bfca7b2b146211ef36d9e3a67831975afa74db`  
		Last Modified: Mon, 08 Jan 2018 20:37:13 GMT  
		Size: 48.9 MB (48861836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00065c1b4232f9c003875891a7f99bed31f1ec28dd6b8d2534a6cfec2f43e338`  
		Last Modified: Mon, 08 Jan 2018 20:37:02 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:507c3a0eab679071c9a6d9ad83005572f0b4f53d4f45a9d1601b5f450ee51b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:2515a825fc580cb223eff800ec27c1065adc2f15e5cf32543487997b90d20611
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122535372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bd520edf34adfbb68fb7f06f363f82047a560132ec88aafb6c168c93f0f439`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 08 Jan 2018 19:58:26 GMT
ADD file:6bba01fe946852a560a939627ba0bd1b219aaf9abc538d9e2d8470d475c5a399 in / 
# Mon, 08 Jan 2018 19:58:27 GMT
LABEL name=CentOS Base Image vendor=CentOS license=GPLv2 build-date=20180107
# Mon, 08 Jan 2018 19:58:27 GMT
CMD ["/bin/bash"]
# Mon, 08 Jan 2018 20:28:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 08 Jan 2018 20:29:49 GMT
ENV KONG_VERSION=0.11.2
# Mon, 08 Jan 2018 20:30:12 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 08 Jan 2018 20:30:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 08 Jan 2018 20:30:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 Jan 2018 20:30:13 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 08 Jan 2018 20:30:14 GMT
STOPSIGNAL [SIGTERM]
# Mon, 08 Jan 2018 20:30:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6324aab5ef83f053c741718b6bfca7b2b146211ef36d9e3a67831975afa74db`  
		Last Modified: Mon, 08 Jan 2018 20:37:13 GMT  
		Size: 48.9 MB (48861836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00065c1b4232f9c003875891a7f99bed31f1ec28dd6b8d2534a6cfec2f43e338`  
		Last Modified: Mon, 08 Jan 2018 20:37:02 GMT  
		Size: 325.0 B  
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
$ docker pull kong@sha256:e0f313f0831daee2113f50dcf7c165a3820cfc38c4b333135feafcad24c1fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:2b57547e0e0510ae67a3182322421eff48016ac8613c1add926fd047c9dd1d9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123278243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698bd36f36953140566bd1c79356afd63bdfa75699fa1f143006b8220058991e`
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
# Tue, 06 Mar 2018 06:40:16 GMT
ENV KONG_VERSION=0.12.2
# Tue, 06 Mar 2018 06:40:33 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 06 Mar 2018 06:40:34 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 06 Mar 2018 06:40:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Mar 2018 06:40:34 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 06 Mar 2018 06:40:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 06 Mar 2018 06:40:35 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4629eb6fb7042759a2e74304bb4a1ebc54ccef3e301730fe5586082caab08cb`  
		Last Modified: Tue, 06 Mar 2018 06:41:56 GMT  
		Size: 50.3 MB (50297195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d231b9a31e3e59856e0c6e331a15b5fcd335a47472983fe1029f2f99528e5ed6`  
		Last Modified: Tue, 06 Mar 2018 06:41:49 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.2`

```console
$ docker pull kong@sha256:e0f313f0831daee2113f50dcf7c165a3820cfc38c4b333135feafcad24c1fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.2` - linux; amd64

```console
$ docker pull kong@sha256:2b57547e0e0510ae67a3182322421eff48016ac8613c1add926fd047c9dd1d9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123278243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698bd36f36953140566bd1c79356afd63bdfa75699fa1f143006b8220058991e`
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
# Tue, 06 Mar 2018 06:40:16 GMT
ENV KONG_VERSION=0.12.2
# Tue, 06 Mar 2018 06:40:33 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 06 Mar 2018 06:40:34 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 06 Mar 2018 06:40:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Mar 2018 06:40:34 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 06 Mar 2018 06:40:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 06 Mar 2018 06:40:35 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4629eb6fb7042759a2e74304bb4a1ebc54ccef3e301730fe5586082caab08cb`  
		Last Modified: Tue, 06 Mar 2018 06:41:56 GMT  
		Size: 50.3 MB (50297195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d231b9a31e3e59856e0c6e331a15b5fcd335a47472983fe1029f2f99528e5ed6`  
		Last Modified: Tue, 06 Mar 2018 06:41:49 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.2-alpine`

```console
$ docker pull kong@sha256:7b4ba9624f5f5a09d9d4e0252877f2d268772970069bcf56c152bca55934204d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:087e5ee4791ade6bf1c10e070c8bc40f329b38afe1968da3bf64ea3d7b68208a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30795000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d233d92961a79cc329a29b3bfb49e6bd9042874a2e88bf8251eddd2d0c5ac9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 01 Mar 2018 18:10:03 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:03 GMT
ENV KONG_SHA256=1ed20184d1f442662cf3197da208267201966d339c687f7a034f520603f3492b
# Thu, 01 Mar 2018 18:10:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 01 Mar 2018 18:10:14 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:15 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df667722374b00382f7e57d2eb4de28386b80e67a315c5d717e0402653861d9`  
		Last Modified: Thu, 01 Mar 2018 18:27:07 GMT  
		Size: 28.8 MB (28802930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4664a68eda43514d14642ad1dbff1f83719516f873532713ea8316b456bbe3e3`  
		Last Modified: Thu, 01 Mar 2018 18:27:01 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.2-centos`

```console
$ docker pull kong@sha256:e0f313f0831daee2113f50dcf7c165a3820cfc38c4b333135feafcad24c1fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.2-centos` - linux; amd64

```console
$ docker pull kong@sha256:2b57547e0e0510ae67a3182322421eff48016ac8613c1add926fd047c9dd1d9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123278243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698bd36f36953140566bd1c79356afd63bdfa75699fa1f143006b8220058991e`
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
# Tue, 06 Mar 2018 06:40:16 GMT
ENV KONG_VERSION=0.12.2
# Tue, 06 Mar 2018 06:40:33 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 06 Mar 2018 06:40:34 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 06 Mar 2018 06:40:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Mar 2018 06:40:34 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 06 Mar 2018 06:40:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 06 Mar 2018 06:40:35 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4629eb6fb7042759a2e74304bb4a1ebc54ccef3e301730fe5586082caab08cb`  
		Last Modified: Tue, 06 Mar 2018 06:41:56 GMT  
		Size: 50.3 MB (50297195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d231b9a31e3e59856e0c6e331a15b5fcd335a47472983fe1029f2f99528e5ed6`  
		Last Modified: Tue, 06 Mar 2018 06:41:49 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:7b4ba9624f5f5a09d9d4e0252877f2d268772970069bcf56c152bca55934204d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:087e5ee4791ade6bf1c10e070c8bc40f329b38afe1968da3bf64ea3d7b68208a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30795000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d233d92961a79cc329a29b3bfb49e6bd9042874a2e88bf8251eddd2d0c5ac9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 01 Mar 2018 18:10:03 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:03 GMT
ENV KONG_SHA256=1ed20184d1f442662cf3197da208267201966d339c687f7a034f520603f3492b
# Thu, 01 Mar 2018 18:10:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 01 Mar 2018 18:10:14 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:15 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df667722374b00382f7e57d2eb4de28386b80e67a315c5d717e0402653861d9`  
		Last Modified: Thu, 01 Mar 2018 18:27:07 GMT  
		Size: 28.8 MB (28802930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4664a68eda43514d14642ad1dbff1f83719516f873532713ea8316b456bbe3e3`  
		Last Modified: Thu, 01 Mar 2018 18:27:01 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:e0f313f0831daee2113f50dcf7c165a3820cfc38c4b333135feafcad24c1fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:2b57547e0e0510ae67a3182322421eff48016ac8613c1add926fd047c9dd1d9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123278243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698bd36f36953140566bd1c79356afd63bdfa75699fa1f143006b8220058991e`
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
# Tue, 06 Mar 2018 06:40:16 GMT
ENV KONG_VERSION=0.12.2
# Tue, 06 Mar 2018 06:40:33 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 06 Mar 2018 06:40:34 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 06 Mar 2018 06:40:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Mar 2018 06:40:34 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 06 Mar 2018 06:40:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 06 Mar 2018 06:40:35 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4629eb6fb7042759a2e74304bb4a1ebc54ccef3e301730fe5586082caab08cb`  
		Last Modified: Tue, 06 Mar 2018 06:41:56 GMT  
		Size: 50.3 MB (50297195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d231b9a31e3e59856e0c6e331a15b5fcd335a47472983fe1029f2f99528e5ed6`  
		Last Modified: Tue, 06 Mar 2018 06:41:49 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0rc1`

```console
$ docker pull kong@sha256:8bce0bd807b74e27b4b65c4f641bda97c645f6aba0401c9cfc5bdbf9161ffee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0rc1` - linux; amd64

```console
$ docker pull kong@sha256:fbadb7eb23c22615a0ddc00e6d6c129f43e6c05dc46e23f0e4af8b8397dff107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32596690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4601e23215401aa63b891609e2cf959e1b4196a18cf1eebddc20e6a01367606`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 01 Mar 2018 18:08:59 GMT
ENV KONG_VERSION=0.13.0rc1
# Thu, 01 Mar 2018 18:08:59 GMT
ENV KONG_SHA256=6cf6858025ac871483159635f6a55ca38b473a8675f19c7a189078cad0910206
# Thu, 01 Mar 2018 18:09:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 01 Mar 2018 18:09:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:09:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:09:14 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:09:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e05402b9413c0d79984185018192cf464d7475b2eaafe3d8157c4e9e56c0cce`  
		Last Modified: Thu, 01 Mar 2018 18:26:05 GMT  
		Size: 30.6 MB (30604618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690a9ca1f322f6a11d2e658156978855d9e0440ab9400ac2c40a59e9e778613`  
		Last Modified: Thu, 01 Mar 2018 18:25:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0rc1-alpine`

```console
$ docker pull kong@sha256:8bce0bd807b74e27b4b65c4f641bda97c645f6aba0401c9cfc5bdbf9161ffee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0rc1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:fbadb7eb23c22615a0ddc00e6d6c129f43e6c05dc46e23f0e4af8b8397dff107
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32596690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4601e23215401aa63b891609e2cf959e1b4196a18cf1eebddc20e6a01367606`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 01 Mar 2018 18:08:59 GMT
ENV KONG_VERSION=0.13.0rc1
# Thu, 01 Mar 2018 18:08:59 GMT
ENV KONG_SHA256=6cf6858025ac871483159635f6a55ca38b473a8675f19c7a189078cad0910206
# Thu, 01 Mar 2018 18:09:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 01 Mar 2018 18:09:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:09:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:09:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:09:14 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:09:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e05402b9413c0d79984185018192cf464d7475b2eaafe3d8157c4e9e56c0cce`  
		Last Modified: Thu, 01 Mar 2018 18:26:05 GMT  
		Size: 30.6 MB (30604618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690a9ca1f322f6a11d2e658156978855d9e0440ab9400ac2c40a59e9e778613`  
		Last Modified: Thu, 01 Mar 2018 18:25:57 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0rc1-centos`

```console
$ docker pull kong@sha256:aff64dcbd7e9da83db4007b8b9a02dbf1980b125487be2559cef26e85f6c7d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0rc1-centos` - linux; amd64

```console
$ docker pull kong@sha256:712c5fc9b7d0e3e20494420c182068081de10379183afe2cdaa8198acd73e821
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.2 MB (126211609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9111fd8344faeda88d46c69f44edf442d5dfaf424cb6e1ed5800b9dd543e81`
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
# Tue, 06 Mar 2018 06:39:33 GMT
ENV KONG_VERSION=0.13.0rc1
# Tue, 06 Mar 2018 06:39:58 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 06 Mar 2018 06:39:58 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 06 Mar 2018 06:39:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Mar 2018 06:39:59 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 06 Mar 2018 06:39:59 GMT
STOPSIGNAL [SIGTERM]
# Tue, 06 Mar 2018 06:39:59 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896bbab65d8f0e88d716a287f16d844905e54e16537020b53dec4a43544da2ad`  
		Last Modified: Tue, 06 Mar 2018 06:41:28 GMT  
		Size: 53.2 MB (53230561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97ff4579ff1802ad99ee372600ec60cf8b2ee93504465fd9124d7db38e80a82`  
		Last Modified: Tue, 06 Mar 2018 06:41:20 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:e0f313f0831daee2113f50dcf7c165a3820cfc38c4b333135feafcad24c1fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:2b57547e0e0510ae67a3182322421eff48016ac8613c1add926fd047c9dd1d9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123278243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:698bd36f36953140566bd1c79356afd63bdfa75699fa1f143006b8220058991e`
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
# Tue, 06 Mar 2018 06:40:16 GMT
ENV KONG_VERSION=0.12.2
# Tue, 06 Mar 2018 06:40:33 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 06 Mar 2018 06:40:34 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 06 Mar 2018 06:40:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 06 Mar 2018 06:40:34 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 06 Mar 2018 06:40:34 GMT
STOPSIGNAL [SIGTERM]
# Tue, 06 Mar 2018 06:40:35 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5e35d10a3ebadf9d6ab606ce72e1e77f8646b2e2ff8dd3a60d4401c3e3a76f31`  
		Last Modified: Tue, 06 Mar 2018 01:04:21 GMT  
		Size: 73.0 MB (72980725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4629eb6fb7042759a2e74304bb4a1ebc54ccef3e301730fe5586082caab08cb`  
		Last Modified: Tue, 06 Mar 2018 06:41:56 GMT  
		Size: 50.3 MB (50297195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d231b9a31e3e59856e0c6e331a15b5fcd335a47472983fe1029f2f99528e5ed6`  
		Last Modified: Tue, 06 Mar 2018 06:41:49 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
