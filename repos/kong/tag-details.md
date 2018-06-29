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
-	[`kong:0.14.0rc2`](#kong0140rc2)
-	[`kong:0.14.0rc2-alpine`](#kong0140rc2-alpine)
-	[`kong:0.14.0rc2-centos`](#kong0140rc2-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:da6edb583fb14e09d274da45c951412705e9869f7c62f54a0c20e339f2851655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:a9f5ab711be62acffd794e5c4e59effb379df274f95f7be8a51627c68ffde585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123916825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f7a70e8900327645716adf2af272b0888046cbec45c7902b3b01fb6cbcd95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:23:33 GMT
ENV KONG_VERSION=0.11.2
# Thu, 21 Jun 2018 19:23:57 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:23:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:23:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:23:58 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:23:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5534bdb1193d77a816c2502c91d60888cd23eddb1fd7b31480bf3b69d3af2`  
		Last Modified: Thu, 21 Jun 2018 19:29:33 GMT  
		Size: 49.2 MB (49223134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e98e7d365f17bcaf46616fbb9108a7519141371349c6ab623ba278ecd3893a7`  
		Last Modified: Thu, 21 Jun 2018 19:29:20 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:da6edb583fb14e09d274da45c951412705e9869f7c62f54a0c20e339f2851655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:a9f5ab711be62acffd794e5c4e59effb379df274f95f7be8a51627c68ffde585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123916825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f7a70e8900327645716adf2af272b0888046cbec45c7902b3b01fb6cbcd95c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:23:33 GMT
ENV KONG_VERSION=0.11.2
# Thu, 21 Jun 2018 19:23:57 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:23:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:23:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:23:58 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:23:58 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:23:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5534bdb1193d77a816c2502c91d60888cd23eddb1fd7b31480bf3b69d3af2`  
		Last Modified: Thu, 21 Jun 2018 19:29:33 GMT  
		Size: 49.2 MB (49223134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e98e7d365f17bcaf46616fbb9108a7519141371349c6ab623ba278ecd3893a7`  
		Last Modified: Thu, 21 Jun 2018 19:29:20 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:38bdf3e96362edc732b5331d05e604b4fe3bd6aa2e83fd1c753b00451ad08bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:680def88359accf4043db5894700334264fd3d6460b7b4f38bbe742edb8234dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30071893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef30334cad1c87a4c5238403463e5a98ca73d0cc00c6b2ceb701f73e4de9f19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:23:11 GMT
ENV KONG_VERSION=0.11.2
# Thu, 21 Jun 2018 19:23:11 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Thu, 21 Jun 2018 19:23:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:23:22 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:23:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:23:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:23:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:23:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4149e663764e088d3e8debb346238631270bce70b2a8c237e1e627f68990d55`  
		Last Modified: Thu, 21 Jun 2018 19:28:51 GMT  
		Size: 28.1 MB (28079823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d57588d6bb1db572ffaf4dfdbbafff542aac6bdd2cb498d613348d032a068e`  
		Last Modified: Thu, 21 Jun 2018 19:28:41 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:38bdf3e96362edc732b5331d05e604b4fe3bd6aa2e83fd1c753b00451ad08bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:680def88359accf4043db5894700334264fd3d6460b7b4f38bbe742edb8234dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30071893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef30334cad1c87a4c5238403463e5a98ca73d0cc00c6b2ceb701f73e4de9f19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:23:11 GMT
ENV KONG_VERSION=0.11.2
# Thu, 21 Jun 2018 19:23:11 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Thu, 21 Jun 2018 19:23:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:23:22 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:23:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:23:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:23:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:23:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4149e663764e088d3e8debb346238631270bce70b2a8c237e1e627f68990d55`  
		Last Modified: Thu, 21 Jun 2018 19:28:51 GMT  
		Size: 28.1 MB (28079823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d57588d6bb1db572ffaf4dfdbbafff542aac6bdd2cb498d613348d032a068e`  
		Last Modified: Thu, 21 Jun 2018 19:28:41 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:3d4cfb7e6c3c6c17a7cf9e4789428706ead71fdb952bc176232dd6148822e921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:ea30736cd013546717b5e952195f96e03718ec66b755ed1b3a1130db0fde703b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30833295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4adc1912a099385bedd020e805e87e6c3f9f5ef3281db20feaf4dcbc4dc0ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:11 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:11 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Thu, 21 Jun 2018 19:22:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:22:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e404111de5bb11116ef057af3f2874dc92c9c8768012a43ffec9a60ee68d9a`  
		Last Modified: Thu, 21 Jun 2018 19:27:12 GMT  
		Size: 28.8 MB (28841224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9539b497275130828a9a8e286ecfe37a7e3d31a15a11ac321781d64766b316dd`  
		Last Modified: Thu, 21 Jun 2018 19:27:00 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-centos`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:3d4cfb7e6c3c6c17a7cf9e4789428706ead71fdb952bc176232dd6148822e921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:ea30736cd013546717b5e952195f96e03718ec66b755ed1b3a1130db0fde703b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30833295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4adc1912a099385bedd020e805e87e6c3f9f5ef3281db20feaf4dcbc4dc0ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:11 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:11 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Thu, 21 Jun 2018 19:22:22 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:22:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e404111de5bb11116ef057af3f2874dc92c9c8768012a43ffec9a60ee68d9a`  
		Last Modified: Thu, 21 Jun 2018 19:27:12 GMT  
		Size: 28.8 MB (28841224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9539b497275130828a9a8e286ecfe37a7e3d31a15a11ac321781d64766b316dd`  
		Last Modified: Thu, 21 Jun 2018 19:27:00 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-centos`

```console
$ docker pull kong@sha256:2d3294725caf1d7896f0cebd54ebe6a476cd7a88fb84c30aa0c6ec4218630da3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:af6c4a8cfb07116d7abd693df039bff8fc84f382870ae705062ef7ba7b3a15b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.4 MB (125359637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0887f66ce3bd14d39810ba4989f766d43df1902deee6fd7600ae098006fc8801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:22:31 GMT
ENV KONG_VERSION=0.12.3
# Thu, 21 Jun 2018 19:22:56 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:57 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:57 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28a9d057fdfbe44336b5426af1e9665f4c227d158908f1dc9d33a939b18db9e`  
		Last Modified: Thu, 21 Jun 2018 19:28:01 GMT  
		Size: 50.7 MB (50665945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd645a1452240e05ee7e05d23c38e63758619c06a0beac494b0e5bbe85a629c`  
		Last Modified: Thu, 21 Jun 2018 19:27:45 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:d61b1cfbdadc47f6508676fbcf9a08c7114cfd4fbe226d7e76069f6927800665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:123e78a72de124e7881a19373328c82b0d872aefa803d26c1bb4c030f5d76b99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33401942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0d0acab162f8a43a424122930f39c3d73c4a757e346a3a1c257138ea6271a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:21:12 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 21 Jun 2018 19:21:20 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:21:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:21:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:21:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:21:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36011454c2e7ebbc23f56ac8533d211dff07f43c25fe8bf2d9baf528a8808ab`  
		Last Modified: Thu, 21 Jun 2018 19:25:38 GMT  
		Size: 31.4 MB (31409872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8655c0511de6a759533750d4c62399b44a958af940153f73b79e157f04e35031`  
		Last Modified: Thu, 21 Jun 2018 19:25:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:d61b1cfbdadc47f6508676fbcf9a08c7114cfd4fbe226d7e76069f6927800665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:123e78a72de124e7881a19373328c82b0d872aefa803d26c1bb4c030f5d76b99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33401942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0d0acab162f8a43a424122930f39c3d73c4a757e346a3a1c257138ea6271a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:21:12 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 21 Jun 2018 19:21:20 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:21:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:21:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:21:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:21:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36011454c2e7ebbc23f56ac8533d211dff07f43c25fe8bf2d9baf528a8808ab`  
		Last Modified: Thu, 21 Jun 2018 19:25:38 GMT  
		Size: 31.4 MB (31409872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8655c0511de6a759533750d4c62399b44a958af940153f73b79e157f04e35031`  
		Last Modified: Thu, 21 Jun 2018 19:25:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:d61b1cfbdadc47f6508676fbcf9a08c7114cfd4fbe226d7e76069f6927800665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:123e78a72de124e7881a19373328c82b0d872aefa803d26c1bb4c030f5d76b99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33401942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0d0acab162f8a43a424122930f39c3d73c4a757e346a3a1c257138ea6271a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:21:12 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 21 Jun 2018 19:21:20 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:21:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:21:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:21:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:21:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36011454c2e7ebbc23f56ac8533d211dff07f43c25fe8bf2d9baf528a8808ab`  
		Last Modified: Thu, 21 Jun 2018 19:25:38 GMT  
		Size: 31.4 MB (31409872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8655c0511de6a759533750d4c62399b44a958af940153f73b79e157f04e35031`  
		Last Modified: Thu, 21 Jun 2018 19:25:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-centos`

```console
$ docker pull kong@sha256:a2643850300ee0d08506586c92d5bce4553c4e1bb5637def681db15648b67890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:a2fe43994e067353de141838e8a1cf9506067d1204c0f3175a2feb2d09793c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128328238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c14e5af01f4d3c5484948aaa431568b36424b4f3caae3892ae2297ea9e107f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:37 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:22:00 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:01 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:01 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:01 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:02 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4c0db2cc588fbc10cf81da9992801a9e196ea1b67d63196653b687026b199`  
		Last Modified: Thu, 21 Jun 2018 19:26:35 GMT  
		Size: 53.6 MB (53634546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a000ac16d9add8097e0d38da1403b23e50580cddc127cf4724e4e031d7df392a`  
		Last Modified: Thu, 21 Jun 2018 19:26:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-centos`

```console
$ docker pull kong@sha256:a2643850300ee0d08506586c92d5bce4553c4e1bb5637def681db15648b67890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:a2fe43994e067353de141838e8a1cf9506067d1204c0f3175a2feb2d09793c7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128328238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c14e5af01f4d3c5484948aaa431568b36424b4f3caae3892ae2297ea9e107f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Mon, 04 Jun 2018 22:19:33 GMT
ADD file:8f4b3be0c1427b158f7c30bad27af0d1bded0af60935cf8f0789286439ebdde9 in / 
# Mon, 04 Jun 2018 22:19:34 GMT
LABEL org.label-schema.schema-version== 1.0     org.label-schema.name=CentOS Base Image     org.label-schema.vendor=CentOS     org.label-schema.license=GPLv2     org.label-schema.build-date=20180531
# Mon, 04 Jun 2018 22:19:34 GMT
CMD ["/bin/bash"]
# Thu, 21 Jun 2018 19:20:41 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:37 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:22:00 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 21 Jun 2018 19:22:01 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:22:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:22:01 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:22:01 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:22:02 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:7dc0dca2b1516961d6b3200564049db0a6e0410b370bb2189e2efae0d368616f`  
		Last Modified: Mon, 04 Jun 2018 22:22:36 GMT  
		Size: 74.7 MB (74693368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c4c0db2cc588fbc10cf81da9992801a9e196ea1b67d63196653b687026b199`  
		Last Modified: Thu, 21 Jun 2018 19:26:35 GMT  
		Size: 53.6 MB (53634546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a000ac16d9add8097e0d38da1403b23e50580cddc127cf4724e4e031d7df392a`  
		Last Modified: Thu, 21 Jun 2018 19:26:18 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.0rc2`

**does not exist** (yet?)

## `kong:0.14.0rc2-alpine`

**does not exist** (yet?)

## `kong:0.14.0rc2-centos`

**does not exist** (yet?)

## `kong:latest`

```console
$ docker pull kong@sha256:d61b1cfbdadc47f6508676fbcf9a08c7114cfd4fbe226d7e76069f6927800665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:123e78a72de124e7881a19373328c82b0d872aefa803d26c1bb4c030f5d76b99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33401942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b0d0acab162f8a43a424122930f39c3d73c4a757e346a3a1c257138ea6271a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Thu, 21 Jun 2018 19:20:17 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 21 Jun 2018 19:21:11 GMT
ENV KONG_VERSION=0.13.1
# Thu, 21 Jun 2018 19:21:12 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 21 Jun 2018 19:21:20 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 21 Jun 2018 19:21:23 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Thu, 21 Jun 2018 19:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 21 Jun 2018 19:21:23 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Thu, 21 Jun 2018 19:21:23 GMT
STOPSIGNAL [SIGTERM]
# Thu, 21 Jun 2018 19:21:23 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36011454c2e7ebbc23f56ac8533d211dff07f43c25fe8bf2d9baf528a8808ab`  
		Last Modified: Thu, 21 Jun 2018 19:25:38 GMT  
		Size: 31.4 MB (31409872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8655c0511de6a759533750d4c62399b44a958af940153f73b79e157f04e35031`  
		Last Modified: Thu, 21 Jun 2018 19:25:25 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
