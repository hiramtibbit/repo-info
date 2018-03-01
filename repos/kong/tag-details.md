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
$ docker pull kong@sha256:ed49c38f573ab06e665973c68f9219e86731fd41dce884c97f60b55fccea636a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:472d63617b434b90013b7f8b9ddfdc0af1d4ae5e35c25f31d1f9015af7dd4ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123954041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebd318b992872831887eec62b30011b72c03a1149e40601cb25d5e00f8cae6b`
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
# Fri, 19 Jan 2018 19:56:10 GMT
ENV KONG_VERSION=0.12.1
# Fri, 19 Jan 2018 20:01:30 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Fri, 19 Jan 2018 20:01:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 19 Jan 2018 20:01:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Jan 2018 20:01:31 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 19 Jan 2018 20:01:31 GMT
STOPSIGNAL [SIGTERM]
# Fri, 19 Jan 2018 20:01:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ddffada5008c06cc7f3e22896b5ebdaeafa0c268732cc71df679bcd9eaa1b`  
		Last Modified: Fri, 19 Jan 2018 20:02:41 GMT  
		Size: 50.3 MB (50280505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf4b0e4b3ee0878c2331817366c770ddd0c4acd227122aefe900d2add5965e`  
		Last Modified: Fri, 19 Jan 2018 20:02:34 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.2`

**does not exist** (yet?)

## `kong:0.12.2-alpine`

**does not exist** (yet?)

## `kong:0.12.2-centos`

**does not exist** (yet?)

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:53a3f3036b6c6f39a2b7a10fae95a06559d1b58cddc0249b1532045d48210d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:ea21583280da50692691c877e6696577bda1e2ac46ecf876874212d688a1ada1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30792023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54c874d32ceed59274451ee7e0cbb4a04e6d968eec92345a06eacf06aeaf34e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 19 Jan 2018 19:55:33 GMT
ENV KONG_VERSION=0.12.1
# Fri, 19 Jan 2018 19:55:33 GMT
ENV KONG_SHA256=9f699e20e7d3aa6906b14d6b52cae9996995d595d646f9b10ce09c61d91a4257
# Fri, 19 Jan 2018 19:55:46 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 19 Jan 2018 19:55:47 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 19 Jan 2018 19:55:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Jan 2018 19:55:47 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 19 Jan 2018 19:55:48 GMT
STOPSIGNAL [SIGTERM]
# Fri, 19 Jan 2018 19:55:48 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448b4a0e256832185d143f5a88733f17f40a80fb8205990d9be165d58fca881`  
		Last Modified: Fri, 19 Jan 2018 20:02:04 GMT  
		Size: 28.8 MB (28799953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1c9d87b8a8228d9c3ce3c9fa79825e0e829b195e03fe9b18fc44901eb146a`  
		Last Modified: Fri, 19 Jan 2018 20:01:56 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:ed49c38f573ab06e665973c68f9219e86731fd41dce884c97f60b55fccea636a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:472d63617b434b90013b7f8b9ddfdc0af1d4ae5e35c25f31d1f9015af7dd4ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123954041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebd318b992872831887eec62b30011b72c03a1149e40601cb25d5e00f8cae6b`
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
# Fri, 19 Jan 2018 19:56:10 GMT
ENV KONG_VERSION=0.12.1
# Fri, 19 Jan 2018 20:01:30 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Fri, 19 Jan 2018 20:01:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 19 Jan 2018 20:01:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Jan 2018 20:01:31 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 19 Jan 2018 20:01:31 GMT
STOPSIGNAL [SIGTERM]
# Fri, 19 Jan 2018 20:01:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ddffada5008c06cc7f3e22896b5ebdaeafa0c268732cc71df679bcd9eaa1b`  
		Last Modified: Fri, 19 Jan 2018 20:02:41 GMT  
		Size: 50.3 MB (50280505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf4b0e4b3ee0878c2331817366c770ddd0c4acd227122aefe900d2add5965e`  
		Last Modified: Fri, 19 Jan 2018 20:02:34 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.0rc1`

**does not exist** (yet?)

## `kong:0.13.0rc1-alpine`

**does not exist** (yet?)

## `kong:0.13.0rc1-centos`

**does not exist** (yet?)

## `kong:latest`

```console
$ docker pull kong@sha256:ed49c38f573ab06e665973c68f9219e86731fd41dce884c97f60b55fccea636a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:472d63617b434b90013b7f8b9ddfdc0af1d4ae5e35c25f31d1f9015af7dd4ce0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123954041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebd318b992872831887eec62b30011b72c03a1149e40601cb25d5e00f8cae6b`
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
# Fri, 19 Jan 2018 19:56:10 GMT
ENV KONG_VERSION=0.12.1
# Fri, 19 Jan 2018 20:01:30 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=dists%2Fkong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Fri, 19 Jan 2018 20:01:31 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 19 Jan 2018 20:01:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 19 Jan 2018 20:01:31 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 19 Jan 2018 20:01:31 GMT
STOPSIGNAL [SIGTERM]
# Fri, 19 Jan 2018 20:01:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:af4b0a2388c69010cf675c050e51cb1fabbdf2303f955c31805b280324fd4523`  
		Last Modified: Mon, 08 Jan 2018 20:09:37 GMT  
		Size: 73.7 MB (73673211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7ddffada5008c06cc7f3e22896b5ebdaeafa0c268732cc71df679bcd9eaa1b`  
		Last Modified: Fri, 19 Jan 2018 20:02:41 GMT  
		Size: 50.3 MB (50280505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedf4b0e4b3ee0878c2331817366c770ddd0c4acd227122aefe900d2add5965e`  
		Last Modified: Fri, 19 Jan 2018 20:02:34 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
