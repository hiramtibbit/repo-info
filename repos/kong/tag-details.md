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
-	[`kong:0.14.0`](#kong0140)
-	[`kong:0.14.0-alpine`](#kong0140-alpine)
-	[`kong:0.14.0-centos`](#kong0140-centos)
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
$ docker pull kong@sha256:74ede25d54ec885f8475a5aceb7808c721d6dcc5fafd408d87c1e891233ce4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:42199988efe4cd4ebe0d9fd85b23dcf6ebc7fb2760e8c3f862bcaca115ed5a0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30095352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee8e3805ea4e02b6482bd5677197d9831d4477de866a016600f84f17a4366e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:17:41 GMT
ENV KONG_VERSION=0.11.2
# Fri, 06 Jul 2018 15:17:41 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 06 Jul 2018 15:17:56 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:17:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:17:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:17:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:17:57 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:17:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e73342f5f0d5dddc1264f5710e2827ae7777212f54c3c1ea9d46cc63ceda49`  
		Last Modified: Fri, 06 Jul 2018 15:20:03 GMT  
		Size: 28.1 MB (28080370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc919fe52b61108c8fa0040b8dfaaf2355b7479a1be580b9737ed9d8a3ae75aa`  
		Last Modified: Fri, 06 Jul 2018 15:19:58 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:74ede25d54ec885f8475a5aceb7808c721d6dcc5fafd408d87c1e891233ce4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:42199988efe4cd4ebe0d9fd85b23dcf6ebc7fb2760e8c3f862bcaca115ed5a0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30095352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee8e3805ea4e02b6482bd5677197d9831d4477de866a016600f84f17a4366e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:17:41 GMT
ENV KONG_VERSION=0.11.2
# Fri, 06 Jul 2018 15:17:41 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Fri, 06 Jul 2018 15:17:56 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:17:57 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:17:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:17:57 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:17:57 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:17:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e73342f5f0d5dddc1264f5710e2827ae7777212f54c3c1ea9d46cc63ceda49`  
		Last Modified: Fri, 06 Jul 2018 15:20:03 GMT  
		Size: 28.1 MB (28080370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc919fe52b61108c8fa0040b8dfaaf2355b7479a1be580b9737ed9d8a3ae75aa`  
		Last Modified: Fri, 06 Jul 2018 15:19:58 GMT  
		Size: 324.0 B  
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
$ docker pull kong@sha256:48052061b1fdd4d658df1b5d4d389f2ffa3022ca34f8e845bc5fd607cb0a02be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c1f2c06641e22e0b2ac75da072bebfbd580a1101771d1fd1b2b2084ccb739759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3dd5f039f570cd94f7a9b3175f52186c0eb47611ac9d5c69c361aac9b23768`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:17:07 GMT
ENV KONG_VERSION=0.12.3
# Fri, 06 Jul 2018 15:17:08 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Fri, 06 Jul 2018 15:17:28 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:17:28 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:17:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:17:29 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:17:29 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:17:29 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e6e557a8df29eee82e6300d002ae5bc8b66d1511c2c9e32311218e8bf480ce`  
		Last Modified: Fri, 06 Jul 2018 15:19:31 GMT  
		Size: 28.8 MB (28840645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0c3c5d38336aa5caf13afec1fa9d7f8ab08481db01500a8e9676c56f554774`  
		Last Modified: Fri, 06 Jul 2018 15:19:27 GMT  
		Size: 323.0 B  
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
$ docker pull kong@sha256:48052061b1fdd4d658df1b5d4d389f2ffa3022ca34f8e845bc5fd607cb0a02be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:c1f2c06641e22e0b2ac75da072bebfbd580a1101771d1fd1b2b2084ccb739759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30855626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb3dd5f039f570cd94f7a9b3175f52186c0eb47611ac9d5c69c361aac9b23768`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:17:07 GMT
ENV KONG_VERSION=0.12.3
# Fri, 06 Jul 2018 15:17:08 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Fri, 06 Jul 2018 15:17:28 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:17:28 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:17:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:17:29 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:17:29 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:17:29 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e6e557a8df29eee82e6300d002ae5bc8b66d1511c2c9e32311218e8bf480ce`  
		Last Modified: Fri, 06 Jul 2018 15:19:31 GMT  
		Size: 28.8 MB (28840645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0c3c5d38336aa5caf13afec1fa9d7f8ab08481db01500a8e9676c56f554774`  
		Last Modified: Fri, 06 Jul 2018 15:19:27 GMT  
		Size: 323.0 B  
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
$ docker pull kong@sha256:ce31f88706e039827d1fb6d881b38875b2d8e12001f5a49cae215e93234b5168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:f624d9d2e8583b564e2ac1352f75998578fc141e9c39134e2c2e96aeff3ed5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c740b1fe6ed0a684d8971ee198c4d1b88b52ebed828022318aba57b05036cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:16:45 GMT
ENV KONG_VERSION=0.13.1
# Fri, 06 Jul 2018 15:16:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 06 Jul 2018 15:16:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:16:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:16:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:16:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:16:56 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:16:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9e802eaf18e7c7f56e379211145b148504d52a04654c30f18935c90177427e`  
		Last Modified: Fri, 06 Jul 2018 15:18:38 GMT  
		Size: 31.4 MB (31411042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e827121c46e73812e921fddff04aded29c4cff64ce86c5ac55055dc8de3ca`  
		Last Modified: Fri, 06 Jul 2018 15:18:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:ce31f88706e039827d1fb6d881b38875b2d8e12001f5a49cae215e93234b5168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:f624d9d2e8583b564e2ac1352f75998578fc141e9c39134e2c2e96aeff3ed5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c740b1fe6ed0a684d8971ee198c4d1b88b52ebed828022318aba57b05036cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:16:45 GMT
ENV KONG_VERSION=0.13.1
# Fri, 06 Jul 2018 15:16:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 06 Jul 2018 15:16:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:16:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:16:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:16:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:16:56 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:16:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9e802eaf18e7c7f56e379211145b148504d52a04654c30f18935c90177427e`  
		Last Modified: Fri, 06 Jul 2018 15:18:38 GMT  
		Size: 31.4 MB (31411042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e827121c46e73812e921fddff04aded29c4cff64ce86c5ac55055dc8de3ca`  
		Last Modified: Fri, 06 Jul 2018 15:18:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:ce31f88706e039827d1fb6d881b38875b2d8e12001f5a49cae215e93234b5168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:f624d9d2e8583b564e2ac1352f75998578fc141e9c39134e2c2e96aeff3ed5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c740b1fe6ed0a684d8971ee198c4d1b88b52ebed828022318aba57b05036cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:16:45 GMT
ENV KONG_VERSION=0.13.1
# Fri, 06 Jul 2018 15:16:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 06 Jul 2018 15:16:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:16:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:16:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:16:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:16:56 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:16:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9e802eaf18e7c7f56e379211145b148504d52a04654c30f18935c90177427e`  
		Last Modified: Fri, 06 Jul 2018 15:18:38 GMT  
		Size: 31.4 MB (31411042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e827121c46e73812e921fddff04aded29c4cff64ce86c5ac55055dc8de3ca`  
		Last Modified: Fri, 06 Jul 2018 15:18:33 GMT  
		Size: 322.0 B  
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

## `kong:0.14.0`

**does not exist** (yet?)

## `kong:0.14.0-alpine`

**does not exist** (yet?)

## `kong:0.14.0-centos`

**does not exist** (yet?)

## `kong:latest`

```console
$ docker pull kong@sha256:ce31f88706e039827d1fb6d881b38875b2d8e12001f5a49cae215e93234b5168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:f624d9d2e8583b564e2ac1352f75998578fc141e9c39134e2c2e96aeff3ed5de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33426022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c740b1fe6ed0a684d8971ee198c4d1b88b52ebed828022318aba57b05036cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:15:47 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Fri, 06 Jul 2018 15:16:45 GMT
ENV KONG_VERSION=0.13.1
# Fri, 06 Jul 2018 15:16:46 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Fri, 06 Jul 2018 15:16:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 06 Jul 2018 15:16:55 GMT
COPY file:0ce55305f95ddcb78ffb96b9502c795c4dd1040025f4ec7c3e19e4b889022b90 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 15:16:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 15:16:56 GMT
EXPOSE 8000/tcp 8001/tcp 8443/tcp 8444/tcp
# Fri, 06 Jul 2018 15:16:56 GMT
STOPSIGNAL [SIGTERM]
# Fri, 06 Jul 2018 15:16:56 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9e802eaf18e7c7f56e379211145b148504d52a04654c30f18935c90177427e`  
		Last Modified: Fri, 06 Jul 2018 15:18:38 GMT  
		Size: 31.4 MB (31411042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570e827121c46e73812e921fddff04aded29c4cff64ce86c5ac55055dc8de3ca`  
		Last Modified: Fri, 06 Jul 2018 15:18:33 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
