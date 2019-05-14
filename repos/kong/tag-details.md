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
-	[`kong:1.0.3`](#kong103)
-	[`kong:1.0.3-alpine`](#kong103-alpine)
-	[`kong:1.0.3-centos`](#kong103-centos)
-	[`kong:1.0-centos`](#kong10-centos)
-	[`kong:1.1`](#kong11)
-	[`kong:1.1.2`](#kong112)
-	[`kong:1.1.2-alpine`](#kong112-alpine)
-	[`kong:1.1.2-centos`](#kong112-centos)
-	[`kong:1.1-centos`](#kong11-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:62b1e86bc6ab7cf7ea6ccdd24faf06a44134769263d6788d47684b172969cade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:5c1094651ec4dae726bc5c3969cf8eca029399357ea1d6deca0c65b2f9eef4de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124949036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dddbab23e0f738aa39120421736e04e9301f5043671dd9d1648b9dea320b1e14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:19:09 GMT
ENV KONG_VERSION=0.11.2
# Thu, 14 Mar 2019 22:19:30 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:19:31 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:19:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:19:31 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:19:31 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:19:31 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b35a0173b10044a7e57f0cb0696b66530f4db1ebc8a5d56591289c50a9007f`  
		Last Modified: Thu, 14 Mar 2019 22:21:17 GMT  
		Size: 49.5 MB (49544881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375fddeb2170b7c80e29741addbda51dad1ba3476123b9784246973df6140a5e`  
		Last Modified: Thu, 14 Mar 2019 22:21:09 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:62b1e86bc6ab7cf7ea6ccdd24faf06a44134769263d6788d47684b172969cade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:5c1094651ec4dae726bc5c3969cf8eca029399357ea1d6deca0c65b2f9eef4de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124949036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dddbab23e0f738aa39120421736e04e9301f5043671dd9d1648b9dea320b1e14`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:19:09 GMT
ENV KONG_VERSION=0.11.2
# Thu, 14 Mar 2019 22:19:30 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:19:31 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:19:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:19:31 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:19:31 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:19:31 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b35a0173b10044a7e57f0cb0696b66530f4db1ebc8a5d56591289c50a9007f`  
		Last Modified: Thu, 14 Mar 2019 22:21:17 GMT  
		Size: 49.5 MB (49544881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375fddeb2170b7c80e29741addbda51dad1ba3476123b9784246973df6140a5e`  
		Last Modified: Thu, 14 Mar 2019 22:21:09 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:893e39a9faa49069704771442c9ebb0d6b05d68875c581c1fe2f3acdc22c5ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:b27d7b64a05b9f687aaec0f6e4f1c8d67117e06dbd252d0f158513094f6d778c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30123745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb812deda1da4583a124d89902091bff1d4c0dae4a131752e5fdb8eaaa4c641e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:14:20 GMT
ENV KONG_VERSION=0.11.2
# Fri, 08 Mar 2019 03:14:20 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 08 Mar 2019 03:14:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:14:31 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:14:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:14:31 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:14:31 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:14:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e30026e41e1978f7b024ed18fc1116e64190dd69432240c547e87dcbf550d8d`  
		Last Modified: Fri, 08 Mar 2019 03:16:53 GMT  
		Size: 28.1 MB (28105647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213677a0ad9af404507a771ec6790b4873729dd3ce0e8b4a6e79ed6e687dd43c`  
		Last Modified: Fri, 08 Mar 2019 03:16:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:893e39a9faa49069704771442c9ebb0d6b05d68875c581c1fe2f3acdc22c5ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:b27d7b64a05b9f687aaec0f6e4f1c8d67117e06dbd252d0f158513094f6d778c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30123745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb812deda1da4583a124d89902091bff1d4c0dae4a131752e5fdb8eaaa4c641e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:14:20 GMT
ENV KONG_VERSION=0.11.2
# Fri, 08 Mar 2019 03:14:20 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 08 Mar 2019 03:14:30 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:14:31 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:14:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:14:31 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:14:31 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:14:32 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e30026e41e1978f7b024ed18fc1116e64190dd69432240c547e87dcbf550d8d`  
		Last Modified: Fri, 08 Mar 2019 03:16:53 GMT  
		Size: 28.1 MB (28105647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213677a0ad9af404507a771ec6790b4873729dd3ce0e8b4a6e79ed6e687dd43c`  
		Last Modified: Fri, 08 Mar 2019 03:16:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12`

```console
$ docker pull kong@sha256:26c65ae282bde2dfc2097f7339c15b212e71b6e913b6fbb6a5c59ba5c5d525aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:3a20fbcc2b3b7cc45517e310ec2d528834c6a1dc5103bb64a39927cc21b18449
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126401464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c569d862510677b26c5a16190465c9b51f1018d6370f9f1c2c92c26bf28895`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:18:40 GMT
ENV KONG_VERSION=0.12.3
# Thu, 14 Mar 2019 22:19:01 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:19:02 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:19:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:19:02 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:19:03 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:19:03 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccde038542705d2c57a33661fce3cf8dd5b1b09f9c65185e7d8702d7e8666109`  
		Last Modified: Thu, 14 Mar 2019 22:21:04 GMT  
		Size: 51.0 MB (50997311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a999e1671f89297d230235599e70144618be8c893889b5a60c9a3b45538edfeb`  
		Last Modified: Thu, 14 Mar 2019 22:20:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:26c65ae282bde2dfc2097f7339c15b212e71b6e913b6fbb6a5c59ba5c5d525aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:3a20fbcc2b3b7cc45517e310ec2d528834c6a1dc5103bb64a39927cc21b18449
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126401464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c569d862510677b26c5a16190465c9b51f1018d6370f9f1c2c92c26bf28895`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:18:40 GMT
ENV KONG_VERSION=0.12.3
# Thu, 14 Mar 2019 22:19:01 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:19:02 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:19:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:19:02 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:19:03 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:19:03 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccde038542705d2c57a33661fce3cf8dd5b1b09f9c65185e7d8702d7e8666109`  
		Last Modified: Thu, 14 Mar 2019 22:21:04 GMT  
		Size: 51.0 MB (50997311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a999e1671f89297d230235599e70144618be8c893889b5a60c9a3b45538edfeb`  
		Last Modified: Thu, 14 Mar 2019 22:20:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:e6d259951526683cf75737469b6856989404f26d8e2bc4d1e37bb3d74905cedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:44c47714f3c46af16c3dee58be2326eb714ef7d60de0a5a9a69a1af4f12a86c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30880996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8190cf2825301af8013b9d80ed4c3f5406730315c9473fad9e697e645585107c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:14:05 GMT
ENV KONG_VERSION=0.12.3
# Fri, 08 Mar 2019 03:14:05 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Fri, 08 Mar 2019 03:14:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:14:13 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:14:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:14:13 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:14:13 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:14:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659884af37e96102f47059eb8194cd7198bae4a8f2df97dfd2d6d5feeee833dd`  
		Last Modified: Fri, 08 Mar 2019 03:16:40 GMT  
		Size: 28.9 MB (28862900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fee553c6a5934ecbdd7ce2c2300a4479fc0dee2a13dd3ad647b974d89795cb8`  
		Last Modified: Fri, 08 Mar 2019 03:16:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:26c65ae282bde2dfc2097f7339c15b212e71b6e913b6fbb6a5c59ba5c5d525aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:3a20fbcc2b3b7cc45517e310ec2d528834c6a1dc5103bb64a39927cc21b18449
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126401464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c569d862510677b26c5a16190465c9b51f1018d6370f9f1c2c92c26bf28895`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:18:40 GMT
ENV KONG_VERSION=0.12.3
# Thu, 14 Mar 2019 22:19:01 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:19:02 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:19:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:19:02 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:19:03 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:19:03 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccde038542705d2c57a33661fce3cf8dd5b1b09f9c65185e7d8702d7e8666109`  
		Last Modified: Thu, 14 Mar 2019 22:21:04 GMT  
		Size: 51.0 MB (50997311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a999e1671f89297d230235599e70144618be8c893889b5a60c9a3b45538edfeb`  
		Last Modified: Thu, 14 Mar 2019 22:20:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:e6d259951526683cf75737469b6856989404f26d8e2bc4d1e37bb3d74905cedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:44c47714f3c46af16c3dee58be2326eb714ef7d60de0a5a9a69a1af4f12a86c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30880996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8190cf2825301af8013b9d80ed4c3f5406730315c9473fad9e697e645585107c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:14:05 GMT
ENV KONG_VERSION=0.12.3
# Fri, 08 Mar 2019 03:14:05 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Fri, 08 Mar 2019 03:14:13 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:14:13 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:14:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:14:13 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:14:13 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:14:14 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659884af37e96102f47059eb8194cd7198bae4a8f2df97dfd2d6d5feeee833dd`  
		Last Modified: Fri, 08 Mar 2019 03:16:40 GMT  
		Size: 28.9 MB (28862900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fee553c6a5934ecbdd7ce2c2300a4479fc0dee2a13dd3ad647b974d89795cb8`  
		Last Modified: Fri, 08 Mar 2019 03:16:32 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:26c65ae282bde2dfc2097f7339c15b212e71b6e913b6fbb6a5c59ba5c5d525aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:3a20fbcc2b3b7cc45517e310ec2d528834c6a1dc5103bb64a39927cc21b18449
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.4 MB (126401464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c569d862510677b26c5a16190465c9b51f1018d6370f9f1c2c92c26bf28895`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:18:40 GMT
ENV KONG_VERSION=0.12.3
# Thu, 14 Mar 2019 22:19:01 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:19:02 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:19:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:19:02 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:19:03 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:19:03 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccde038542705d2c57a33661fce3cf8dd5b1b09f9c65185e7d8702d7e8666109`  
		Last Modified: Thu, 14 Mar 2019 22:21:04 GMT  
		Size: 51.0 MB (50997311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a999e1671f89297d230235599e70144618be8c893889b5a60c9a3b45538edfeb`  
		Last Modified: Thu, 14 Mar 2019 22:20:56 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:69391d3cc48997ed796ef3e96761aeaed206a473f025ea4595c2d28272e1186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:424fe11265d1b5d136443052e07470c2f18e1c1a568c756bec16efa016961811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33469633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f12af394a54dfc54221c2edcf91395e8359109be7890c9a82b318e922385f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_VERSION=0.13.1
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 08 Mar 2019 03:13:57 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:58 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:58 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:58 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ba7d7143a32ac7f057d10785a17b62530aa438a926c1a65202bad8b36eb105`  
		Last Modified: Fri, 08 Mar 2019 03:16:26 GMT  
		Size: 31.5 MB (31451535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da453abf4e534854f082ac44a3146657695c50e5b9dfafa96f745ed41819fa7c`  
		Last Modified: Fri, 08 Mar 2019 03:16:17 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:69391d3cc48997ed796ef3e96761aeaed206a473f025ea4595c2d28272e1186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:424fe11265d1b5d136443052e07470c2f18e1c1a568c756bec16efa016961811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33469633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f12af394a54dfc54221c2edcf91395e8359109be7890c9a82b318e922385f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_VERSION=0.13.1
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 08 Mar 2019 03:13:57 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:58 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:58 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:58 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ba7d7143a32ac7f057d10785a17b62530aa438a926c1a65202bad8b36eb105`  
		Last Modified: Fri, 08 Mar 2019 03:16:26 GMT  
		Size: 31.5 MB (31451535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da453abf4e534854f082ac44a3146657695c50e5b9dfafa96f745ed41819fa7c`  
		Last Modified: Fri, 08 Mar 2019 03:16:17 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:69391d3cc48997ed796ef3e96761aeaed206a473f025ea4595c2d28272e1186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:424fe11265d1b5d136443052e07470c2f18e1c1a568c756bec16efa016961811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33469633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f12af394a54dfc54221c2edcf91395e8359109be7890c9a82b318e922385f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_VERSION=0.13.1
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 08 Mar 2019 03:13:57 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:58 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:58 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:58 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ba7d7143a32ac7f057d10785a17b62530aa438a926c1a65202bad8b36eb105`  
		Last Modified: Fri, 08 Mar 2019 03:16:26 GMT  
		Size: 31.5 MB (31451535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da453abf4e534854f082ac44a3146657695c50e5b9dfafa96f745ed41819fa7c`  
		Last Modified: Fri, 08 Mar 2019 03:16:17 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:3a2d43963669cbac2f09700e45ba070240038f3b2f8dc72e12c0daa11fb566dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:8a4cd7ada87f163e2b593d4c9432aeffb73d3fb3bd6c9f082bcee222e8bd4a08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129360350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f102169a8da5dd3e6cfe753f58c47bbc5b440975eb9171ed3e07c62c97e4b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:18:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 14 Mar 2019 22:18:32 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:18:32 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:18:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:18:33 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:18:33 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:18:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0215afc2f04b423deaede71a4d628acb9fc062cce3228f789c2de7ecb3b3b0f`  
		Last Modified: Thu, 14 Mar 2019 22:20:53 GMT  
		Size: 54.0 MB (53956196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a9a7192c86256f2adf097ea899f5b577c7c0c534f41ea5f04de8cf48f0211d`  
		Last Modified: Thu, 14 Mar 2019 22:20:43 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-alpine`

```console
$ docker pull kong@sha256:69391d3cc48997ed796ef3e96761aeaed206a473f025ea4595c2d28272e1186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-alpine` - linux; amd64

```console
$ docker pull kong@sha256:424fe11265d1b5d136443052e07470c2f18e1c1a568c756bec16efa016961811
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33469633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f12af394a54dfc54221c2edcf91395e8359109be7890c9a82b318e922385f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_VERSION=0.13.1
# Fri, 08 Mar 2019 03:13:50 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 08 Mar 2019 03:13:57 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:58 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:58 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:58 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ba7d7143a32ac7f057d10785a17b62530aa438a926c1a65202bad8b36eb105`  
		Last Modified: Fri, 08 Mar 2019 03:16:26 GMT  
		Size: 31.5 MB (31451535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da453abf4e534854f082ac44a3146657695c50e5b9dfafa96f745ed41819fa7c`  
		Last Modified: Fri, 08 Mar 2019 03:16:17 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:3a2d43963669cbac2f09700e45ba070240038f3b2f8dc72e12c0daa11fb566dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:8a4cd7ada87f163e2b593d4c9432aeffb73d3fb3bd6c9f082bcee222e8bd4a08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129360350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f102169a8da5dd3e6cfe753f58c47bbc5b440975eb9171ed3e07c62c97e4b8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:18:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 14 Mar 2019 22:18:32 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:18:32 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:18:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:18:33 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:18:33 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:18:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0215afc2f04b423deaede71a4d628acb9fc062cce3228f789c2de7ecb3b3b0f`  
		Last Modified: Thu, 14 Mar 2019 22:20:53 GMT  
		Size: 54.0 MB (53956196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a9a7192c86256f2adf097ea899f5b577c7c0c534f41ea5f04de8cf48f0211d`  
		Last Modified: Thu, 14 Mar 2019 22:20:43 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14`

```console
$ docker pull kong@sha256:5ca1f841ec88cc18ac955c0d834f6523847e04f3756ba207ec037be0a1e18161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14` - linux; amd64

```console
$ docker pull kong@sha256:2128d9591856f99934c42bd8078c5a609b9140abbed5967ca8c4fee2ef8e8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33602791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a560387c575b58df7eef7de22e79c3fed9074f35a27d24511f68c14d9f9094`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_VERSION=0.14.1
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 08 Mar 2019 03:13:43 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:43 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:43 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:43 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:44 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43bd378b614e0adf28d0402f69a09cdf4117a55a9cbcdea871675a5a15c82b`  
		Last Modified: Fri, 08 Mar 2019 03:16:10 GMT  
		Size: 31.6 MB (31584703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df4595adc1c134ec4976182dc4f5af81bd00907199ae182d12d834a9a58cb`  
		Last Modified: Fri, 08 Mar 2019 03:16:02 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1`

```console
$ docker pull kong@sha256:5ca1f841ec88cc18ac955c0d834f6523847e04f3756ba207ec037be0a1e18161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1` - linux; amd64

```console
$ docker pull kong@sha256:2128d9591856f99934c42bd8078c5a609b9140abbed5967ca8c4fee2ef8e8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33602791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a560387c575b58df7eef7de22e79c3fed9074f35a27d24511f68c14d9f9094`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_VERSION=0.14.1
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 08 Mar 2019 03:13:43 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:43 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:43 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:43 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:44 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43bd378b614e0adf28d0402f69a09cdf4117a55a9cbcdea871675a5a15c82b`  
		Last Modified: Fri, 08 Mar 2019 03:16:10 GMT  
		Size: 31.6 MB (31584703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df4595adc1c134ec4976182dc4f5af81bd00907199ae182d12d834a9a58cb`  
		Last Modified: Fri, 08 Mar 2019 03:16:02 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-alpine`

```console
$ docker pull kong@sha256:5ca1f841ec88cc18ac955c0d834f6523847e04f3756ba207ec037be0a1e18161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:2128d9591856f99934c42bd8078c5a609b9140abbed5967ca8c4fee2ef8e8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33602791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a560387c575b58df7eef7de22e79c3fed9074f35a27d24511f68c14d9f9094`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_VERSION=0.14.1
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 08 Mar 2019 03:13:43 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:43 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:43 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:43 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:44 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43bd378b614e0adf28d0402f69a09cdf4117a55a9cbcdea871675a5a15c82b`  
		Last Modified: Fri, 08 Mar 2019 03:16:10 GMT  
		Size: 31.6 MB (31584703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df4595adc1c134ec4976182dc4f5af81bd00907199ae182d12d834a9a58cb`  
		Last Modified: Fri, 08 Mar 2019 03:16:02 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-centos`

```console
$ docker pull kong@sha256:439e0ed529c0423ca2d41d6c38e6e3df791265118fb26f54dbf960946183ed2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:77097204009974bcfbca40558653e206e9f20166251ee3208f72ff75b74bbbee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129644779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c319fe323dfb572289b3e5a35c8b967901d429612d74c331ae4106013deadc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:17:45 GMT
ENV KONG_VERSION=0.14.1
# Thu, 14 Mar 2019 22:18:04 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:18:04 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:18:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:18:05 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:18:05 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:18:05 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb30af9b1c26c53f6d3b3c1f113d0de5db4db1f9aabef0780856ed07e2f443`  
		Last Modified: Thu, 14 Mar 2019 22:20:39 GMT  
		Size: 54.2 MB (54240635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fc9dcdf785ba1d13bf26860a096792acd3581ce8241b144099bb643922615b`  
		Last Modified: Thu, 14 Mar 2019 22:20:30 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14-alpine`

```console
$ docker pull kong@sha256:5ca1f841ec88cc18ac955c0d834f6523847e04f3756ba207ec037be0a1e18161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-alpine` - linux; amd64

```console
$ docker pull kong@sha256:2128d9591856f99934c42bd8078c5a609b9140abbed5967ca8c4fee2ef8e8328
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33602791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a560387c575b58df7eef7de22e79c3fed9074f35a27d24511f68c14d9f9094`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:13:35 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_VERSION=0.14.1
# Fri, 08 Mar 2019 03:13:35 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Fri, 08 Mar 2019 03:13:43 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:43 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:43 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:43 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:44 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43bd378b614e0adf28d0402f69a09cdf4117a55a9cbcdea871675a5a15c82b`  
		Last Modified: Fri, 08 Mar 2019 03:16:10 GMT  
		Size: 31.6 MB (31584703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df4595adc1c134ec4976182dc4f5af81bd00907199ae182d12d834a9a58cb`  
		Last Modified: Fri, 08 Mar 2019 03:16:02 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14-centos`

```console
$ docker pull kong@sha256:439e0ed529c0423ca2d41d6c38e6e3df791265118fb26f54dbf960946183ed2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-centos` - linux; amd64

```console
$ docker pull kong@sha256:77097204009974bcfbca40558653e206e9f20166251ee3208f72ff75b74bbbee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129644779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c319fe323dfb572289b3e5a35c8b967901d429612d74c331ae4106013deadc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:17:45 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 14 Mar 2019 22:17:45 GMT
ENV KONG_VERSION=0.14.1
# Thu, 14 Mar 2019 22:18:04 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 14 Mar 2019 22:18:04 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:18:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:18:05 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:18:05 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:18:05 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cb30af9b1c26c53f6d3b3c1f113d0de5db4db1f9aabef0780856ed07e2f443`  
		Last Modified: Thu, 14 Mar 2019 22:20:39 GMT  
		Size: 54.2 MB (54240635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fc9dcdf785ba1d13bf26860a096792acd3581ce8241b144099bb643922615b`  
		Last Modified: Thu, 14 Mar 2019 22:20:30 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15`

```console
$ docker pull kong@sha256:04e996c95f7cf96dddb94fa51c0a68baa46c7a81c737bc20befe58a439d6d90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15` - linux; amd64

```console
$ docker pull kong@sha256:4321819c57cb0c666119bf74d4d27e5b8c9c997f187071730fbdb751de412393
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05515f5ce6bf688685adcfb7c927435ff955aa3242fcc05f9210750c6397627`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_VERSION=0.15.0
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Fri, 08 Mar 2019 03:13:28 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:29 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:29 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:29 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc436596b1b155795787e8988c8b092450cc599240fc466e8929c4421d24e8b1`  
		Last Modified: Fri, 08 Mar 2019 03:15:56 GMT  
		Size: 28.5 MB (28496568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800d3cf988a434b6e18748b2b9c2fc041e0268b545ab427475b5603aa32309f`  
		Last Modified: Fri, 08 Mar 2019 03:15:49 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0`

```console
$ docker pull kong@sha256:04e996c95f7cf96dddb94fa51c0a68baa46c7a81c737bc20befe58a439d6d90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0` - linux; amd64

```console
$ docker pull kong@sha256:4321819c57cb0c666119bf74d4d27e5b8c9c997f187071730fbdb751de412393
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05515f5ce6bf688685adcfb7c927435ff955aa3242fcc05f9210750c6397627`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_VERSION=0.15.0
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Fri, 08 Mar 2019 03:13:28 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:29 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:29 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:29 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc436596b1b155795787e8988c8b092450cc599240fc466e8929c4421d24e8b1`  
		Last Modified: Fri, 08 Mar 2019 03:15:56 GMT  
		Size: 28.5 MB (28496568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800d3cf988a434b6e18748b2b9c2fc041e0268b545ab427475b5603aa32309f`  
		Last Modified: Fri, 08 Mar 2019 03:15:49 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0-alpine`

```console
$ docker pull kong@sha256:04e996c95f7cf96dddb94fa51c0a68baa46c7a81c737bc20befe58a439d6d90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4321819c57cb0c666119bf74d4d27e5b8c9c997f187071730fbdb751de412393
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05515f5ce6bf688685adcfb7c927435ff955aa3242fcc05f9210750c6397627`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_VERSION=0.15.0
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Fri, 08 Mar 2019 03:13:28 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:29 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:29 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:29 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc436596b1b155795787e8988c8b092450cc599240fc466e8929c4421d24e8b1`  
		Last Modified: Fri, 08 Mar 2019 03:15:56 GMT  
		Size: 28.5 MB (28496568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800d3cf988a434b6e18748b2b9c2fc041e0268b545ab427475b5603aa32309f`  
		Last Modified: Fri, 08 Mar 2019 03:15:49 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0-centos`

```console
$ docker pull kong@sha256:94e9521909aef4ac82661cd341efb91a66b35ec4d8c040d2de67016a934ac046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:bb729798f9d67ba386ba6d47a1ff8b5cdc97d7cf3476c4fa8d0fbebc2e8654a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131365203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf14e4c340ebed88b6908b57e858b9c8407deff0b61178495b793b3293688a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:14:30 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 14 Mar 2019 22:16:40 GMT
ENV KONG_VERSION=0.15.0
# Thu, 14 Mar 2019 22:16:40 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 14 Mar 2019 22:16:40 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 14 Mar 2019 22:17:17 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 14 Mar 2019 22:17:34 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 14 Mar 2019 22:17:34 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:17:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:17:35 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:17:35 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:17:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6337134253928fe4d4f034839317bed5f8e0eadc55cba6770535a3618062bfd`  
		Last Modified: Thu, 14 Mar 2019 22:20:18 GMT  
		Size: 6.1 MB (6120138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042e2165f6f95a8bb9eb4473d9e266024fc0ab0fa9b6ec5918b33637ec52b45`  
		Last Modified: Thu, 14 Mar 2019 22:20:26 GMT  
		Size: 49.8 MB (49840691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551dc3226c503670d25ec74f9c960001848a1648a817de5c2a29839186b74c56`  
		Last Modified: Thu, 14 Mar 2019 22:20:17 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15-alpine`

```console
$ docker pull kong@sha256:04e996c95f7cf96dddb94fa51c0a68baa46c7a81c737bc20befe58a439d6d90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4321819c57cb0c666119bf74d4d27e5b8c9c997f187071730fbdb751de412393
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30514884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05515f5ce6bf688685adcfb7c927435ff955aa3242fcc05f9210750c6397627`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_VERSION=0.15.0
# Fri, 08 Mar 2019 03:13:20 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Fri, 08 Mar 2019 03:13:28 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:29 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:29 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:29 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:29 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc436596b1b155795787e8988c8b092450cc599240fc466e8929c4421d24e8b1`  
		Last Modified: Fri, 08 Mar 2019 03:15:56 GMT  
		Size: 28.5 MB (28496568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c800d3cf988a434b6e18748b2b9c2fc041e0268b545ab427475b5603aa32309f`  
		Last Modified: Fri, 08 Mar 2019 03:15:49 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15-centos`

```console
$ docker pull kong@sha256:94e9521909aef4ac82661cd341efb91a66b35ec4d8c040d2de67016a934ac046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15-centos` - linux; amd64

```console
$ docker pull kong@sha256:bb729798f9d67ba386ba6d47a1ff8b5cdc97d7cf3476c4fa8d0fbebc2e8654a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131365203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf14e4c340ebed88b6908b57e858b9c8407deff0b61178495b793b3293688a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:14:30 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 14 Mar 2019 22:16:40 GMT
ENV KONG_VERSION=0.15.0
# Thu, 14 Mar 2019 22:16:40 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 14 Mar 2019 22:16:40 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 14 Mar 2019 22:17:17 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 14 Mar 2019 22:17:34 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 14 Mar 2019 22:17:34 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:17:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:17:35 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:17:35 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:17:35 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6337134253928fe4d4f034839317bed5f8e0eadc55cba6770535a3618062bfd`  
		Last Modified: Thu, 14 Mar 2019 22:20:18 GMT  
		Size: 6.1 MB (6120138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d042e2165f6f95a8bb9eb4473d9e266024fc0ab0fa9b6ec5918b33637ec52b45`  
		Last Modified: Thu, 14 Mar 2019 22:20:26 GMT  
		Size: 49.8 MB (49840691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551dc3226c503670d25ec74f9c960001848a1648a817de5c2a29839186b74c56`  
		Last Modified: Thu, 14 Mar 2019 22:20:17 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0`

```console
$ docker pull kong@sha256:9a856ee1beef62e69d511f0fd18a074436ec51d3668863920a9de5db9e3f3491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0` - linux; amd64

```console
$ docker pull kong@sha256:0bf471cf350a40efe9314112670f6bfa8d023d8ebd67086f5eab5ab68edf96ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaacee41330c247f2ad254d615381318f042a2779e9c34ca43d69fc6ae3eedb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_VERSION=1.0.3
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 08 Mar 2019 03:13:14 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:15 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:15 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:15 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f0eaa7f80df34470c9da82df8623493279c5830e4d906c87c2264bb5cf3ff8`  
		Last Modified: Fri, 08 Mar 2019 03:15:42 GMT  
		Size: 28.4 MB (28442769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f35a26129025dec80cf2b8e7c56baea859eb8f300a702b08a81bcd83682c`  
		Last Modified: Fri, 08 Mar 2019 03:15:35 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.3`

```console
$ docker pull kong@sha256:9a856ee1beef62e69d511f0fd18a074436ec51d3668863920a9de5db9e3f3491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.3` - linux; amd64

```console
$ docker pull kong@sha256:0bf471cf350a40efe9314112670f6bfa8d023d8ebd67086f5eab5ab68edf96ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaacee41330c247f2ad254d615381318f042a2779e9c34ca43d69fc6ae3eedb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_VERSION=1.0.3
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 08 Mar 2019 03:13:14 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:15 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:15 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:15 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f0eaa7f80df34470c9da82df8623493279c5830e4d906c87c2264bb5cf3ff8`  
		Last Modified: Fri, 08 Mar 2019 03:15:42 GMT  
		Size: 28.4 MB (28442769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f35a26129025dec80cf2b8e7c56baea859eb8f300a702b08a81bcd83682c`  
		Last Modified: Fri, 08 Mar 2019 03:15:35 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.3-alpine`

```console
$ docker pull kong@sha256:9a856ee1beef62e69d511f0fd18a074436ec51d3668863920a9de5db9e3f3491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:0bf471cf350a40efe9314112670f6bfa8d023d8ebd67086f5eab5ab68edf96ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30461095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaacee41330c247f2ad254d615381318f042a2779e9c34ca43d69fc6ae3eedb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_VERSION=1.0.3
# Fri, 08 Mar 2019 03:13:06 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 08 Mar 2019 03:13:14 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:13:15 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:15 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:15 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:15 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f0eaa7f80df34470c9da82df8623493279c5830e4d906c87c2264bb5cf3ff8`  
		Last Modified: Fri, 08 Mar 2019 03:15:42 GMT  
		Size: 28.4 MB (28442769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f35a26129025dec80cf2b8e7c56baea859eb8f300a702b08a81bcd83682c`  
		Last Modified: Fri, 08 Mar 2019 03:15:35 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.3-centos`

```console
$ docker pull kong@sha256:33e8c2f347e0b6a0e60aa81e298f256b592a906cd43c17799cbcac007176721c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:49683448283a6e17f3d942a874ae63fa160054592e452554af7a9027d3b59cb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131414235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42fe47dcd2a58acd0d6b4416bb8b9eb10c30dff8769ccedb6abab64e66eca0d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:14:30 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 14 Mar 2019 22:15:35 GMT
ENV KONG_VERSION=1.0.3
# Thu, 14 Mar 2019 22:15:35 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 14 Mar 2019 22:15:35 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 14 Mar 2019 22:16:11 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 14 Mar 2019 22:16:29 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 14 Mar 2019 22:16:29 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:16:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:16:30 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:16:30 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:16:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35653f457a0efa595a05958c906f5c0d071d9e16672db4a376e7f0fac4a7e425`  
		Last Modified: Thu, 14 Mar 2019 22:20:05 GMT  
		Size: 6.3 MB (6278545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81b3a88fc0cfdc27c43e29f15464f0177e41a6d9366da29761759e7ef1d58ef`  
		Last Modified: Thu, 14 Mar 2019 22:20:13 GMT  
		Size: 49.7 MB (49731307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181dcdfd86ede28a27f64c623fa41bc8ff5c66bc156950c73a0ccc90605d930`  
		Last Modified: Thu, 14 Mar 2019 22:20:04 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0-centos`

```console
$ docker pull kong@sha256:33e8c2f347e0b6a0e60aa81e298f256b592a906cd43c17799cbcac007176721c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:49683448283a6e17f3d942a874ae63fa160054592e452554af7a9027d3b59cb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131414235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42fe47dcd2a58acd0d6b4416bb8b9eb10c30dff8769ccedb6abab64e66eca0d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:14:30 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 14 Mar 2019 22:15:35 GMT
ENV KONG_VERSION=1.0.3
# Thu, 14 Mar 2019 22:15:35 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 14 Mar 2019 22:15:35 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 14 Mar 2019 22:16:11 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 14 Mar 2019 22:16:29 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 14 Mar 2019 22:16:29 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Thu, 14 Mar 2019 22:16:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Mar 2019 22:16:30 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 14 Mar 2019 22:16:30 GMT
STOPSIGNAL SIGTERM
# Thu, 14 Mar 2019 22:16:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35653f457a0efa595a05958c906f5c0d071d9e16672db4a376e7f0fac4a7e425`  
		Last Modified: Thu, 14 Mar 2019 22:20:05 GMT  
		Size: 6.3 MB (6278545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81b3a88fc0cfdc27c43e29f15464f0177e41a6d9366da29761759e7ef1d58ef`  
		Last Modified: Thu, 14 Mar 2019 22:20:13 GMT  
		Size: 49.7 MB (49731307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d181dcdfd86ede28a27f64c623fa41bc8ff5c66bc156950c73a0ccc90605d930`  
		Last Modified: Thu, 14 Mar 2019 22:20:04 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1`

```console
$ docker pull kong@sha256:488c2bfcc390aa8d461494deaf2438839be1090ea52dd12a4395f15391529463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1` - linux; amd64

```console
$ docker pull kong@sha256:63a9090fa7ed9e612351e229b2b27781680383b69fab7cfe442bb15cebcabb73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ba91a7b0e583b67e1e6388c38fbaca7ba30eb5508dac7b9b905d3edab87acb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_VERSION=1.1.2
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_SHA256=0d7509fa2ef653b4aba14a1a1fd20339bccb4f8d386429102c42b7af6d8b6bdb
# Thu, 25 Apr 2019 00:19:52 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Thu, 25 Apr 2019 00:19:52 GMT
COPY file:fe196e90eb453e834bdc492372019ad9f95e35142fa279d1622c213f32592fe9 in /docker-entrypoint.sh 
# Thu, 25 Apr 2019 00:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:19:53 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 25 Apr 2019 00:19:53 GMT
STOPSIGNAL SIGTERM
# Thu, 25 Apr 2019 00:19:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417f35a15bdfbd84e0860d6971e725f3006dbac379ae4d56497ea9ece1da1cde`  
		Last Modified: Thu, 25 Apr 2019 00:22:06 GMT  
		Size: 30.8 MB (30755304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c18b9d13bf6152215b2d7b4e69b1a478fb069196c7fe2114a3eb05bf3da48c2`  
		Last Modified: Thu, 25 Apr 2019 00:21:58 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1.2`

```console
$ docker pull kong@sha256:488c2bfcc390aa8d461494deaf2438839be1090ea52dd12a4395f15391529463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1.2` - linux; amd64

```console
$ docker pull kong@sha256:63a9090fa7ed9e612351e229b2b27781680383b69fab7cfe442bb15cebcabb73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ba91a7b0e583b67e1e6388c38fbaca7ba30eb5508dac7b9b905d3edab87acb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_VERSION=1.1.2
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_SHA256=0d7509fa2ef653b4aba14a1a1fd20339bccb4f8d386429102c42b7af6d8b6bdb
# Thu, 25 Apr 2019 00:19:52 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Thu, 25 Apr 2019 00:19:52 GMT
COPY file:fe196e90eb453e834bdc492372019ad9f95e35142fa279d1622c213f32592fe9 in /docker-entrypoint.sh 
# Thu, 25 Apr 2019 00:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:19:53 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 25 Apr 2019 00:19:53 GMT
STOPSIGNAL SIGTERM
# Thu, 25 Apr 2019 00:19:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417f35a15bdfbd84e0860d6971e725f3006dbac379ae4d56497ea9ece1da1cde`  
		Last Modified: Thu, 25 Apr 2019 00:22:06 GMT  
		Size: 30.8 MB (30755304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c18b9d13bf6152215b2d7b4e69b1a478fb069196c7fe2114a3eb05bf3da48c2`  
		Last Modified: Thu, 25 Apr 2019 00:21:58 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1.2-alpine`

```console
$ docker pull kong@sha256:488c2bfcc390aa8d461494deaf2438839be1090ea52dd12a4395f15391529463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:63a9090fa7ed9e612351e229b2b27781680383b69fab7cfe442bb15cebcabb73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ba91a7b0e583b67e1e6388c38fbaca7ba30eb5508dac7b9b905d3edab87acb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_VERSION=1.1.2
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_SHA256=0d7509fa2ef653b4aba14a1a1fd20339bccb4f8d386429102c42b7af6d8b6bdb
# Thu, 25 Apr 2019 00:19:52 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Thu, 25 Apr 2019 00:19:52 GMT
COPY file:fe196e90eb453e834bdc492372019ad9f95e35142fa279d1622c213f32592fe9 in /docker-entrypoint.sh 
# Thu, 25 Apr 2019 00:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:19:53 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 25 Apr 2019 00:19:53 GMT
STOPSIGNAL SIGTERM
# Thu, 25 Apr 2019 00:19:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417f35a15bdfbd84e0860d6971e725f3006dbac379ae4d56497ea9ece1da1cde`  
		Last Modified: Thu, 25 Apr 2019 00:22:06 GMT  
		Size: 30.8 MB (30755304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c18b9d13bf6152215b2d7b4e69b1a478fb069196c7fe2114a3eb05bf3da48c2`  
		Last Modified: Thu, 25 Apr 2019 00:21:58 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1.2-centos`

```console
$ docker pull kong@sha256:c79b473005bbe3a94c9e69edbc636cd18ec4b82aee3c352adb49f826bbb43960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1.2-centos` - linux; amd64

```console
$ docker pull kong@sha256:69b5d4bb26e04abd546b715e036f3c432f2ad18c76ea52c0e27d19bc1be95a8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143037514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdba89a264b4c981313e1e5e35b2b042c81c82be380042675bad317eca1c9865`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:14:30 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Apr 2019 00:19:56 GMT
ENV KONG_VERSION=1.1.2
# Thu, 25 Apr 2019 00:19:56 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 25 Apr 2019 00:19:57 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 25 Apr 2019 00:20:47 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip 	&& curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - 	&& make -C "/tmp/su-exec-${SU_EXEC_VERSION}" 	&& cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin 	&& rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" 	&& yum autoremove -y -q gcc make 	&& yum clean all -q 	&& rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 25 Apr 2019 00:21:06 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& yum install -y https://bintray.com/kong/kong-rpm/download_file?file_path=centos/7/kong-$KONG_VERSION.el7.noarch.rpm 	&& yum clean all 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Thu, 25 Apr 2019 00:21:06 GMT
COPY file:d93f710041d3a08d241deecc7328da1e955b07a618f0d374125d417e8a7e1640 in /docker-entrypoint.sh 
# Thu, 25 Apr 2019 00:21:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:21:07 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 25 Apr 2019 00:21:07 GMT
STOPSIGNAL SIGTERM
# Thu, 25 Apr 2019 00:21:07 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a04ee49893044d6b7d90cb59567736fc87ba41e896c0234645a86aa11d4198`  
		Last Modified: Thu, 25 Apr 2019 00:22:17 GMT  
		Size: 17.3 MB (17273166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c043e1cfb55bfd325e029a5c821824e6ff8def1e95a64d0be5e157c3ce28c7`  
		Last Modified: Thu, 25 Apr 2019 00:22:20 GMT  
		Size: 50.4 MB (50359920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c2ee4eb8a39e71d0ff077d3618516874a94108ea6a73aae74eca4a83b95d`  
		Last Modified: Thu, 25 Apr 2019 00:22:11 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1-centos`

```console
$ docker pull kong@sha256:c79b473005bbe3a94c9e69edbc636cd18ec4b82aee3c352adb49f826bbb43960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:69b5d4bb26e04abd546b715e036f3c432f2ad18c76ea52c0e27d19bc1be95a8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143037514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdba89a264b4c981313e1e5e35b2b042c81c82be380042675bad317eca1c9865`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:14:30 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Apr 2019 00:19:56 GMT
ENV KONG_VERSION=1.1.2
# Thu, 25 Apr 2019 00:19:56 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 25 Apr 2019 00:19:57 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 25 Apr 2019 00:20:47 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip 	&& curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - 	&& make -C "/tmp/su-exec-${SU_EXEC_VERSION}" 	&& cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin 	&& rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" 	&& yum autoremove -y -q gcc make 	&& yum clean all -q 	&& rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 25 Apr 2019 00:21:06 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& yum install -y https://bintray.com/kong/kong-rpm/download_file?file_path=centos/7/kong-$KONG_VERSION.el7.noarch.rpm 	&& yum clean all 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Thu, 25 Apr 2019 00:21:06 GMT
COPY file:d93f710041d3a08d241deecc7328da1e955b07a618f0d374125d417e8a7e1640 in /docker-entrypoint.sh 
# Thu, 25 Apr 2019 00:21:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:21:07 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 25 Apr 2019 00:21:07 GMT
STOPSIGNAL SIGTERM
# Thu, 25 Apr 2019 00:21:07 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a04ee49893044d6b7d90cb59567736fc87ba41e896c0234645a86aa11d4198`  
		Last Modified: Thu, 25 Apr 2019 00:22:17 GMT  
		Size: 17.3 MB (17273166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c043e1cfb55bfd325e029a5c821824e6ff8def1e95a64d0be5e157c3ce28c7`  
		Last Modified: Thu, 25 Apr 2019 00:22:20 GMT  
		Size: 50.4 MB (50359920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c2ee4eb8a39e71d0ff077d3618516874a94108ea6a73aae74eca4a83b95d`  
		Last Modified: Thu, 25 Apr 2019 00:22:11 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:488c2bfcc390aa8d461494deaf2438839be1090ea52dd12a4395f15391529463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:63a9090fa7ed9e612351e229b2b27781680383b69fab7cfe442bb15cebcabb73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32773674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ba91a7b0e583b67e1e6388c38fbaca7ba30eb5508dac7b9b905d3edab87acb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_VERSION=1.1.2
# Thu, 25 Apr 2019 00:19:42 GMT
ENV KONG_SHA256=0d7509fa2ef653b4aba14a1a1fd20339bccb4f8d386429102c42b7af6d8b6bdb
# Thu, 25 Apr 2019 00:19:52 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-alpine-tar/download_file?file_path=kong-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps 	&& chown -R kong:0 /usr/local/kong 	&& chmod -R g=u /usr/local/kong
# Thu, 25 Apr 2019 00:19:52 GMT
COPY file:fe196e90eb453e834bdc492372019ad9f95e35142fa279d1622c213f32592fe9 in /docker-entrypoint.sh 
# Thu, 25 Apr 2019 00:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:19:53 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 25 Apr 2019 00:19:53 GMT
STOPSIGNAL SIGTERM
# Thu, 25 Apr 2019 00:19:53 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417f35a15bdfbd84e0860d6971e725f3006dbac379ae4d56497ea9ece1da1cde`  
		Last Modified: Thu, 25 Apr 2019 00:22:06 GMT  
		Size: 30.8 MB (30755304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c18b9d13bf6152215b2d7b4e69b1a478fb069196c7fe2114a3eb05bf3da48c2`  
		Last Modified: Thu, 25 Apr 2019 00:21:58 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
