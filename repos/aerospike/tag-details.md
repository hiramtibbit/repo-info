<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:3.13.0.11`](#aerospike313011)
-	[`aerospike:4.4.0.5`](#aerospike4405)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:3.13.0.11`

```console
$ docker pull aerospike@sha256:1ed0b9724b4c0ee9f19865e44908c752dfd78de260eae05f910e38f6f614634a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:3.13.0.11` - linux; amd64

```console
$ docker pull aerospike@sha256:40fad5af0394c9d7c3b3ba2a36887ac3ac8cbee3b943f4eb023dd5c3f8354da5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70395743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c530094de40966ca55507df2ec0dc5b68a286b029a5efc945fb6c8a2231cad24`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:44:55 GMT
ENV AEROSPIKE_VERSION=3.13.0.11
# Mon, 19 Nov 2018 21:44:55 GMT
ENV AEROSPIKE_SHA256=6b3bb0da56185e66d5125cf5ec84706be153b51e90f36e31cc1c9e5620bc3ed4
# Mon, 19 Nov 2018 21:45:34 GMT
RUN apt-get update -y   && apt-get install -y wget python python-argparse python-bcrypt python-openssl logrotate net-tools iproute2 iputils-ping gettext-base  && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-ubuntu16.04.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && dpkg -r wget ca-certificates   && dpkg --purge wget ca-certificates   && apt-get purge -y
# Mon, 19 Nov 2018 21:45:34 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Mon, 19 Nov 2018 21:45:34 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Mon, 19 Nov 2018 21:45:35 GMT
VOLUME [/opt/aerospike/data]
# Mon, 19 Nov 2018 21:45:35 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Mon, 19 Nov 2018 21:45:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 19 Nov 2018 21:45:35 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13229206397935d905ffd1262f6ec5b6f50e73ffec01fd0cbc1acbd129a3af50`  
		Last Modified: Mon, 19 Nov 2018 21:46:13 GMT  
		Size: 27.0 MB (26979934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adbf072b2fbdf5a71ad0bedaf6bac553e43a01376d21860a2af6a11e8c3ace1`  
		Last Modified: Mon, 19 Nov 2018 21:46:07 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bf4d8c0bb64ce913426dd6947df062c09341eb93405d23abe62e0f4c0fe2ed`  
		Last Modified: Mon, 19 Nov 2018 21:46:07 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.5`

```console
$ docker pull aerospike@sha256:6c70ff91edc84ef41f4b754dc939535bb998ec98f27f3f549bf5bca1d9265283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.5` - linux; amd64

```console
$ docker pull aerospike@sha256:6de0d9c60d4c044c0275ce7c2b17d505cc2a3847d3fdc4ddde932380502bbc64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49238304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0166c35f10cbe1bf8094e2aaeb62c9eb6504befbc7b1323d13be57d69c24c99e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Tue, 04 Dec 2018 22:20:32 GMT
ENV AEROSPIKE_VERSION=4.4.0.5
# Tue, 04 Dec 2018 22:20:32 GMT
ENV AEROSPIKE_SHA256=036b52b4098ba11a4cabe31f1469c7a211e6591413f30c7fd6fa1f510e86aeea
# Tue, 04 Dec 2018 22:20:54 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 04 Dec 2018 22:21:19 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Tue, 04 Dec 2018 22:21:19 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Tue, 04 Dec 2018 22:21:19 GMT
VOLUME [/opt/aerospike/data]
# Tue, 04 Dec 2018 22:21:20 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Tue, 04 Dec 2018 22:21:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 22:21:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2758add01ae7ecd97ce77074359ed96992aea833b35698cd83e72bc28cc5c4`  
		Last Modified: Tue, 04 Dec 2018 22:22:35 GMT  
		Size: 26.8 MB (26750029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b3d947b828acf8cf7c653b6d7d6e471ed66c6354a3e2c5d1a7e0c4484b9ac`  
		Last Modified: Tue, 04 Dec 2018 22:22:30 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d5932b7333449a5bfd681f62d7755859e1dceee41d978c0f12dd442b8ef7cc`  
		Last Modified: Tue, 04 Dec 2018 22:22:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:6c70ff91edc84ef41f4b754dc939535bb998ec98f27f3f549bf5bca1d9265283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:6de0d9c60d4c044c0275ce7c2b17d505cc2a3847d3fdc4ddde932380502bbc64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49238304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0166c35f10cbe1bf8094e2aaeb62c9eb6504befbc7b1323d13be57d69c24c99e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Tue, 04 Dec 2018 22:20:32 GMT
ENV AEROSPIKE_VERSION=4.4.0.5
# Tue, 04 Dec 2018 22:20:32 GMT
ENV AEROSPIKE_SHA256=036b52b4098ba11a4cabe31f1469c7a211e6591413f30c7fd6fa1f510e86aeea
# Tue, 04 Dec 2018 22:20:54 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Tue, 04 Dec 2018 22:21:19 GMT
COPY file:92f154ac5768cc66c29bd7ca3d00a0fe0ae8d08f1d309fdcda8bf66d4c73cadd in /etc/aerospike/aerospike.template.conf 
# Tue, 04 Dec 2018 22:21:19 GMT
COPY file:7eece3188902a85a78ecb96d2ec561fce45fa1728926bc66f3903d6955630907 in /entrypoint.sh 
# Tue, 04 Dec 2018 22:21:19 GMT
VOLUME [/opt/aerospike/data]
# Tue, 04 Dec 2018 22:21:20 GMT
EXPOSE 3000/tcp 3001/tcp 3002/tcp 3003/tcp
# Tue, 04 Dec 2018 22:21:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 04 Dec 2018 22:21:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2758add01ae7ecd97ce77074359ed96992aea833b35698cd83e72bc28cc5c4`  
		Last Modified: Tue, 04 Dec 2018 22:22:35 GMT  
		Size: 26.8 MB (26750029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4b3d947b828acf8cf7c653b6d7d6e471ed66c6354a3e2c5d1a7e0c4484b9ac`  
		Last Modified: Tue, 04 Dec 2018 22:22:30 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d5932b7333449a5bfd681f62d7755859e1dceee41d978c0f12dd442b8ef7cc`  
		Last Modified: Tue, 04 Dec 2018 22:22:30 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
