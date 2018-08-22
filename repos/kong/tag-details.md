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
$ docker pull kong@sha256:ea744e2981b42d3792a44ba05d9bcfea4f9160c3900ba292856bff99c1b238f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:1afcfa902b2deec9bc45118debdbddfd5b39a3e8998566c0271ac3b88b68f7fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125363805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167135b79db9c87b1adce78d116a50085e7ee41865a2e9bf5887dc5f88095b71`
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
# Mon, 06 Aug 2018 20:05:53 GMT
ENV KONG_VERSION=0.12.3
# Mon, 06 Aug 2018 20:06:18 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:06:26 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:06:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:06:26 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:06:27 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:06:27 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd0cdb88e061927d22d750014153c69fc7d71e2dbd018bb0912a689f8ce5daa`  
		Last Modified: Mon, 06 Aug 2018 20:10:47 GMT  
		Size: 50.7 MB (50668800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9626c1548653798b324bcfb86d35cec3543d5d5e257de8f0008bef5250367e99`  
		Last Modified: Mon, 06 Aug 2018 20:10:31 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:ea744e2981b42d3792a44ba05d9bcfea4f9160c3900ba292856bff99c1b238f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:1afcfa902b2deec9bc45118debdbddfd5b39a3e8998566c0271ac3b88b68f7fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125363805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167135b79db9c87b1adce78d116a50085e7ee41865a2e9bf5887dc5f88095b71`
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
# Mon, 06 Aug 2018 20:05:53 GMT
ENV KONG_VERSION=0.12.3
# Mon, 06 Aug 2018 20:06:18 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:06:26 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:06:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:06:26 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:06:27 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:06:27 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd0cdb88e061927d22d750014153c69fc7d71e2dbd018bb0912a689f8ce5daa`  
		Last Modified: Mon, 06 Aug 2018 20:10:47 GMT  
		Size: 50.7 MB (50668800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9626c1548653798b324bcfb86d35cec3543d5d5e257de8f0008bef5250367e99`  
		Last Modified: Mon, 06 Aug 2018 20:10:31 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:b79b32fca1beac848f7736cd2d5831c8cde6ee268798ab6241d7c292c2f61385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4c9c8ca78cb3095fb0d4f5c2942ac530c1006005102dab74b66cecc6856de35f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77daf0df187b6440b8e9e009e21f9c6656a2341b146f7af01981673206f1703b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_VERSION=0.12.3
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Sat, 07 Jul 2018 03:47:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:47:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:47:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:47:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:47:33 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:47:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5fffad003cf19b11297672dc917fabc2e5504d04c13a49e261bd595be7cbf4`  
		Last Modified: Sat, 07 Jul 2018 03:51:55 GMT  
		Size: 28.8 MB (28840800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56224e70faba376218950d02cec3ab6291a29d47907c7d9930c664fddd75347`  
		Last Modified: Sat, 07 Jul 2018 03:51:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:ea744e2981b42d3792a44ba05d9bcfea4f9160c3900ba292856bff99c1b238f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:1afcfa902b2deec9bc45118debdbddfd5b39a3e8998566c0271ac3b88b68f7fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125363805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167135b79db9c87b1adce78d116a50085e7ee41865a2e9bf5887dc5f88095b71`
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
# Mon, 06 Aug 2018 20:05:53 GMT
ENV KONG_VERSION=0.12.3
# Mon, 06 Aug 2018 20:06:18 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:06:26 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:06:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:06:26 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:06:27 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:06:27 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd0cdb88e061927d22d750014153c69fc7d71e2dbd018bb0912a689f8ce5daa`  
		Last Modified: Mon, 06 Aug 2018 20:10:47 GMT  
		Size: 50.7 MB (50668800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9626c1548653798b324bcfb86d35cec3543d5d5e257de8f0008bef5250367e99`  
		Last Modified: Mon, 06 Aug 2018 20:10:31 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:b79b32fca1beac848f7736cd2d5831c8cde6ee268798ab6241d7c292c2f61385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:4c9c8ca78cb3095fb0d4f5c2942ac530c1006005102dab74b66cecc6856de35f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77daf0df187b6440b8e9e009e21f9c6656a2341b146f7af01981673206f1703b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_VERSION=0.12.3
# Sat, 07 Jul 2018 03:47:14 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Sat, 07 Jul 2018 03:47:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:47:32 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:47:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:47:33 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:47:33 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:47:33 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5fffad003cf19b11297672dc917fabc2e5504d04c13a49e261bd595be7cbf4`  
		Last Modified: Sat, 07 Jul 2018 03:51:55 GMT  
		Size: 28.8 MB (28840800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56224e70faba376218950d02cec3ab6291a29d47907c7d9930c664fddd75347`  
		Last Modified: Sat, 07 Jul 2018 03:51:44 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:ea744e2981b42d3792a44ba05d9bcfea4f9160c3900ba292856bff99c1b238f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:1afcfa902b2deec9bc45118debdbddfd5b39a3e8998566c0271ac3b88b68f7fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125363805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167135b79db9c87b1adce78d116a50085e7ee41865a2e9bf5887dc5f88095b71`
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
# Mon, 06 Aug 2018 20:05:53 GMT
ENV KONG_VERSION=0.12.3
# Mon, 06 Aug 2018 20:06:18 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:06:26 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:06:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:06:26 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:06:27 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:06:27 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd0cdb88e061927d22d750014153c69fc7d71e2dbd018bb0912a689f8ce5daa`  
		Last Modified: Mon, 06 Aug 2018 20:10:47 GMT  
		Size: 50.7 MB (50668800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9626c1548653798b324bcfb86d35cec3543d5d5e257de8f0008bef5250367e99`  
		Last Modified: Mon, 06 Aug 2018 20:10:31 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:714c56c48c52861fad6958704ab921106a3a666aec911d16f323cc4bc505ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:fc41fe2a579497fc417aa648bf8a9aaa84539a1f50d29d86064b7902a7fd00a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33425939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ab3b43d6b330548dc0c2b4ead89f69b5b1884265a1577247bff0dd98290fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_VERSION=0.13.1
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Sat, 07 Jul 2018 03:46:35 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:46:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:46:41 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:46:41 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:46:41 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe9a992739faaaacd7348ee281bfbde4bd67bbd11837eb73cc2cc447a88859`  
		Last Modified: Sat, 07 Jul 2018 03:50:49 GMT  
		Size: 31.4 MB (31410958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea6286977835b4168df3b2c23fdfc0c4b7bea46967af1ca600cac535aee3c9`  
		Last Modified: Sat, 07 Jul 2018 03:50:37 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:714c56c48c52861fad6958704ab921106a3a666aec911d16f323cc4bc505ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:fc41fe2a579497fc417aa648bf8a9aaa84539a1f50d29d86064b7902a7fd00a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33425939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ab3b43d6b330548dc0c2b4ead89f69b5b1884265a1577247bff0dd98290fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_VERSION=0.13.1
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Sat, 07 Jul 2018 03:46:35 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:46:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:46:41 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:46:41 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:46:41 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe9a992739faaaacd7348ee281bfbde4bd67bbd11837eb73cc2cc447a88859`  
		Last Modified: Sat, 07 Jul 2018 03:50:49 GMT  
		Size: 31.4 MB (31410958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea6286977835b4168df3b2c23fdfc0c4b7bea46967af1ca600cac535aee3c9`  
		Last Modified: Sat, 07 Jul 2018 03:50:37 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:714c56c48c52861fad6958704ab921106a3a666aec911d16f323cc4bc505ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:fc41fe2a579497fc417aa648bf8a9aaa84539a1f50d29d86064b7902a7fd00a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33425939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ab3b43d6b330548dc0c2b4ead89f69b5b1884265a1577247bff0dd98290fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_VERSION=0.13.1
# Sat, 07 Jul 2018 03:46:27 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Sat, 07 Jul 2018 03:46:35 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:46:40 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:46:41 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:46:41 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:46:41 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfe9a992739faaaacd7348ee281bfbde4bd67bbd11837eb73cc2cc447a88859`  
		Last Modified: Sat, 07 Jul 2018 03:50:49 GMT  
		Size: 31.4 MB (31410958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaea6286977835b4168df3b2c23fdfc0c4b7bea46967af1ca600cac535aee3c9`  
		Last Modified: Sat, 07 Jul 2018 03:50:37 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:c98a4d8ff17d87782940263934268b7911661b481fff25994f4f15eb647ad639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:d9fec902e45d475eba460b14c976723c2763de12ad0047e86a615c7557581fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128346392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5395a825e21cdf36aaa4e517eb23277b81e184724bc6df7a9846dcf922a07974`
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
# Mon, 06 Aug 2018 20:05:00 GMT
ENV KONG_VERSION=0.13.1
# Mon, 06 Aug 2018 20:05:23 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:05:27 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:05:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:05:28 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:05:28 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:05:28 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e621db30d36bb11fc5ed3cb4dd0065f50dfb6164b75e3e8a1fb645f3a27667f`  
		Last Modified: Mon, 06 Aug 2018 20:09:47 GMT  
		Size: 53.7 MB (53651388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e4a427e0768f7a9c52c5e04517f9af29515046683a6f7a4059faca847f754`  
		Last Modified: Mon, 06 Aug 2018 20:09:29 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:c98a4d8ff17d87782940263934268b7911661b481fff25994f4f15eb647ad639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:d9fec902e45d475eba460b14c976723c2763de12ad0047e86a615c7557581fc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128346392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5395a825e21cdf36aaa4e517eb23277b81e184724bc6df7a9846dcf922a07974`
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
# Mon, 06 Aug 2018 20:05:00 GMT
ENV KONG_VERSION=0.13.1
# Mon, 06 Aug 2018 20:05:23 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Mon, 06 Aug 2018 20:05:27 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Mon, 06 Aug 2018 20:05:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Aug 2018 20:05:28 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Mon, 06 Aug 2018 20:05:28 GMT
STOPSIGNAL [SIGTERM]
# Mon, 06 Aug 2018 20:05:28 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:256b176beaff7815db2a93ee2071621ae88f451bb1e198ca73010ed5bba79b65`  
		Last Modified: Mon, 06 Aug 2018 19:33:53 GMT  
		Size: 74.7 MB (74694681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e621db30d36bb11fc5ed3cb4dd0065f50dfb6164b75e3e8a1fb645f3a27667f`  
		Last Modified: Mon, 06 Aug 2018 20:09:47 GMT  
		Size: 53.7 MB (53651388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e4a427e0768f7a9c52c5e04517f9af29515046683a6f7a4059faca847f754`  
		Last Modified: Mon, 06 Aug 2018 20:09:29 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14`

**does not exist** (yet?)

## `kong:0.14.1`

**does not exist** (yet?)

## `kong:0.14.1-alpine`

**does not exist** (yet?)

## `kong:0.14.1-centos`

**does not exist** (yet?)

## `kong:0.14-centos`

**does not exist** (yet?)

## `kong:latest`

```console
$ docker pull kong@sha256:e5b1cfb2107d2a4018b1364536fdd4af7d2755962a2c53ddd966b27c7680b962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:effa9a68317ff2ab0e384fbccaae75213e89cd7909a054a819de90349351942a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33564000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0423fe5663fcb29c83f3bff1ee0064ab200a4b7d1e38e4dd7b2122a6caa2bc00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Sat, 07 Jul 2018 03:44:49 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Sat, 07 Jul 2018 03:44:49 GMT
ENV KONG_VERSION=0.14.0
# Sat, 07 Jul 2018 03:44:50 GMT
ENV KONG_SHA256=968b355f6e46218dee31497f65fd708cf219b096c1c54bff7da00efb0c2db520
# Sat, 07 Jul 2018 03:45:02 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Sat, 07 Jul 2018 03:45:03 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Sat, 07 Jul 2018 03:45:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:45:04 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Sat, 07 Jul 2018 03:45:04 GMT
STOPSIGNAL [SIGTERM]
# Sat, 07 Jul 2018 03:45:04 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9db5a53243089eee0256ac935d0d650755f05b17e419d6e6e0fe2f09ef452b`  
		Last Modified: Sat, 07 Jul 2018 03:48:57 GMT  
		Size: 31.5 MB (31549028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdea2e533866fe120db80ba618785b29d0655593230e8e5d882c6e6d7ccd35b`  
		Last Modified: Sat, 07 Jul 2018 03:48:45 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
