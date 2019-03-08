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
-	[`kong:1.1.0rc1`](#kong110rc1)
-	[`kong:1.1.0rc1-alpine`](#kong110rc1-alpine)
-	[`kong:1.1.0rc1-centos`](#kong110rc1-centos)
-	[`kong:1.1rc1`](#kong11rc1)
-	[`kong:1.1rc1-alpine`](#kong11rc1-alpine)
-	[`kong:1.1rc1-centos`](#kong11rc1-centos)
-	[`kong:latest`](#konglatest)

## `kong:0.11`

```console
$ docker pull kong@sha256:d56a6e605947bd23dfeae0b1a1dbefe550e198fd002b2e33e1a7b6b5f8202e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11` - linux; amd64

```console
$ docker pull kong@sha256:05a6f51c9c7cc3bd54a54247be07228bc65394b8ed933e92e8c8fa3f0d1cfe37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124710149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3daf34617b0e4585005e17ef20a9db5bf8d5843b8185294dc5727ff8266ffa55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:54:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 06 Dec 2018 00:54:54 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 31 Jan 2019 02:19:58 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:58 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:58 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420b3039f6c7b594fecf1aac97ea36c93fde9e3192d28fede14148d4b7dcb464`  
		Last Modified: Thu, 06 Dec 2018 01:01:53 GMT  
		Size: 49.5 MB (49544296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179ebb9ea7e77b91aa90b9c866d53556ad12286a62541068c8743c5e109ddd66`  
		Last Modified: Thu, 31 Jan 2019 02:21:41 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2`

```console
$ docker pull kong@sha256:d56a6e605947bd23dfeae0b1a1dbefe550e198fd002b2e33e1a7b6b5f8202e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2` - linux; amd64

```console
$ docker pull kong@sha256:05a6f51c9c7cc3bd54a54247be07228bc65394b8ed933e92e8c8fa3f0d1cfe37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124710149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3daf34617b0e4585005e17ef20a9db5bf8d5843b8185294dc5727ff8266ffa55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:54:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 06 Dec 2018 00:54:54 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 31 Jan 2019 02:19:58 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:58 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:58 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:58 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420b3039f6c7b594fecf1aac97ea36c93fde9e3192d28fede14148d4b7dcb464`  
		Last Modified: Thu, 06 Dec 2018 01:01:53 GMT  
		Size: 49.5 MB (49544296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179ebb9ea7e77b91aa90b9c866d53556ad12286a62541068c8743c5e109ddd66`  
		Last Modified: Thu, 31 Jan 2019 02:21:41 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11.2-alpine`

```console
$ docker pull kong@sha256:cc19965290c2ac64668be55dac645144aad7d8fbf1eb8b0805293e5f7084ab11
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
$ docker pull kong@sha256:cc19965290c2ac64668be55dac645144aad7d8fbf1eb8b0805293e5f7084ab11
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
$ docker pull kong@sha256:c886baf7c26822eee523c822904ca2839531f7ab6ea5bc0bbb47d6005815d83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12` - linux; amd64

```console
$ docker pull kong@sha256:fbabdcda076393d2f1b6c4a390b95a59f69e2e22135f77f3b966c5251031dd44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ec7df8eaf20bbd058813977266447579561763095f47fb5cbfc3d0d2f964b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 23 Jan 2019 23:23:51 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:23:52 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:23:52 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:23:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ad125451793adcf1f76302a7c99a1639309e0355f0fd2f76d18f963e2a936`  
		Last Modified: Wed, 23 Jan 2019 23:25:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3`

```console
$ docker pull kong@sha256:c886baf7c26822eee523c822904ca2839531f7ab6ea5bc0bbb47d6005815d83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3` - linux; amd64

```console
$ docker pull kong@sha256:fbabdcda076393d2f1b6c4a390b95a59f69e2e22135f77f3b966c5251031dd44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ec7df8eaf20bbd058813977266447579561763095f47fb5cbfc3d0d2f964b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 23 Jan 2019 23:23:51 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:23:52 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:23:52 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:23:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ad125451793adcf1f76302a7c99a1639309e0355f0fd2f76d18f963e2a936`  
		Last Modified: Wed, 23 Jan 2019 23:25:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12.3-alpine`

```console
$ docker pull kong@sha256:ddbd58c2eeff6386a5df65c4f2db3ec8a5c508bfbb5dc1c843c3fdabcbed0480
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
$ docker pull kong@sha256:c886baf7c26822eee523c822904ca2839531f7ab6ea5bc0bbb47d6005815d83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:fbabdcda076393d2f1b6c4a390b95a59f69e2e22135f77f3b966c5251031dd44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ec7df8eaf20bbd058813977266447579561763095f47fb5cbfc3d0d2f964b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 23 Jan 2019 23:23:51 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:23:52 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:23:52 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:23:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ad125451793adcf1f76302a7c99a1639309e0355f0fd2f76d18f963e2a936`  
		Last Modified: Wed, 23 Jan 2019 23:25:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.12-alpine`

```console
$ docker pull kong@sha256:ddbd58c2eeff6386a5df65c4f2db3ec8a5c508bfbb5dc1c843c3fdabcbed0480
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
$ docker pull kong@sha256:c886baf7c26822eee523c822904ca2839531f7ab6ea5bc0bbb47d6005815d83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-centos` - linux; amd64

```console
$ docker pull kong@sha256:fbabdcda076393d2f1b6c4a390b95a59f69e2e22135f77f3b966c5251031dd44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126148748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5ec7df8eaf20bbd058813977266447579561763095f47fb5cbfc3d0d2f964b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:45 GMT
ENV KONG_VERSION=0.12.3
# Thu, 06 Dec 2018 00:53:59 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Wed, 23 Jan 2019 23:23:51 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 23:23:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 23:23:52 GMT
EXPOSE 8000 8001 8443 8444
# Wed, 23 Jan 2019 23:23:52 GMT
STOPSIGNAL SIGTERM
# Wed, 23 Jan 2019 23:23:53 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3492b08de60835aac2bd1fc3c4e7497e26d6d6d75ce356db8e35caae762d794`  
		Last Modified: Thu, 06 Dec 2018 00:59:47 GMT  
		Size: 51.0 MB (50982896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ad125451793adcf1f76302a7c99a1639309e0355f0fd2f76d18f963e2a936`  
		Last Modified: Wed, 23 Jan 2019 23:25:30 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13`

```console
$ docker pull kong@sha256:21c04dbe595fcc0d117aba8664a08f1056d356c95908cf58c61f2941af466376
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
$ docker pull kong@sha256:21c04dbe595fcc0d117aba8664a08f1056d356c95908cf58c61f2941af466376
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
$ docker pull kong@sha256:21c04dbe595fcc0d117aba8664a08f1056d356c95908cf58c61f2941af466376
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
$ docker pull kong@sha256:76938adbe99ea46c014912d14097bcd56e916bdab05409bb3e6517f96f723058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:9102033dc7c555de18a2f2bdeca51ef909ddacdb65b0451b54bce0a881ec0c67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129118577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bd77590689db4875211309844a4efefb48bdbd3d5fd335cf0be7428b9e245c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:06 GMT
ENV KONG_VERSION=0.13.1
# Thu, 06 Dec 2018 00:53:20 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 31 Jan 2019 02:19:21 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:21 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:21 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:22 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a137d079b0ade30a3980e00579d2a89d310aa37d5c953fa378a63af466477e`  
		Last Modified: Thu, 06 Dec 2018 00:58:43 GMT  
		Size: 54.0 MB (53952725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a6c2660ef4015971b417684ae95b973dcd6d815a381ced4fa8fea17731838f`  
		Last Modified: Thu, 31 Jan 2019 02:21:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13-alpine`

```console
$ docker pull kong@sha256:21c04dbe595fcc0d117aba8664a08f1056d356c95908cf58c61f2941af466376
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
$ docker pull kong@sha256:76938adbe99ea46c014912d14097bcd56e916bdab05409bb3e6517f96f723058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-centos` - linux; amd64

```console
$ docker pull kong@sha256:9102033dc7c555de18a2f2bdeca51ef909ddacdb65b0451b54bce0a881ec0c67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129118577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bd77590689db4875211309844a4efefb48bdbd3d5fd335cf0be7428b9e245c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:53:06 GMT
ENV KONG_VERSION=0.13.1
# Thu, 06 Dec 2018 00:53:20 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 31 Jan 2019 02:19:21 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:21 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:21 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:22 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a137d079b0ade30a3980e00579d2a89d310aa37d5c953fa378a63af466477e`  
		Last Modified: Thu, 06 Dec 2018 00:58:43 GMT  
		Size: 54.0 MB (53952725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a6c2660ef4015971b417684ae95b973dcd6d815a381ced4fa8fea17731838f`  
		Last Modified: Thu, 31 Jan 2019 02:21:09 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14`

```console
$ docker pull kong@sha256:a3ed07b0934defcabc77e1cd65701803f94610e5cb460060814249fbba28362c
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
$ docker pull kong@sha256:a3ed07b0934defcabc77e1cd65701803f94610e5cb460060814249fbba28362c
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
$ docker pull kong@sha256:a3ed07b0934defcabc77e1cd65701803f94610e5cb460060814249fbba28362c
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
$ docker pull kong@sha256:79de2c694b71dbb6350a576d78ae5c07c2bcbe9a6cd848d4fd48056408e06805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-centos` - linux; amd64

```console
$ docker pull kong@sha256:77f35c9dbd3458b97ce519a5a7c04579255dc41b44b0061789899b50c6bc25ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129406041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e889f9f3516aae3277348b2d5b68747a2995c2a26c44aa777e0b07893974f756`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:52:22 GMT
ENV KONG_VERSION=0.14.1
# Thu, 06 Dec 2018 00:52:34 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 31 Jan 2019 02:19:00 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:00 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:01 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad790075d076e58a31b75428e49317b7af723d86ec24581a19c15465785d0b69`  
		Last Modified: Thu, 06 Dec 2018 00:57:45 GMT  
		Size: 54.2 MB (54240199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6579a1df92eb66f8607a7aa6ad45b438958600ef21dcb5186aac1fb5a2dbfd50`  
		Last Modified: Thu, 31 Jan 2019 02:20:54 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14-alpine`

```console
$ docker pull kong@sha256:a3ed07b0934defcabc77e1cd65701803f94610e5cb460060814249fbba28362c
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
$ docker pull kong@sha256:79de2c694b71dbb6350a576d78ae5c07c2bcbe9a6cd848d4fd48056408e06805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-centos` - linux; amd64

```console
$ docker pull kong@sha256:77f35c9dbd3458b97ce519a5a7c04579255dc41b44b0061789899b50c6bc25ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129406041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e889f9f3516aae3277348b2d5b68747a2995c2a26c44aa777e0b07893974f756`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:52:22 GMT
MAINTAINER Marco Palladino, marco@mashape.com
# Thu, 06 Dec 2018 00:52:22 GMT
ENV KONG_VERSION=0.14.1
# Thu, 06 Dec 2018 00:52:34 GMT
RUN yum install -y wget https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm &&     yum clean all
# Thu, 31 Jan 2019 02:19:00 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:00 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:01 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:01 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad790075d076e58a31b75428e49317b7af723d86ec24581a19c15465785d0b69`  
		Last Modified: Thu, 06 Dec 2018 00:57:45 GMT  
		Size: 54.2 MB (54240199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6579a1df92eb66f8607a7aa6ad45b438958600ef21dcb5186aac1fb5a2dbfd50`  
		Last Modified: Thu, 31 Jan 2019 02:20:54 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15`

```console
$ docker pull kong@sha256:3b8aceaa99a0e6c9a3721e7cc82731e4b64ff0c42147b8a11e605ae22e4c53c2
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
$ docker pull kong@sha256:3b8aceaa99a0e6c9a3721e7cc82731e4b64ff0c42147b8a11e605ae22e4c53c2
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
$ docker pull kong@sha256:3b8aceaa99a0e6c9a3721e7cc82731e4b64ff0c42147b8a11e605ae22e4c53c2
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
$ docker pull kong@sha256:7161410f57e2c839b17ff3548c793c555fc72b360af9c10ba04a6d2e72158a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:e03771e3eed2aca8a7c09a2eda9379be715a5e1b18da5220215d5fdb5058e8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131083639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30213e14c3028e3472108114b4a79849518bba231bb12daf02e536985670659`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:27 GMT
ENV KONG_VERSION=0.15.0
# Thu, 17 Jan 2019 23:22:11 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 17 Jan 2019 23:22:12 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 17 Jan 2019 23:22:49 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 17 Jan 2019 23:23:09 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 17 Jan 2019 23:23:09 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:23:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:23:10 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 17 Jan 2019 23:23:10 GMT
STOPSIGNAL SIGTERM
# Thu, 17 Jan 2019 23:23:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e072090149aa510ec4fb8f81eba4971e8c48935154be57e6a716f8595ac88f7`  
		Last Modified: Thu, 17 Jan 2019 23:24:28 GMT  
		Size: 6.1 MB (6099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef45cb3aa3a82c63086f42984552316acf7dd0c52794fb4f7d7cc51c334f7a3`  
		Last Modified: Thu, 17 Jan 2019 23:24:36 GMT  
		Size: 49.8 MB (49818087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef703ac7f82c9178636609cd2f51d39b9003ee26d2f5cd8756e6d20025aad0`  
		Last Modified: Thu, 17 Jan 2019 23:24:27 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15-alpine`

```console
$ docker pull kong@sha256:3b8aceaa99a0e6c9a3721e7cc82731e4b64ff0c42147b8a11e605ae22e4c53c2
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
$ docker pull kong@sha256:7161410f57e2c839b17ff3548c793c555fc72b360af9c10ba04a6d2e72158a0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15-centos` - linux; amd64

```console
$ docker pull kong@sha256:e03771e3eed2aca8a7c09a2eda9379be715a5e1b18da5220215d5fdb5058e8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131083639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30213e14c3028e3472108114b4a79849518bba231bb12daf02e536985670659`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Tue, 08 Jan 2019 00:20:27 GMT
ENV KONG_VERSION=0.15.0
# Thu, 17 Jan 2019 23:22:11 GMT
ARG SU_EXEC_VERSION=0.2
# Thu, 17 Jan 2019 23:22:12 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Thu, 17 Jan 2019 23:22:49 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Thu, 17 Jan 2019 23:23:09 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Thu, 17 Jan 2019 23:23:09 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 17 Jan 2019 23:23:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 23:23:10 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 17 Jan 2019 23:23:10 GMT
STOPSIGNAL SIGTERM
# Thu, 17 Jan 2019 23:23:10 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e072090149aa510ec4fb8f81eba4971e8c48935154be57e6a716f8595ac88f7`  
		Last Modified: Thu, 17 Jan 2019 23:24:28 GMT  
		Size: 6.1 MB (6099480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef45cb3aa3a82c63086f42984552316acf7dd0c52794fb4f7d7cc51c334f7a3`  
		Last Modified: Thu, 17 Jan 2019 23:24:36 GMT  
		Size: 49.8 MB (49818087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef703ac7f82c9178636609cd2f51d39b9003ee26d2f5cd8756e6d20025aad0`  
		Last Modified: Thu, 17 Jan 2019 23:24:27 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0`

```console
$ docker pull kong@sha256:c0427cf6bb766ad02eda2f1878352ef89c17519d1bab7b4b160ff74f9e0f8d4f
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
$ docker pull kong@sha256:c0427cf6bb766ad02eda2f1878352ef89c17519d1bab7b4b160ff74f9e0f8d4f
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
$ docker pull kong@sha256:c0427cf6bb766ad02eda2f1878352ef89c17519d1bab7b4b160ff74f9e0f8d4f
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
$ docker pull kong@sha256:2e9cb3311f3f3064bacbf63464d7ea3ca723b456ce3fe3c849e86d3251961c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.3-centos` - linux; amd64

```console
$ docker pull kong@sha256:d6219418a0bf833bce71660e982859c571043dc54593b9e4547051450adc9bab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131150634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179c6fedef9ccbe016fe26c4e13dc4d5fa5314b8c4d715a487738be86ffa6b48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:51 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:51 GMT
ARG SU_EXEC_VERSION=0.2
# Fri, 01 Feb 2019 22:19:52 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Fri, 01 Feb 2019 22:20:31 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Fri, 01 Feb 2019 22:20:50 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Fri, 01 Feb 2019 22:20:50 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:20:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:20:51 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:20:51 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:20:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f13cd60ba2c82d54bee3282e015c5f961f0c3cda3934ef3ab48c5c450a23ef9`  
		Last Modified: Fri, 01 Feb 2019 22:21:47 GMT  
		Size: 6.3 MB (6262590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409f1dd7de1a91a69c8f50816312c03f8f45d51eea89d3337ffea69398d0c633`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 49.7 MB (49721964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ab9a2ff9038d20963fbe311c0a709429d81e2c86c4f4d58b0b03cdfcd9601a`  
		Last Modified: Fri, 01 Feb 2019 22:21:46 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0-centos`

```console
$ docker pull kong@sha256:2e9cb3311f3f3064bacbf63464d7ea3ca723b456ce3fe3c849e86d3251961c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0-centos` - linux; amd64

```console
$ docker pull kong@sha256:d6219418a0bf833bce71660e982859c571043dc54593b9e4547051450adc9bab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131150634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179c6fedef9ccbe016fe26c4e13dc4d5fa5314b8c4d715a487738be86ffa6b48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:51 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:51 GMT
ARG SU_EXEC_VERSION=0.2
# Fri, 01 Feb 2019 22:19:52 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Fri, 01 Feb 2019 22:20:31 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Fri, 01 Feb 2019 22:20:50 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Fri, 01 Feb 2019 22:20:50 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:20:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:20:51 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:20:51 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:20:51 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f13cd60ba2c82d54bee3282e015c5f961f0c3cda3934ef3ab48c5c450a23ef9`  
		Last Modified: Fri, 01 Feb 2019 22:21:47 GMT  
		Size: 6.3 MB (6262590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409f1dd7de1a91a69c8f50816312c03f8f45d51eea89d3337ffea69398d0c633`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 49.7 MB (49721964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ab9a2ff9038d20963fbe311c0a709429d81e2c86c4f4d58b0b03cdfcd9601a`  
		Last Modified: Fri, 01 Feb 2019 22:21:46 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1.0rc1`

```console
$ docker pull kong@sha256:f8e85abc7fb7875e41f12c5536cb5a4238f22260b05ef061811f217a3b95ab7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1.0rc1` - linux; amd64

```console
$ docker pull kong@sha256:b6b4198a9ccf34104acca69a18ad97da0b8e7e66dba2bb9df1a5c43c53c2323a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30865943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3664e84b7100eb2972feaf93c980ce5396db36a8164c95eedd26147aef945410`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_VERSION=1.1.0rc1
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_SHA256=72abd186181b5ebb263c4e12db5d89cac529e2b5ca858015d44a34d560755b35
# Fri, 08 Mar 2019 03:12:59 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:12:59 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:00 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:00 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e53db0d102aeae578a65a1ec2df1685c4ec114658be1d96441b7baf39504`  
		Last Modified: Fri, 08 Mar 2019 03:15:26 GMT  
		Size: 28.8 MB (28847617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f803c33397c443a9c38d785952183d9d7e4ddad47d437971436120d9047621`  
		Last Modified: Fri, 08 Mar 2019 03:15:21 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1.0rc1-alpine`

```console
$ docker pull kong@sha256:f8e85abc7fb7875e41f12c5536cb5a4238f22260b05ef061811f217a3b95ab7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1.0rc1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:b6b4198a9ccf34104acca69a18ad97da0b8e7e66dba2bb9df1a5c43c53c2323a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30865943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3664e84b7100eb2972feaf93c980ce5396db36a8164c95eedd26147aef945410`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_VERSION=1.1.0rc1
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_SHA256=72abd186181b5ebb263c4e12db5d89cac529e2b5ca858015d44a34d560755b35
# Fri, 08 Mar 2019 03:12:59 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:12:59 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:00 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:00 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e53db0d102aeae578a65a1ec2df1685c4ec114658be1d96441b7baf39504`  
		Last Modified: Fri, 08 Mar 2019 03:15:26 GMT  
		Size: 28.8 MB (28847617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f803c33397c443a9c38d785952183d9d7e4ddad47d437971436120d9047621`  
		Last Modified: Fri, 08 Mar 2019 03:15:21 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1.0rc1-centos`

```console
$ docker pull kong@sha256:48324c104a4b0d7878f13c4f9c4444d83a2e4b3c9d1bd44b811e90c426cbe40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1.0rc1-centos` - linux; amd64

```console
$ docker pull kong@sha256:67928c11996d6b9514595bea40352a30c11b1e2c0afc02b2754fd48f78384792
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142983128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8bf4987e771a6e8df9140984ad5ba28e2db8bcaa5e7d84650b6c93c4d7acdf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 22 Feb 2019 21:33:56 GMT
ENV KONG_VERSION=1.1.0rc1
# Fri, 22 Feb 2019 21:33:56 GMT
ARG SU_EXEC_VERSION=0.2
# Fri, 22 Feb 2019 21:33:57 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Fri, 22 Feb 2019 21:34:40 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Fri, 22 Feb 2019 21:34:56 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Fri, 22 Feb 2019 21:34:57 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 22 Feb 2019 21:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 21:34:57 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 22 Feb 2019 21:34:57 GMT
STOPSIGNAL SIGTERM
# Fri, 22 Feb 2019 21:34:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9704126b3d63b8262dcc0eba710872abb9d3e48606334ad0c6f0389dafd04b`  
		Last Modified: Fri, 22 Feb 2019 21:36:05 GMT  
		Size: 17.2 MB (17225255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b2745251a00994cbbcd374e5a14e447c8eb3c530630b03055a9585d4b6ac9`  
		Last Modified: Fri, 22 Feb 2019 21:36:11 GMT  
		Size: 50.6 MB (50591793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4eaff2f8a290bb63ffdbb3bd7be6a5dc2669e00fa83e65ae2cd0434799084d`  
		Last Modified: Fri, 22 Feb 2019 21:36:02 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1rc1`

```console
$ docker pull kong@sha256:f8e85abc7fb7875e41f12c5536cb5a4238f22260b05ef061811f217a3b95ab7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1rc1` - linux; amd64

```console
$ docker pull kong@sha256:b6b4198a9ccf34104acca69a18ad97da0b8e7e66dba2bb9df1a5c43c53c2323a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30865943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3664e84b7100eb2972feaf93c980ce5396db36a8164c95eedd26147aef945410`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_VERSION=1.1.0rc1
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_SHA256=72abd186181b5ebb263c4e12db5d89cac529e2b5ca858015d44a34d560755b35
# Fri, 08 Mar 2019 03:12:59 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:12:59 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:00 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:00 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e53db0d102aeae578a65a1ec2df1685c4ec114658be1d96441b7baf39504`  
		Last Modified: Fri, 08 Mar 2019 03:15:26 GMT  
		Size: 28.8 MB (28847617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f803c33397c443a9c38d785952183d9d7e4ddad47d437971436120d9047621`  
		Last Modified: Fri, 08 Mar 2019 03:15:21 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1rc1-alpine`

```console
$ docker pull kong@sha256:f8e85abc7fb7875e41f12c5536cb5a4238f22260b05ef061811f217a3b95ab7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1rc1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:b6b4198a9ccf34104acca69a18ad97da0b8e7e66dba2bb9df1a5c43c53c2323a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30865943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3664e84b7100eb2972feaf93c980ce5396db36a8164c95eedd26147aef945410`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 07 Mar 2019 22:20:00 GMT
ADD file:9714761bb81de664e431dec41f12db20f0438047615df2ecd9fdc88933d6c20f in / 
# Thu, 07 Mar 2019 22:20:00 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:12:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_VERSION=1.1.0rc1
# Fri, 08 Mar 2019 03:12:51 GMT
ENV KONG_SHA256=72abd186181b5ebb263c4e12db5d89cac529e2b5ca858015d44a34d560755b35
# Fri, 08 Mar 2019 03:12:59 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 08 Mar 2019 03:12:59 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:13:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:13:00 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 08 Mar 2019 03:13:00 GMT
STOPSIGNAL SIGTERM
# Fri, 08 Mar 2019 03:13:00 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:5a3ea8efae5d0abb93d2a04be0a4870087042b8ecab8001f613cdc2a9440616a`  
		Last Modified: Thu, 07 Mar 2019 22:20:27 GMT  
		Size: 2.0 MB (2017774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e53db0d102aeae578a65a1ec2df1685c4ec114658be1d96441b7baf39504`  
		Last Modified: Fri, 08 Mar 2019 03:15:26 GMT  
		Size: 28.8 MB (28847617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f803c33397c443a9c38d785952183d9d7e4ddad47d437971436120d9047621`  
		Last Modified: Fri, 08 Mar 2019 03:15:21 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.1rc1-centos`

```console
$ docker pull kong@sha256:48324c104a4b0d7878f13c4f9c4444d83a2e4b3c9d1bd44b811e90c426cbe40b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.1rc1-centos` - linux; amd64

```console
$ docker pull kong@sha256:67928c11996d6b9514595bea40352a30c11b1e2c0afc02b2754fd48f78384792
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142983128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8bf4987e771a6e8df9140984ad5ba28e2db8bcaa5e7d84650b6c93c4d7acdf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Thu, 06 Dec 2018 00:50:51 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 22 Feb 2019 21:33:56 GMT
ENV KONG_VERSION=1.1.0rc1
# Fri, 22 Feb 2019 21:33:56 GMT
ARG SU_EXEC_VERSION=0.2
# Fri, 22 Feb 2019 21:33:57 GMT
ARG SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz
# Fri, 22 Feb 2019 21:34:40 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN yum install -y -q gcc make unzip && curl -sL "${SU_EXEC_URL}" | tar -C /tmp -zxf - && make -C "/tmp/su-exec-${SU_EXEC_VERSION}" && cp "/tmp/su-exec-${SU_EXEC_VERSION}/su-exec" /usr/bin && rm -fr "/tmp/su-exec-${SU_EXEC_VERSION}" && yum autoremove -y -q gcc make && yum clean all -q && rm -fr /var/cache/yum/* /tmp/yum_save*.yumtx /root/.pki
# Fri, 22 Feb 2019 21:34:56 GMT
# ARGS: SU_EXEC_URL=https://github.com/ncopa/su-exec/archive/v0.2.tar.gz SU_EXEC_VERSION=0.2
RUN useradd --uid 1337 kong     && yum install -y https://bintray.com/kong/kong-community-edition-rpm/download_file?file_path=centos/7/kong-community-edition-$KONG_VERSION.el7.noarch.rpm     && yum clean all
# Fri, 22 Feb 2019 21:34:57 GMT
COPY file:397806e1b44f431dfb97d834071889640173287e77102e42e9ad51813f01cec4 in /docker-entrypoint.sh 
# Fri, 22 Feb 2019 21:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 22 Feb 2019 21:34:57 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 22 Feb 2019 21:34:57 GMT
STOPSIGNAL SIGTERM
# Fri, 22 Feb 2019 21:34:57 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9704126b3d63b8262dcc0eba710872abb9d3e48606334ad0c6f0389dafd04b`  
		Last Modified: Fri, 22 Feb 2019 21:36:05 GMT  
		Size: 17.2 MB (17225255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8b2745251a00994cbbcd374e5a14e447c8eb3c530630b03055a9585d4b6ac9`  
		Last Modified: Fri, 22 Feb 2019 21:36:11 GMT  
		Size: 50.6 MB (50591793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4eaff2f8a290bb63ffdbb3bd7be6a5dc2669e00fa83e65ae2cd0434799084d`  
		Last Modified: Fri, 22 Feb 2019 21:36:02 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:latest`

```console
$ docker pull kong@sha256:c0427cf6bb766ad02eda2f1878352ef89c17519d1bab7b4b160ff74f9e0f8d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

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
