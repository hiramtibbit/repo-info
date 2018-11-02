<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.13.0.11`](#aerospike313011)
-	[`aerospike:4.1.0.6`](#aerospike4106)
-	[`aerospike:4.3.1.4`](#aerospike4314)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.13.0.11`

```console
$ docker pull aerospike@sha256:f74c156188c1ed528960ea8968ce57f3eea15f831b903e2382484ef2c0166663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.13.0.11` - linux; amd64

```console
$ docker pull aerospike@sha256:867c62066f86d35839158ac833672b013b8ff85b00ac106da3ad21fa436fb20c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70337616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088923ba80c0cb824e35abbcb24b79c252a4e8b1f870f157ff6cc2c9abe5958a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:22:25 GMT
ENV AEROSPIKE_VERSION=3.13.0.11
# Fri, 19 Oct 2018 01:22:26 GMT
ENV AEROSPIKE_SHA256=6b3bb0da56185e66d5125cf5ec84706be153b51e90f36e31cc1c9e5620bc3ed4
# Fri, 19 Oct 2018 01:23:04 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping gettext-base  && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Fri, 19 Oct 2018 01:23:05 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Fri, 19 Oct 2018 01:23:05 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Fri, 19 Oct 2018 01:23:05 GMT
VOLUME [/opt/aerospike/data]
# Fri, 19 Oct 2018 01:23:06 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Fri, 19 Oct 2018 01:23:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Oct 2018 01:23:06 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1f1bfaca9b7696c60ca45f4da985841b1d6033b72a6cbe4d47810bdceaad46`  
		Last Modified: Fri, 19 Oct 2018 01:23:32 GMT  
		Size: 27.0 MB (26981135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41580c16c2a9a24441afe160be0e4113b5cf9a7fe8ef8a9ea57bfca4d133bfb4`  
		Last Modified: Fri, 19 Oct 2018 01:23:24 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0756f5649004dac07f7d0df59c0b02a9ec847fe7096ced6e435e133f971f7227`  
		Last Modified: Fri, 19 Oct 2018 01:23:25 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.1.0.6`

```console
$ docker pull aerospike@sha256:868eb0c40e322f6b3677b70ff8b6163e1092624bd078304469861094e2c91fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.1.0.6` - linux; amd64

```console
$ docker pull aerospike@sha256:ef165f12d0b88dbfd075d69966c10638cc2f00bfa03ee3f44f2032cac22eed8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44587924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb86bf00950fb55a1dcabce9cf9aa2405d954e21332a48deda1068144619dd82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Mon, 15 Oct 2018 23:58:29 GMT
ENV AEROSPIKE_VERSION=4.1.0.6
# Mon, 15 Oct 2018 23:58:29 GMT
ENV AEROSPIKE_SHA256=98e6d3a4e95bd8119b1d8b3b353a2b06ededd8ee9409401c2a6fc827881b4055
# Mon, 15 Oct 2018 23:58:49 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Mon, 15 Oct 2018 23:58:49 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Mon, 15 Oct 2018 23:58:50 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Mon, 15 Oct 2018 23:58:50 GMT
VOLUME [/opt/aerospike/data]
# Mon, 15 Oct 2018 23:58:50 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Mon, 15 Oct 2018 23:58:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 15 Oct 2018 23:58:50 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6714e5b191f7da64257514e91124aad649835e60707f0a1d4d78b12d8db79fc`  
		Last Modified: Mon, 15 Oct 2018 23:59:45 GMT  
		Size: 22.1 MB (22099891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a323775cb27251e3e0bae0297ca2b8ea391d3fea1fa41689a44a95cf8a9bbad8`  
		Last Modified: Mon, 15 Oct 2018 23:59:38 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b706c5195a28fb24e8721d51460d5e31be25e5f97f32a36ce3bead2786e9b`  
		Last Modified: Mon, 15 Oct 2018 23:59:39 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.3.1.4`

```console
$ docker pull aerospike@sha256:f3844ca631fa5f348d11ba8f8b2fe79774ee9f977f1acb6a3ecc1dbe1099e92f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.4` - linux; amd64

```console
$ docker pull aerospike@sha256:85574f02d8e05ed42621a344e7355c2ebeafb0326038f4d0dedb056b99cbf43c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49263235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26f1da882f74e422b371fae34a3a06e17349f3c59318851e6c153ff94380ce6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Fri, 02 Nov 2018 22:20:16 GMT
ENV AEROSPIKE_VERSION=4.3.1.4
# Fri, 02 Nov 2018 22:20:17 GMT
ENV AEROSPIKE_SHA256=0d21c9dfe05d7f55cbf30388203d5aa43f73137a36dcc8b71df77f0e9699a539
# Fri, 02 Nov 2018 22:20:38 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Fri, 02 Nov 2018 22:20:38 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Fri, 02 Nov 2018 22:20:38 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Fri, 02 Nov 2018 22:20:39 GMT
VOLUME [/opt/aerospike/data]
# Fri, 02 Nov 2018 22:20:39 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Fri, 02 Nov 2018 22:20:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Nov 2018 22:20:39 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991b6257f103a4befcbe00cddb9641b442cd380c7a5f6bba6ae3411e3e97e04b`  
		Last Modified: Fri, 02 Nov 2018 22:21:06 GMT  
		Size: 26.8 MB (26775204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d3c78264c31865f9ebc3f8d74b5e4ac92ada85b3de400d69894f714d67bf6`  
		Last Modified: Fri, 02 Nov 2018 22:21:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3853d9a52f7ac05817e44669deafc4722e9fd89dbd39c6c8d0a3a74a5c81774b`  
		Last Modified: Fri, 02 Nov 2018 22:21:01 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:f3844ca631fa5f348d11ba8f8b2fe79774ee9f977f1acb6a3ecc1dbe1099e92f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:85574f02d8e05ed42621a344e7355c2ebeafb0326038f4d0dedb056b99cbf43c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49263235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26f1da882f74e422b371fae34a3a06e17349f3c59318851e6c153ff94380ce6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Fri, 02 Nov 2018 22:20:16 GMT
ENV AEROSPIKE_VERSION=4.3.1.4
# Fri, 02 Nov 2018 22:20:17 GMT
ENV AEROSPIKE_SHA256=0d21c9dfe05d7f55cbf30388203d5aa43f73137a36dcc8b71df77f0e9699a539
# Fri, 02 Nov 2018 22:20:38 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Fri, 02 Nov 2018 22:20:38 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Fri, 02 Nov 2018 22:20:38 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Fri, 02 Nov 2018 22:20:39 GMT
VOLUME [/opt/aerospike/data]
# Fri, 02 Nov 2018 22:20:39 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Fri, 02 Nov 2018 22:20:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Nov 2018 22:20:39 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991b6257f103a4befcbe00cddb9641b442cd380c7a5f6bba6ae3411e3e97e04b`  
		Last Modified: Fri, 02 Nov 2018 22:21:06 GMT  
		Size: 26.8 MB (26775204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366d3c78264c31865f9ebc3f8d74b5e4ac92ada85b3de400d69894f714d67bf6`  
		Last Modified: Fri, 02 Nov 2018 22:21:01 GMT  
		Size: 1.1 KB (1108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3853d9a52f7ac05817e44669deafc4722e9fd89dbd39c6c8d0a3a74a5c81774b`  
		Last Modified: Fri, 02 Nov 2018 22:21:01 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
