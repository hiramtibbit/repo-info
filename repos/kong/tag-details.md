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
$ docker pull kong@sha256:4ed1422fdca69b9ff8fc72528fa229c885e3987cc62f56c821a9f57a1108a01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:c68bcb13a79f9efb75b8d429dd1d1eb8a96f6c2f35d1f5b0922261d5de67bac3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123960168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89420e35d792862468998202c163580893c95b2713379a1bf2cecb2e30bb4596`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:55 GMT
ENV KONG_VERSION=0.11.2
# Tue, 09 Oct 2018 18:48:09 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:48:09 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:48:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:48:10 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:48:10 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:48:10 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2d7d3f722acde0177388f5b63f704755e9159818b51ec2b38a2a8818a5bce`  
		Last Modified: Tue, 09 Oct 2018 18:50:43 GMT  
		Size: 49.3 MB (49256843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282976318e21d37d9dd74ea8ea663d698258d20a6f277c49ada0fbcc2cebbf5a`  
		Last Modified: Tue, 09 Oct 2018 18:50:34 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:4ed1422fdca69b9ff8fc72528fa229c885e3987cc62f56c821a9f57a1108a01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:c68bcb13a79f9efb75b8d429dd1d1eb8a96f6c2f35d1f5b0922261d5de67bac3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123960168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89420e35d792862468998202c163580893c95b2713379a1bf2cecb2e30bb4596`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:55 GMT
ENV KONG_VERSION=0.11.2
# Tue, 09 Oct 2018 18:48:09 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:48:09 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:48:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:48:10 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:48:10 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:48:10 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc2d7d3f722acde0177388f5b63f704755e9159818b51ec2b38a2a8818a5bce`  
		Last Modified: Tue, 09 Oct 2018 18:50:43 GMT  
		Size: 49.3 MB (49256843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282976318e21d37d9dd74ea8ea663d698258d20a6f277c49ada0fbcc2cebbf5a`  
		Last Modified: Tue, 09 Oct 2018 18:50:34 GMT  
		Size: 323.0 B  
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
$ docker pull kong@sha256:53b03065818ebb472dff779676ed2251af730b6de8f47b1c66db0c0b5de54e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:1a4324a3c5b2bc5f1f0816f0abc5eaa58636b33f0b79a0fcd1d481eaaf751503
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125394068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486def60a8fe21fb56ba1e96d0c821c2323a5f7ec346831fb7bd0d5cc9612bea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:31 GMT
ENV KONG_VERSION=0.12.3
# Tue, 09 Oct 2018 18:47:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:47:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:47:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:47:45 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:47:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ecd9afb7f4c0e4f560b6531e39d48d898f818f3a8383093f077c5850fc9d`  
		Last Modified: Tue, 09 Oct 2018 18:50:00 GMT  
		Size: 50.7 MB (50690744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608f251c7193aa4f22ed61d2763edfb94a965e821ef93cb47b015b4f0997447c`  
		Last Modified: Tue, 09 Oct 2018 18:49:52 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:53b03065818ebb472dff779676ed2251af730b6de8f47b1c66db0c0b5de54e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:1a4324a3c5b2bc5f1f0816f0abc5eaa58636b33f0b79a0fcd1d481eaaf751503
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125394068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486def60a8fe21fb56ba1e96d0c821c2323a5f7ec346831fb7bd0d5cc9612bea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:31 GMT
ENV KONG_VERSION=0.12.3
# Tue, 09 Oct 2018 18:47:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:47:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:47:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:47:45 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:47:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ecd9afb7f4c0e4f560b6531e39d48d898f818f3a8383093f077c5850fc9d`  
		Last Modified: Tue, 09 Oct 2018 18:50:00 GMT  
		Size: 50.7 MB (50690744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608f251c7193aa4f22ed61d2763edfb94a965e821ef93cb47b015b4f0997447c`  
		Last Modified: Tue, 09 Oct 2018 18:49:52 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:53b03065818ebb472dff779676ed2251af730b6de8f47b1c66db0c0b5de54e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:1a4324a3c5b2bc5f1f0816f0abc5eaa58636b33f0b79a0fcd1d481eaaf751503
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125394068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486def60a8fe21fb56ba1e96d0c821c2323a5f7ec346831fb7bd0d5cc9612bea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:31 GMT
ENV KONG_VERSION=0.12.3
# Tue, 09 Oct 2018 18:47:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:47:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:47:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:47:45 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:47:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ecd9afb7f4c0e4f560b6531e39d48d898f818f3a8383093f077c5850fc9d`  
		Last Modified: Tue, 09 Oct 2018 18:50:00 GMT  
		Size: 50.7 MB (50690744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608f251c7193aa4f22ed61d2763edfb94a965e821ef93cb47b015b4f0997447c`  
		Last Modified: Tue, 09 Oct 2018 18:49:52 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:53b03065818ebb472dff779676ed2251af730b6de8f47b1c66db0c0b5de54e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:1a4324a3c5b2bc5f1f0816f0abc5eaa58636b33f0b79a0fcd1d481eaaf751503
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125394068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486def60a8fe21fb56ba1e96d0c821c2323a5f7ec346831fb7bd0d5cc9612bea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:31 GMT
ENV KONG_VERSION=0.12.3
# Tue, 09 Oct 2018 18:47:44 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:47:44 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:47:45 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:47:45 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:47:45 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ecd9afb7f4c0e4f560b6531e39d48d898f818f3a8383093f077c5850fc9d`  
		Last Modified: Tue, 09 Oct 2018 18:50:00 GMT  
		Size: 50.7 MB (50690744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608f251c7193aa4f22ed61d2763edfb94a965e821ef93cb47b015b4f0997447c`  
		Last Modified: Tue, 09 Oct 2018 18:49:52 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:bf8dab1305d3c20456237fa8edd683263e0dc7d90aaa97d9c343887941532b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:a65a7ff9ce35e8f05e23d0eb8625c82ca1a9b78e460518ff4ddaa73122ea80bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128365741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca96fc283e04a2e3d416bdccb3b594205de0ae6f48565dc12a751e7b1626b36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:08 GMT
ENV KONG_VERSION=0.13.1
# Tue, 09 Oct 2018 18:47:20 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:47:21 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:47:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:47:21 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:47:21 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:47:21 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa87bf5305f853cfc264ded3a7dc387bf74fe9bdeb7271e5e03ee1f931a6027`  
		Last Modified: Tue, 09 Oct 2018 18:49:35 GMT  
		Size: 53.7 MB (53662417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30207fe5ef514e943c5ed215f3af389db0798a2c8d0935f991f940581ffa19cf`  
		Last Modified: Tue, 09 Oct 2018 18:49:26 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:bf8dab1305d3c20456237fa8edd683263e0dc7d90aaa97d9c343887941532b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:a65a7ff9ce35e8f05e23d0eb8625c82ca1a9b78e460518ff4ddaa73122ea80bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128365741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca96fc283e04a2e3d416bdccb3b594205de0ae6f48565dc12a751e7b1626b36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:47:08 GMT
ENV KONG_VERSION=0.13.1
# Tue, 09 Oct 2018 18:47:20 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:47:21 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:47:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:47:21 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:47:21 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:47:21 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa87bf5305f853cfc264ded3a7dc387bf74fe9bdeb7271e5e03ee1f931a6027`  
		Last Modified: Tue, 09 Oct 2018 18:49:35 GMT  
		Size: 53.7 MB (53662417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30207fe5ef514e943c5ed215f3af389db0798a2c8d0935f991f940581ffa19cf`  
		Last Modified: Tue, 09 Oct 2018 18:49:26 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:517a6e083c4a4226f2c363e1e50ae76ac27935943f3634cfc0663793a3d7777c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:baafa58fb68114b69eb49ab3c2fb94475a4c1cf50881e5fc0a07fd676e0d9f0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128641552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d82286da29b2eadf5507b53d929b42dd2ce2f80c1cd5a86f1f556e817fbd9de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:46:44 GMT
ENV KONG_VERSION=0.14.1
# Tue, 09 Oct 2018 18:46:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:46:57 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:46:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:46:57 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:46:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189d62507d0aaa5d467f1ec847e021f4d016f45a7d130bf640e21a0db447ed33`  
		Last Modified: Tue, 09 Oct 2018 18:49:07 GMT  
		Size: 53.9 MB (53938238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670573ea85b8e33f473adceb6267f1a4fe7fbcbed19293355a7192c1cb3e0cb9`  
		Last Modified: Tue, 09 Oct 2018 18:48:57 GMT  
		Size: 312.0 B  
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
$ docker pull kong@sha256:517a6e083c4a4226f2c363e1e50ae76ac27935943f3634cfc0663793a3d7777c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-centos` - linux; amd64

```console
$ docker pull kong@sha256:baafa58fb68114b69eb49ab3c2fb94475a4c1cf50881e5fc0a07fd676e0d9f0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128641552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d82286da29b2eadf5507b53d929b42dd2ce2f80c1cd5a86f1f556e817fbd9de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:43 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Tue, 09 Oct 2018 18:46:44 GMT
ENV KONG_VERSION=0.14.1
# Tue, 09 Oct 2018 18:46:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Tue, 09 Oct 2018 18:46:57 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Tue, 09 Oct 2018 18:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Oct 2018 18:46:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Tue, 09 Oct 2018 18:46:57 GMT
STOPSIGNAL [SIGTERM]
# Tue, 09 Oct 2018 18:46:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189d62507d0aaa5d467f1ec847e021f4d016f45a7d130bf640e21a0db447ed33`  
		Last Modified: Tue, 09 Oct 2018 18:49:07 GMT  
		Size: 53.9 MB (53938238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670573ea85b8e33f473adceb6267f1a4fe7fbcbed19293355a7192c1cb3e0cb9`  
		Last Modified: Tue, 09 Oct 2018 18:48:57 GMT  
		Size: 312.0 B  
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
$ docker pull kong@sha256:49cdba9e535d98b5102ece3687cddd4cb0adc51f3dd1933dc399b8a59d5988d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.0rc2-centos` - linux; amd64

```console
$ docker pull kong@sha256:cd008525cdba8447b58e767e7a85398ed6c91fad0ee1d4eb4cadb16f6966353c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124204797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545542f6ccecf85fd6b790e827f4ed29549b675d59c98f6a1501c5d3de19b97a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:17 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Oct 2018 01:07:46 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 25 Oct 2018 01:08:28 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 25 Oct 2018 01:08:29 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:08:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:08:30 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 25 Oct 2018 01:08:30 GMT
STOPSIGNAL [SIGTERM]
# Thu, 25 Oct 2018 01:08:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd69f6ec1f68025d033bbbf7aec9c7fb2defa749476e3a0255e37eba1535e01`  
		Last Modified: Thu, 25 Oct 2018 01:10:20 GMT  
		Size: 49.5 MB (49501482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cf38d2ba8cd27edd2be395f12a7d64f1fe11eeb9340093d863e1617dba3aa9`  
		Last Modified: Thu, 25 Oct 2018 01:10:11 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.0rc3`

**does not exist** (yet?)

## `kong:1.0.0rc3-alpine`

**does not exist** (yet?)

## `kong:1.0.0rc3-centos`

**does not exist** (yet?)

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
$ docker pull kong@sha256:49cdba9e535d98b5102ece3687cddd4cb0adc51f3dd1933dc399b8a59d5988d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0rc2-centos` - linux; amd64

```console
$ docker pull kong@sha256:cd008525cdba8447b58e767e7a85398ed6c91fad0ee1d4eb4cadb16f6966353c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124204797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545542f6ccecf85fd6b790e827f4ed29549b675d59c98f6a1501c5d3de19b97a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Tue, 09 Oct 2018 18:46:17 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 25 Oct 2018 01:07:46 GMT
ENV KONG_VERSION=1.0.0rc2
# Thu, 25 Oct 2018 01:08:28 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 25 Oct 2018 01:08:29 GMT
COPY file:e1ac3f3f858d8725b7a4bbe2a68d491ba6f524d0d6384516d5f0ce50d28b9fda in /docker-entrypoint.sh 
# Thu, 25 Oct 2018 01:08:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 01:08:30 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 25 Oct 2018 01:08:30 GMT
STOPSIGNAL [SIGTERM]
# Thu, 25 Oct 2018 01:08:30 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd69f6ec1f68025d033bbbf7aec9c7fb2defa749476e3a0255e37eba1535e01`  
		Last Modified: Thu, 25 Oct 2018 01:10:20 GMT  
		Size: 49.5 MB (49501482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cf38d2ba8cd27edd2be395f12a7d64f1fe11eeb9340093d863e1617dba3aa9`  
		Last Modified: Thu, 25 Oct 2018 01:10:11 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0rc3`

**does not exist** (yet?)

## `kong:1.0rc3-alpine`

**does not exist** (yet?)

## `kong:1.0rc3-centos`

**does not exist** (yet?)

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
