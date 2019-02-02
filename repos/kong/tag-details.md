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
$ docker pull kong@sha256:e61e8121bc98887498177cbdc522cc28f8339a5d59e59cdbbf0b40b25accd172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11.2-alpine` - linux; amd64

```console
$ docker pull kong@sha256:50f4e8cf3cb5934c0e62617b681ea278130fefa870a7441f9a69455fb8602910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30122531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab55ef077e23b7b8502bc95c124e3198e8757b051aa0e6895af2cd4092a455f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 31 Jan 2019 02:19:42 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Thu, 31 Jan 2019 02:19:52 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:53 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:53 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:53 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:54 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940f30d49bdb70ee2e3c4ffa58a676750e07e725076fdf3cea6c0f2c05b214bd`  
		Last Modified: Thu, 31 Jan 2019 02:21:36 GMT  
		Size: 28.1 MB (28105497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc17ec1d596edf6b6670fdc5e18f1621a0eafac6546d5379f45888029d247908`  
		Last Modified: Thu, 31 Jan 2019 02:21:28 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.11-alpine`

```console
$ docker pull kong@sha256:e61e8121bc98887498177cbdc522cc28f8339a5d59e59cdbbf0b40b25accd172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.11-alpine` - linux; amd64

```console
$ docker pull kong@sha256:50f4e8cf3cb5934c0e62617b681ea278130fefa870a7441f9a69455fb8602910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30122531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab55ef077e23b7b8502bc95c124e3198e8757b051aa0e6895af2cd4092a455f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:42 GMT
ENV KONG_VERSION=0.11.2
# Thu, 31 Jan 2019 02:19:42 GMT
ENV KONG_SHA256=10f7f0f5d1bf52afaaf9278f2ef8f7867fec6eb1ce2273ebe6032fa976496011
# Thu, 31 Jan 2019 02:19:52 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:53 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:53 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:53 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:54 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940f30d49bdb70ee2e3c4ffa58a676750e07e725076fdf3cea6c0f2c05b214bd`  
		Last Modified: Thu, 31 Jan 2019 02:21:36 GMT  
		Size: 28.1 MB (28105497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc17ec1d596edf6b6670fdc5e18f1621a0eafac6546d5379f45888029d247908`  
		Last Modified: Thu, 31 Jan 2019 02:21:28 GMT  
		Size: 322.0 B  
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
$ docker pull kong@sha256:60c9c148e733ff298855d68b463349b22ff53e039133cb4dc2f4890ad21bc421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:8701c9ad38e3ede3971c47c11d27a2dee45a2b98c3fa62bbfe45eb8ab9316963
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30879980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934a2a612f776f365be43dcee9eb299555395ea37ecdbc5a64b8793a79fc236e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:24 GMT
ENV KONG_VERSION=0.12.3
# Thu, 31 Jan 2019 02:19:25 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Thu, 31 Jan 2019 02:19:33 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:33 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:33 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:34 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:34 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5480fbf0960fd44b52339730b1b735f092d1b8fe73743a5f48ebc6a7deb5131`  
		Last Modified: Thu, 31 Jan 2019 02:21:22 GMT  
		Size: 28.9 MB (28862944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706c4cace38fae5546aee009a0b3e257cca6a00bba0d35cdb4eedf32d89ce5af`  
		Last Modified: Thu, 31 Jan 2019 02:21:13 GMT  
		Size: 324.0 B  
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
$ docker pull kong@sha256:60c9c148e733ff298855d68b463349b22ff53e039133cb4dc2f4890ad21bc421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.12-alpine` - linux; amd64

```console
$ docker pull kong@sha256:8701c9ad38e3ede3971c47c11d27a2dee45a2b98c3fa62bbfe45eb8ab9316963
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30879980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934a2a612f776f365be43dcee9eb299555395ea37ecdbc5a64b8793a79fc236e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:24 GMT
ENV KONG_VERSION=0.12.3
# Thu, 31 Jan 2019 02:19:25 GMT
ENV KONG_SHA256=e7750f4987b7bff485387a0bc95eb51609f7abc5faea76c9598a16f1da023faa
# Thu, 31 Jan 2019 02:19:33 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:33 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:33 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:34 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:34 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5480fbf0960fd44b52339730b1b735f092d1b8fe73743a5f48ebc6a7deb5131`  
		Last Modified: Thu, 31 Jan 2019 02:21:22 GMT  
		Size: 28.9 MB (28862944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706c4cace38fae5546aee009a0b3e257cca6a00bba0d35cdb4eedf32d89ce5af`  
		Last Modified: Thu, 31 Jan 2019 02:21:13 GMT  
		Size: 324.0 B  
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
$ docker pull kong@sha256:140f3235b4b33eb5704da5003e1efc2a15896974240c366347944be39e1f9d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13` - linux; amd64

```console
$ docker pull kong@sha256:e9a7df2f536659d3709e5997605c61f898b6a39130d1832eba994a9d0f749c4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1587db3b939b19186ce7e263bea6f306b10dccd98c2448720249da4635f927e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_VERSION=0.13.1
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 31 Jan 2019 02:19:16 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:16 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:17 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:17 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:17 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787152e9254aa3a8195616b68aa8fbfd22b2ae55742b09d1cf93a93d8656321e`  
		Last Modified: Thu, 31 Jan 2019 02:21:04 GMT  
		Size: 31.5 MB (31451211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e058c8f7de22ae860690dbe9d18e5974999be2ccb1a2beab4c81fcf495dc33`  
		Last Modified: Thu, 31 Jan 2019 02:20:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1`

```console
$ docker pull kong@sha256:140f3235b4b33eb5704da5003e1efc2a15896974240c366347944be39e1f9d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1` - linux; amd64

```console
$ docker pull kong@sha256:e9a7df2f536659d3709e5997605c61f898b6a39130d1832eba994a9d0f749c4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1587db3b939b19186ce7e263bea6f306b10dccd98c2448720249da4635f927e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_VERSION=0.13.1
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 31 Jan 2019 02:19:16 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:16 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:17 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:17 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:17 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787152e9254aa3a8195616b68aa8fbfd22b2ae55742b09d1cf93a93d8656321e`  
		Last Modified: Thu, 31 Jan 2019 02:21:04 GMT  
		Size: 31.5 MB (31451211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e058c8f7de22ae860690dbe9d18e5974999be2ccb1a2beab4c81fcf495dc33`  
		Last Modified: Thu, 31 Jan 2019 02:20:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.13.1-alpine`

```console
$ docker pull kong@sha256:140f3235b4b33eb5704da5003e1efc2a15896974240c366347944be39e1f9d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:e9a7df2f536659d3709e5997605c61f898b6a39130d1832eba994a9d0f749c4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1587db3b939b19186ce7e263bea6f306b10dccd98c2448720249da4635f927e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_VERSION=0.13.1
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 31 Jan 2019 02:19:16 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:16 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:17 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:17 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:17 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787152e9254aa3a8195616b68aa8fbfd22b2ae55742b09d1cf93a93d8656321e`  
		Last Modified: Thu, 31 Jan 2019 02:21:04 GMT  
		Size: 31.5 MB (31451211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e058c8f7de22ae860690dbe9d18e5974999be2ccb1a2beab4c81fcf495dc33`  
		Last Modified: Thu, 31 Jan 2019 02:20:57 GMT  
		Size: 323.0 B  
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
$ docker pull kong@sha256:140f3235b4b33eb5704da5003e1efc2a15896974240c366347944be39e1f9d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.13-alpine` - linux; amd64

```console
$ docker pull kong@sha256:e9a7df2f536659d3709e5997605c61f898b6a39130d1832eba994a9d0f749c4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33468246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1587db3b939b19186ce7e263bea6f306b10dccd98c2448720249da4635f927e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/local\/openresty\/nginx\/sbin\/nginx","-c","\/usr\/local\/kong\/nginx.conf","-p","\/usr\/local\/kong\/"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_VERSION=0.13.1
# Thu, 31 Jan 2019 02:19:04 GMT
ENV KONG_SHA256=caf119ce7a367b9d9cd1ace55c4b6a499ff3c4693f80ea25129ebf2da0373fcc
# Thu, 31 Jan 2019 02:19:16 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:19:16 GMT
COPY file:482e86f81732d6ad12780394cb30d8ba706d6db5448151c637be54a244f1388f in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:19:17 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:19:17 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:19:17 GMT
CMD ["/usr/local/openresty/nginx/sbin/nginx" "-c" "/usr/local/kong/nginx.conf" "-p" "/usr/local/kong/"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787152e9254aa3a8195616b68aa8fbfd22b2ae55742b09d1cf93a93d8656321e`  
		Last Modified: Thu, 31 Jan 2019 02:21:04 GMT  
		Size: 31.5 MB (31451211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e058c8f7de22ae860690dbe9d18e5974999be2ccb1a2beab4c81fcf495dc33`  
		Last Modified: Thu, 31 Jan 2019 02:20:57 GMT  
		Size: 323.0 B  
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
$ docker pull kong@sha256:b63f335094dbeca5117612f6a976542d87274d628f2c3a8a809419fc830b0103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14` - linux; amd64

```console
$ docker pull kong@sha256:a85f82c928ebbbe5456132c23f4790106308a00aa8af457c98071de7b72492a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a582d7fe6f3e53f8dc81dda712f9208d249594b3b0ca04dc378183954cf585b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_VERSION=0.14.1
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Thu, 31 Jan 2019 02:18:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:56 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:56 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:56 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:56 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed5ac1f347becfb4fa1a76239c586c6044688c48e547bddb2214f1cc27da16`  
		Last Modified: Thu, 31 Jan 2019 02:20:48 GMT  
		Size: 31.6 MB (31584595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf230adb112545b423ff686ac818f025992b30b48dad1406c391439fbda184c`  
		Last Modified: Thu, 31 Jan 2019 02:20:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1`

```console
$ docker pull kong@sha256:b63f335094dbeca5117612f6a976542d87274d628f2c3a8a809419fc830b0103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1` - linux; amd64

```console
$ docker pull kong@sha256:a85f82c928ebbbe5456132c23f4790106308a00aa8af457c98071de7b72492a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a582d7fe6f3e53f8dc81dda712f9208d249594b3b0ca04dc378183954cf585b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_VERSION=0.14.1
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Thu, 31 Jan 2019 02:18:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:56 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:56 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:56 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:56 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed5ac1f347becfb4fa1a76239c586c6044688c48e547bddb2214f1cc27da16`  
		Last Modified: Thu, 31 Jan 2019 02:20:48 GMT  
		Size: 31.6 MB (31584595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf230adb112545b423ff686ac818f025992b30b48dad1406c391439fbda184c`  
		Last Modified: Thu, 31 Jan 2019 02:20:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.14.1-alpine`

```console
$ docker pull kong@sha256:b63f335094dbeca5117612f6a976542d87274d628f2c3a8a809419fc830b0103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14.1-alpine` - linux; amd64

```console
$ docker pull kong@sha256:a85f82c928ebbbe5456132c23f4790106308a00aa8af457c98071de7b72492a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a582d7fe6f3e53f8dc81dda712f9208d249594b3b0ca04dc378183954cf585b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_VERSION=0.14.1
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Thu, 31 Jan 2019 02:18:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:56 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:56 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:56 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:56 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed5ac1f347becfb4fa1a76239c586c6044688c48e547bddb2214f1cc27da16`  
		Last Modified: Thu, 31 Jan 2019 02:20:48 GMT  
		Size: 31.6 MB (31584595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf230adb112545b423ff686ac818f025992b30b48dad1406c391439fbda184c`  
		Last Modified: Thu, 31 Jan 2019 02:20:42 GMT  
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
$ docker pull kong@sha256:b63f335094dbeca5117612f6a976542d87274d628f2c3a8a809419fc830b0103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.14-alpine` - linux; amd64

```console
$ docker pull kong@sha256:a85f82c928ebbbe5456132c23f4790106308a00aa8af457c98071de7b72492a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.6 MB (33601621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a582d7fe6f3e53f8dc81dda712f9208d249594b3b0ca04dc378183954cf585b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:45 GMT
LABEL maintainer=Marco Palladino, marco@mashape.com
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_VERSION=0.14.1
# Thu, 31 Jan 2019 02:18:46 GMT
ENV KONG_SHA256=e29937c5117ac2debcffe0d0016996dd5f0c516ef628f1edc029138715981387
# Thu, 31 Jan 2019 02:18:55 GMT
RUN apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:56 GMT
COPY file:c7f1aea2fbcd03b144734565be2b21b05539ce1fad4c9306061b61ae6fbde4f0 in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:56 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:56 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:56 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ed5ac1f347becfb4fa1a76239c586c6044688c48e547bddb2214f1cc27da16`  
		Last Modified: Thu, 31 Jan 2019 02:20:48 GMT  
		Size: 31.6 MB (31584595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf230adb112545b423ff686ac818f025992b30b48dad1406c391439fbda184c`  
		Last Modified: Thu, 31 Jan 2019 02:20:42 GMT  
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
$ docker pull kong@sha256:75134dee72a7870ffe32694e166773d5b8d65777bace300bae2e8516b16d6e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15` - linux; amd64

```console
$ docker pull kong@sha256:cd0befeb3f1190142bf35b96c2d7c38a9ccade77501c2d783a8036f8e5b8b29a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1bfaa655c1d4f58e2511a9f500a19ec9232794b3762e634cf4d9dd07d6cdf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_VERSION=0.15.0
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Thu, 31 Jan 2019 02:18:35 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:35 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:36 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:36 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64317c35e6b500684a513ac106b0260d4eaef482ed4d4fe45c088f82314539ba`  
		Last Modified: Thu, 31 Jan 2019 02:20:36 GMT  
		Size: 28.5 MB (28496478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7be8f757b6fbd95d269d51e8ffd2c7b41200fd9ccd1373873d50462459c7d9`  
		Last Modified: Thu, 31 Jan 2019 02:20:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0`

```console
$ docker pull kong@sha256:75134dee72a7870ffe32694e166773d5b8d65777bace300bae2e8516b16d6e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0` - linux; amd64

```console
$ docker pull kong@sha256:cd0befeb3f1190142bf35b96c2d7c38a9ccade77501c2d783a8036f8e5b8b29a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1bfaa655c1d4f58e2511a9f500a19ec9232794b3762e634cf4d9dd07d6cdf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_VERSION=0.15.0
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Thu, 31 Jan 2019 02:18:35 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:35 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:36 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:36 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64317c35e6b500684a513ac106b0260d4eaef482ed4d4fe45c088f82314539ba`  
		Last Modified: Thu, 31 Jan 2019 02:20:36 GMT  
		Size: 28.5 MB (28496478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7be8f757b6fbd95d269d51e8ffd2c7b41200fd9ccd1373873d50462459c7d9`  
		Last Modified: Thu, 31 Jan 2019 02:20:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:0.15.0-alpine`

```console
$ docker pull kong@sha256:75134dee72a7870ffe32694e166773d5b8d65777bace300bae2e8516b16d6e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15.0-alpine` - linux; amd64

```console
$ docker pull kong@sha256:cd0befeb3f1190142bf35b96c2d7c38a9ccade77501c2d783a8036f8e5b8b29a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1bfaa655c1d4f58e2511a9f500a19ec9232794b3762e634cf4d9dd07d6cdf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_VERSION=0.15.0
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Thu, 31 Jan 2019 02:18:35 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:35 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:36 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:36 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64317c35e6b500684a513ac106b0260d4eaef482ed4d4fe45c088f82314539ba`  
		Last Modified: Thu, 31 Jan 2019 02:20:36 GMT  
		Size: 28.5 MB (28496478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7be8f757b6fbd95d269d51e8ffd2c7b41200fd9ccd1373873d50462459c7d9`  
		Last Modified: Thu, 31 Jan 2019 02:20:30 GMT  
		Size: 543.0 B  
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
$ docker pull kong@sha256:75134dee72a7870ffe32694e166773d5b8d65777bace300bae2e8516b16d6e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:0.15-alpine` - linux; amd64

```console
$ docker pull kong@sha256:cd0befeb3f1190142bf35b96c2d7c38a9ccade77501c2d783a8036f8e5b8b29a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30513733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1bfaa655c1d4f58e2511a9f500a19ec9232794b3762e634cf4d9dd07d6cdf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_VERSION=0.15.0
# Thu, 31 Jan 2019 02:18:24 GMT
ENV KONG_SHA256=f2adc4e40a4a33c657955d6d9ec034d80827f915bb9fe8c2ac2a36aed7edf13b
# Thu, 31 Jan 2019 02:18:35 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Thu, 31 Jan 2019 02:18:35 GMT
COPY file:df164f7ea41142b4e0a8d97f74c6b26aaa47daf2994aa1cf2573688a51006eee in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 02:18:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 02:18:36 GMT
EXPOSE 8000 8001 8443 8444
# Thu, 31 Jan 2019 02:18:36 GMT
STOPSIGNAL SIGTERM
# Thu, 31 Jan 2019 02:18:36 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64317c35e6b500684a513ac106b0260d4eaef482ed4d4fe45c088f82314539ba`  
		Last Modified: Thu, 31 Jan 2019 02:20:36 GMT  
		Size: 28.5 MB (28496478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7be8f757b6fbd95d269d51e8ffd2c7b41200fd9ccd1373873d50462459c7d9`  
		Last Modified: Thu, 31 Jan 2019 02:20:30 GMT  
		Size: 543.0 B  
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
$ docker pull kong@sha256:f7ed033bb9955da0fcefa034d07fee324cad6d01c12ebf54268dfe825ba2e92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0` - linux; amd64

```console
$ docker pull kong@sha256:8d77010ea4021232e9004d6af18d603f7b691bb0b94b55aae904f1f6553dcef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30460171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d28df8a3c54c5896a4a2537127ebf7f37de2d771470af9c93908c7835b84c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 01 Feb 2019 22:19:47 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Feb 2019 22:19:47 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:19:48 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:19:48 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:19:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6389eff8e6ffa111017073131187a9b3b8697323f33ebb83abde48754c947a5d`  
		Last Modified: Fri, 01 Feb 2019 22:21:37 GMT  
		Size: 28.4 MB (28442907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58488256be6aaf130cc4d46df7c89a44b5fc96b7283971f009f7b523670e67e`  
		Last Modified: Fri, 01 Feb 2019 22:21:32 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.3`

```console
$ docker pull kong@sha256:f7ed033bb9955da0fcefa034d07fee324cad6d01c12ebf54268dfe825ba2e92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.3` - linux; amd64

```console
$ docker pull kong@sha256:8d77010ea4021232e9004d6af18d603f7b691bb0b94b55aae904f1f6553dcef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30460171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d28df8a3c54c5896a4a2537127ebf7f37de2d771470af9c93908c7835b84c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 01 Feb 2019 22:19:47 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Feb 2019 22:19:47 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:19:48 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:19:48 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:19:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6389eff8e6ffa111017073131187a9b3b8697323f33ebb83abde48754c947a5d`  
		Last Modified: Fri, 01 Feb 2019 22:21:37 GMT  
		Size: 28.4 MB (28442907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58488256be6aaf130cc4d46df7c89a44b5fc96b7283971f009f7b523670e67e`  
		Last Modified: Fri, 01 Feb 2019 22:21:32 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kong:1.0.3-alpine`

```console
$ docker pull kong@sha256:f7ed033bb9955da0fcefa034d07fee324cad6d01c12ebf54268dfe825ba2e92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:1.0.3-alpine` - linux; amd64

```console
$ docker pull kong@sha256:8d77010ea4021232e9004d6af18d603f7b691bb0b94b55aae904f1f6553dcef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30460171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d28df8a3c54c5896a4a2537127ebf7f37de2d771470af9c93908c7835b84c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 01 Feb 2019 22:19:47 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Feb 2019 22:19:47 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:19:48 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:19:48 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:19:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6389eff8e6ffa111017073131187a9b3b8697323f33ebb83abde48754c947a5d`  
		Last Modified: Fri, 01 Feb 2019 22:21:37 GMT  
		Size: 28.4 MB (28442907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58488256be6aaf130cc4d46df7c89a44b5fc96b7283971f009f7b523670e67e`  
		Last Modified: Fri, 01 Feb 2019 22:21:32 GMT  
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

## `kong:latest`

```console
$ docker pull kong@sha256:f7ed033bb9955da0fcefa034d07fee324cad6d01c12ebf54268dfe825ba2e92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kong:latest` - linux; amd64

```console
$ docker pull kong@sha256:8d77010ea4021232e9004d6af18d603f7b691bb0b94b55aae904f1f6553dcef3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30460171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d28df8a3c54c5896a4a2537127ebf7f37de2d771470af9c93908c7835b84c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kong","docker-start"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:35 GMT
ADD file:56d0d690c1d6b1e5c28a25a71d9e106f85676bdbb5b2d7dc727e52c32b52a692 in / 
# Wed, 30 Jan 2019 22:19:35 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:18:03 GMT
LABEL maintainer=Kong Core Team <team-core@konghq.com>
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_VERSION=1.0.3
# Fri, 01 Feb 2019 22:19:39 GMT
ENV KONG_SHA256=b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148
# Fri, 01 Feb 2019 22:19:47 GMT
RUN adduser -Su 1337 kong 	&& mkdir -p "/usr/local/kong" 	&& apk add --no-cache --virtual .build-deps wget tar ca-certificates 	&& apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec 	&& wget -O kong.tar.gz "https://bintray.com/kong/kong-community-edition-alpine-tar/download_file?file_path=kong-community-edition-$KONG_VERSION.apk.tar.gz" 	&& echo "$KONG_SHA256 *kong.tar.gz" | sha256sum -c - 	&& tar -xzf kong.tar.gz -C /tmp 	&& rm -f kong.tar.gz 	&& cp -R /tmp/usr / 	&& rm -rf /tmp/usr 	&& cp -R /tmp/etc / 	&& rm -rf /tmp/etc 	&& apk del .build-deps
# Fri, 01 Feb 2019 22:19:47 GMT
COPY file:12ca0c9cfe909c39debfb3be880f30a237f85e6a5e676b80c9d3891ef78351f1 in /docker-entrypoint.sh 
# Fri, 01 Feb 2019 22:19:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:19:48 GMT
EXPOSE 8000 8001 8443 8444
# Fri, 01 Feb 2019 22:19:48 GMT
STOPSIGNAL SIGTERM
# Fri, 01 Feb 2019 22:19:48 GMT
CMD ["kong" "docker-start"]
```

-	Layers:
	-	`sha256:59265c40e257554058624f35856dafd82d135c4ef406de298cb1fee647867381`  
		Last Modified: Wed, 30 Jan 2019 22:20:57 GMT  
		Size: 2.0 MB (2016712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6389eff8e6ffa111017073131187a9b3b8697323f33ebb83abde48754c947a5d`  
		Last Modified: Fri, 01 Feb 2019 22:21:37 GMT  
		Size: 28.4 MB (28442907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58488256be6aaf130cc4d46df7c89a44b5fc96b7283971f009f7b523670e67e`  
		Last Modified: Fri, 01 Feb 2019 22:21:32 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
