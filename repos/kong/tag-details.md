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
$ docker pull kong@sha256:225fea7355e6dc845cfb3f02307237be9aba4d8f852819ce067c96333dde0538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:ff14aa64de3b38c18e003199fb800cdda869ddbfe27fd321a7c1c9b1181f2d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d5d200351546af4b755ab8b7037236e834ab0e478f7275d083e2f9f845dcbe`
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
# Thu, 01 Mar 2018 18:10:30 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:10:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:45 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d79b10ccb1b96cff0317dce0428491c17d0091bff86b96d43cb0d277becad`  
		Last Modified: Thu, 01 Mar 2018 18:27:43 GMT  
		Size: 5.7 MB (5705545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261ce38e5a918bd6bcb215f06a711a2cf95933b1137be1fbe186d989bb6a16e`  
		Last Modified: Thu, 01 Mar 2018 18:27:42 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.2`

```console
$ docker pull kong@sha256:225fea7355e6dc845cfb3f02307237be9aba4d8f852819ce067c96333dde0538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.2` - linux; amd64

```console
$ docker pull kong@sha256:ff14aa64de3b38c18e003199fb800cdda869ddbfe27fd321a7c1c9b1181f2d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d5d200351546af4b755ab8b7037236e834ab0e478f7275d083e2f9f845dcbe`
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
# Thu, 01 Mar 2018 18:10:30 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:10:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:45 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d79b10ccb1b96cff0317dce0428491c17d0091bff86b96d43cb0d277becad`  
		Last Modified: Thu, 01 Mar 2018 18:27:43 GMT  
		Size: 5.7 MB (5705545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261ce38e5a918bd6bcb215f06a711a2cf95933b1137be1fbe186d989bb6a16e`  
		Last Modified: Thu, 01 Mar 2018 18:27:42 GMT  
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
$ docker pull kong@sha256:225fea7355e6dc845cfb3f02307237be9aba4d8f852819ce067c96333dde0538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.2-centos` - linux; amd64

```console
$ docker pull kong@sha256:ff14aa64de3b38c18e003199fb800cdda869ddbfe27fd321a7c1c9b1181f2d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d5d200351546af4b755ab8b7037236e834ab0e478f7275d083e2f9f845dcbe`
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
# Thu, 01 Mar 2018 18:10:30 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:10:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:45 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d79b10ccb1b96cff0317dce0428491c17d0091bff86b96d43cb0d277becad`  
		Last Modified: Thu, 01 Mar 2018 18:27:43 GMT  
		Size: 5.7 MB (5705545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261ce38e5a918bd6bcb215f06a711a2cf95933b1137be1fbe186d989bb6a16e`  
		Last Modified: Thu, 01 Mar 2018 18:27:42 GMT  
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
$ docker pull kong@sha256:225fea7355e6dc845cfb3f02307237be9aba4d8f852819ce067c96333dde0538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:ff14aa64de3b38c18e003199fb800cdda869ddbfe27fd321a7c1c9b1181f2d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d5d200351546af4b755ab8b7037236e834ab0e478f7275d083e2f9f845dcbe`
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
# Thu, 01 Mar 2018 18:10:30 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:10:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:45 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d79b10ccb1b96cff0317dce0428491c17d0091bff86b96d43cb0d277becad`  
		Last Modified: Thu, 01 Mar 2018 18:27:43 GMT  
		Size: 5.7 MB (5705545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261ce38e5a918bd6bcb215f06a711a2cf95933b1137be1fbe186d989bb6a16e`  
		Last Modified: Thu, 01 Mar 2018 18:27:42 GMT  
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
$ docker pull kong@sha256:b766381f5bf855c8e200d28b1e479f4fa12b18d11717f2f486cbd41753bb7df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.0rc1-centos` - linux; amd64

```console
$ docker pull kong@sha256:409a24c330fffd8cf25da06afed2be8abe7773ee8e4d8d39a9a988c2ab7ce2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9cd290e9c1204b3234230ed2eaadc25fb252526e11b394530b4017eeed7bcd`
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
# Thu, 01 Mar 2018 18:09:29 GMT
ENV KONG_VERSION=0.13.0rc1
# Thu, 01 Mar 2018 18:09:46 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:09:46 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:09:47 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:09:47 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:09:47 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4580e90870fa5c03c0adfbf588e9530f1088b6295a9050c0a94b9db55054d998`  
		Last Modified: Thu, 01 Mar 2018 18:26:42 GMT  
		Size: 5.7 MB (5705519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e5ea70f1fe23ce428df272f258726e26e4b439024dee957de636a24e681f13`  
		Last Modified: Thu, 01 Mar 2018 18:26:40 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:225fea7355e6dc845cfb3f02307237be9aba4d8f852819ce067c96333dde0538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:ff14aa64de3b38c18e003199fb800cdda869ddbfe27fd321a7c1c9b1181f2d90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.4 MB (79379079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d5d200351546af4b755ab8b7037236e834ab0e478f7275d083e2f9f845dcbe`
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
# Thu, 01 Mar 2018 18:10:30 GMT
ENV KONG_VERSION=0.12.2
# Thu, 01 Mar 2018 18:10:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 01 Mar 2018 18:10:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 01 Mar 2018 18:10:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 01 Mar 2018 18:10:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 01 Mar 2018 18:10:45 GMT
STOPSIGNAL [SIGTERM]
# Thu, 01 Mar 2018 18:10:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d79b10ccb1b96cff0317dce0428491c17d0091bff86b96d43cb0d277becad`  
		Last Modified: Thu, 01 Mar 2018 18:27:43 GMT  
		Size: 5.7 MB (5705545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9261ce38e5a918bd6bcb215f06a711a2cf95933b1137be1fbe186d989bb6a16e`  
		Last Modified: Thu, 01 Mar 2018 18:27:42 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
