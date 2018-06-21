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
-	[`kong:0.14.0rc1`](#kong0140rc1)
-	[`kong:0.14.0rc1-alpine`](#kong0140rc1-alpine)
-	[`kong:0.14.0rc1-centos`](#kong0140rc1-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:ee704eea07b462531773e9db9ed0a9c52dd1749a1bffc4ebefb2a7547a7ca3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:e8938f6c96430accdd6a68279d8cbca14802540b8f235fb79402fd920c65ee15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123916556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46af4204bc85e579aa2afc21a32198808fb4d5d4b747fd781a0e34f72ca9fae5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:39:39 GMT
ENV KONG_VERSION=0.11.2
# Mon, 04 Jun 2018 22:39:54 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:39:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:39:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:39:55 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:39:55 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:39:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c059195173bf9ff716ac81705d6fc4751a0df60891b98e659ad48bc6b9f72b38`  
		Last Modified: Mon, 04 Jun 2018 22:41:30 GMT  
		Size: 49.2 MB (49222867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0265fb1b88961534b1a8a3bb3e1f733509adb64b7cfb85474b97836d71da38`  
		Last Modified: Mon, 04 Jun 2018 22:41:23 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:ee704eea07b462531773e9db9ed0a9c52dd1749a1bffc4ebefb2a7547a7ca3c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:e8938f6c96430accdd6a68279d8cbca14802540b8f235fb79402fd920c65ee15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123916556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46af4204bc85e579aa2afc21a32198808fb4d5d4b747fd781a0e34f72ca9fae5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:39:39 GMT
ENV KONG_VERSION=0.11.2
# Mon, 04 Jun 2018 22:39:54 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:39:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:39:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:39:55 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:39:55 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:39:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c059195173bf9ff716ac81705d6fc4751a0df60891b98e659ad48bc6b9f72b38`  
		Last Modified: Mon, 04 Jun 2018 22:41:30 GMT  
		Size: 49.2 MB (49222867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0265fb1b88961534b1a8a3bb3e1f733509adb64b7cfb85474b97836d71da38`  
		Last Modified: Mon, 04 Jun 2018 22:41:23 GMT  
		Size: 321.0 B  
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
$ docker pull kong@sha256:c03f0cbf186e370adffb74049fddfacfd7437e3e74f2de1e8c318a7a6ab8c161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:b8c29b19a07e179fa6d7998fede5ca04f5887ddf3d8d66c77fb3b1bda898be16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125358884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca422e92d085259828ec8e78fb95f6c44090a7f2c378ec3d58181204c74934de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:39:12 GMT
ENV KONG_VERSION=0.12.3
# Mon, 04 Jun 2018 22:39:23 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:39:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:39:24 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:39:24 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:39:24 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710699ece4759ea737eef758b29f674b3f8a0b5043518cbb5f2551e0f4686a4`  
		Last Modified: Mon, 04 Jun 2018 22:40:47 GMT  
		Size: 50.7 MB (50665194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a3bbab8740cc090c47d936c2e5e01568070ece9f91c677435c747cd092a448`  
		Last Modified: Mon, 04 Jun 2018 22:40:40 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:c03f0cbf186e370adffb74049fddfacfd7437e3e74f2de1e8c318a7a6ab8c161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:b8c29b19a07e179fa6d7998fede5ca04f5887ddf3d8d66c77fb3b1bda898be16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125358884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca422e92d085259828ec8e78fb95f6c44090a7f2c378ec3d58181204c74934de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:39:12 GMT
ENV KONG_VERSION=0.12.3
# Mon, 04 Jun 2018 22:39:23 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:39:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:39:24 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:39:24 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:39:24 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710699ece4759ea737eef758b29f674b3f8a0b5043518cbb5f2551e0f4686a4`  
		Last Modified: Mon, 04 Jun 2018 22:40:47 GMT  
		Size: 50.7 MB (50665194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a3bbab8740cc090c47d936c2e5e01568070ece9f91c677435c747cd092a448`  
		Last Modified: Mon, 04 Jun 2018 22:40:40 GMT  
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
$ docker pull kong@sha256:c03f0cbf186e370adffb74049fddfacfd7437e3e74f2de1e8c318a7a6ab8c161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:b8c29b19a07e179fa6d7998fede5ca04f5887ddf3d8d66c77fb3b1bda898be16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125358884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca422e92d085259828ec8e78fb95f6c44090a7f2c378ec3d58181204c74934de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:39:12 GMT
ENV KONG_VERSION=0.12.3
# Mon, 04 Jun 2018 22:39:23 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:39:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:39:24 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:39:24 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:39:24 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710699ece4759ea737eef758b29f674b3f8a0b5043518cbb5f2551e0f4686a4`  
		Last Modified: Mon, 04 Jun 2018 22:40:47 GMT  
		Size: 50.7 MB (50665194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a3bbab8740cc090c47d936c2e5e01568070ece9f91c677435c747cd092a448`  
		Last Modified: Mon, 04 Jun 2018 22:40:40 GMT  
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
$ docker pull kong@sha256:c03f0cbf186e370adffb74049fddfacfd7437e3e74f2de1e8c318a7a6ab8c161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:b8c29b19a07e179fa6d7998fede5ca04f5887ddf3d8d66c77fb3b1bda898be16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125358884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca422e92d085259828ec8e78fb95f6c44090a7f2c378ec3d58181204c74934de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:39:12 GMT
ENV KONG_VERSION=0.12.3
# Mon, 04 Jun 2018 22:39:23 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:39:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:39:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:39:24 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:39:24 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:39:24 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4710699ece4759ea737eef758b29f674b3f8a0b5043518cbb5f2551e0f4686a4`  
		Last Modified: Mon, 04 Jun 2018 22:40:47 GMT  
		Size: 50.7 MB (50665194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a3bbab8740cc090c47d936c2e5e01568070ece9f91c677435c747cd092a448`  
		Last Modified: Mon, 04 Jun 2018 22:40:40 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:625281350f36a6cd4a0986a56f119273664740e1ffa5bc056c257f4a10f2dff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:19c74f52023caeb4a396186744c1538ec51122bf8183ade252a66f74f4e799ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33373706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dbcf499414ac8d76c75c8843d726018bc964d07b4fd386a5038435dab5dfb9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 25 Apr 2018 20:28:00 GMT
ENV KONG_VERSION=0.13.1
# Wed, 25 Apr 2018 20:28:01 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Wed, 25 Apr 2018 20:28:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 25 Apr 2018 20:28:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 25 Apr 2018 20:28:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Apr 2018 20:28:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 25 Apr 2018 20:28:14 GMT
STOPSIGNAL [SIGTERM]
# Wed, 25 Apr 2018 20:28:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48d98b461a894e8e34ae6e02823f600aa4aafedc2208c8b99fb88d806c1911a`  
		Last Modified: Wed, 25 Apr 2018 20:30:31 GMT  
		Size: 31.4 MB (31381636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae397bafae3c36fbbea4f1de87ef6bb81a0e0f7173b0f4f94f67718e00dd786`  
		Last Modified: Wed, 25 Apr 2018 20:30:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:625281350f36a6cd4a0986a56f119273664740e1ffa5bc056c257f4a10f2dff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:19c74f52023caeb4a396186744c1538ec51122bf8183ade252a66f74f4e799ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33373706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dbcf499414ac8d76c75c8843d726018bc964d07b4fd386a5038435dab5dfb9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 25 Apr 2018 20:28:00 GMT
ENV KONG_VERSION=0.13.1
# Wed, 25 Apr 2018 20:28:01 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Wed, 25 Apr 2018 20:28:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 25 Apr 2018 20:28:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 25 Apr 2018 20:28:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Apr 2018 20:28:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 25 Apr 2018 20:28:14 GMT
STOPSIGNAL [SIGTERM]
# Wed, 25 Apr 2018 20:28:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48d98b461a894e8e34ae6e02823f600aa4aafedc2208c8b99fb88d806c1911a`  
		Last Modified: Wed, 25 Apr 2018 20:30:31 GMT  
		Size: 31.4 MB (31381636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae397bafae3c36fbbea4f1de87ef6bb81a0e0f7173b0f4f94f67718e00dd786`  
		Last Modified: Wed, 25 Apr 2018 20:30:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:625281350f36a6cd4a0986a56f119273664740e1ffa5bc056c257f4a10f2dff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:19c74f52023caeb4a396186744c1538ec51122bf8183ade252a66f74f4e799ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33373706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dbcf499414ac8d76c75c8843d726018bc964d07b4fd386a5038435dab5dfb9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 25 Apr 2018 20:28:00 GMT
ENV KONG_VERSION=0.13.1
# Wed, 25 Apr 2018 20:28:01 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Wed, 25 Apr 2018 20:28:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 25 Apr 2018 20:28:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 25 Apr 2018 20:28:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Apr 2018 20:28:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 25 Apr 2018 20:28:14 GMT
STOPSIGNAL [SIGTERM]
# Wed, 25 Apr 2018 20:28:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48d98b461a894e8e34ae6e02823f600aa4aafedc2208c8b99fb88d806c1911a`  
		Last Modified: Wed, 25 Apr 2018 20:30:31 GMT  
		Size: 31.4 MB (31381636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae397bafae3c36fbbea4f1de87ef6bb81a0e0f7173b0f4f94f67718e00dd786`  
		Last Modified: Wed, 25 Apr 2018 20:30:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:6f7d85cc4ef1da0d93a56153ecc727c8d31e5d878e0495502edabac6655efaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:d9dfb7831e741578e9e96f2dcc9a12e42866bbf1996781e7d7112d0261628a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128327863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c529149d3e4230e0af5650d93edb3f41d90a0fa28a373c3b9e257c9004b2c2a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:38:44 GMT
ENV KONG_VERSION=0.13.1
# Mon, 04 Jun 2018 22:38:57 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:38:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:38:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:38:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:38:58 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:38:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69fac57e7b87388f3c749e99073470ae33e05313f73fd2683c089290f14106f`  
		Last Modified: Mon, 04 Jun 2018 22:40:19 GMT  
		Size: 53.6 MB (53634174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251a4b9477ce3e1da72da0001d46dc6b924775d686afa49dd752abb5cf4c9b16`  
		Last Modified: Mon, 04 Jun 2018 22:40:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:6f7d85cc4ef1da0d93a56153ecc727c8d31e5d878e0495502edabac6655efaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:d9dfb7831e741578e9e96f2dcc9a12e42866bbf1996781e7d7112d0261628a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128327863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c529149d3e4230e0af5650d93edb3f41d90a0fa28a373c3b9e257c9004b2c2a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Mon, 04 Jun 2018 22:38:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Mon, 04 Jun 2018 22:38:44 GMT
ENV KONG_VERSION=0.13.1
# Mon, 04 Jun 2018 22:38:57 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 04 Jun 2018 22:38:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 04 Jun 2018 22:38:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 04 Jun 2018 22:38:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 04 Jun 2018 22:38:58 GMT
STOPSIGNAL [SIGTERM]
# Mon, 04 Jun 2018 22:38:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69fac57e7b87388f3c749e99073470ae33e05313f73fd2683c089290f14106f`  
		Last Modified: Mon, 04 Jun 2018 22:40:19 GMT  
		Size: 53.6 MB (53634174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251a4b9477ce3e1da72da0001d46dc6b924775d686afa49dd752abb5cf4c9b16`  
		Last Modified: Mon, 04 Jun 2018 22:40:11 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.0rc1`

**does not exist** (yet?)

## `kong:0.14.0rc1-alpine`

**does not exist** (yet?)

## `kong:0.14.0rc1-centos`

**does not exist** (yet?)

## `kong:latest`

```console
$ docker pull kong@sha256:625281350f36a6cd4a0986a56f119273664740e1ffa5bc056c257f4a10f2dff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:19c74f52023caeb4a396186744c1538ec51122bf8183ade252a66f74f4e799ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33373706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dbcf499414ac8d76c75c8843d726018bc964d07b4fd386a5038435dab5dfb9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 01:26:18 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Wed, 25 Apr 2018 20:28:00 GMT
ENV KONG_VERSION=0.13.1
# Wed, 25 Apr 2018 20:28:01 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Wed, 25 Apr 2018 20:28:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Wed, 25 Apr 2018 20:28:13 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Wed, 25 Apr 2018 20:28:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Apr 2018 20:28:14 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Wed, 25 Apr 2018 20:28:14 GMT
STOPSIGNAL [SIGTERM]
# Wed, 25 Apr 2018 20:28:15 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48d98b461a894e8e34ae6e02823f600aa4aafedc2208c8b99fb88d806c1911a`  
		Last Modified: Wed, 25 Apr 2018 20:30:31 GMT  
		Size: 31.4 MB (31381636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae397bafae3c36fbbea4f1de87ef6bb81a0e0f7173b0f4f94f67718e00dd786`  
		Last Modified: Wed, 25 Apr 2018 20:30:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
