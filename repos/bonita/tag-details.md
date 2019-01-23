<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.5`](#bonita775)
-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.0`](#bonita780)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.7`

```console
$ docker pull bonita@sha256:8683071122f2d23364aabce3bbb2e366893a51719c43e3833011d2de25a4acab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:45551c362823e9cfade6d01fb5762f8d7004f439614181e3496930672c7fe89c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214850805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d14b76ea158ee9265ed9256f03c37fb83eca0acfc745e5fa3542c29bbc235d4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:13:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:14:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:14:19 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:14:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:14:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:14:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:14:24 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:14:24 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:14:25 GMT
ENV BONITA_VERSION=7.7.5
# Wed, 23 Jan 2019 09:14:25 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 23 Jan 2019 09:14:26 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Wed, 23 Jan 2019 09:14:26 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Wed, 23 Jan 2019 09:14:39 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:14:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:14:44 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:14:44 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:14:44 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Wed, 23 Jan 2019 09:14:44 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Wed, 23 Jan 2019 09:14:45 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:14:45 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f26df5825808198c401b1eb9ff338c8bd41c4850a5052915a9b2710195d76`  
		Last Modified: Wed, 23 Jan 2019 09:15:59 GMT  
		Size: 82.9 MB (82857468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f930042edac20f54322554e1bb0ae02885efa4e2ca1ecf865a658057f94063`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ff6b6f39338184f0f25c59b95f9cf1110dabfe9c6db70367e016d6107aa9`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fb1b09ad7514f3209e3e23f3f5cdc3c364a160995ed949939ff5b7e03a81`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1348911fbee3497586e055bf9c39856d0c570c728f1bc12bfd6849ae13fa3`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9299b80ec0f7a3187d921b8e3c44c12a6e938393f96e755a5387630c28b5cbba`  
		Last Modified: Wed, 23 Jan 2019 09:15:45 GMT  
		Size: 87.8 MB (87818776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9733dbab57074aaf9257f14b557ae1e18075eccb3c6e7e0ff070bfee40a3d`  
		Last Modified: Wed, 23 Jan 2019 09:15:37 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e015866dcdbe16281b3c40e88107a2cd9feda8bdcdcac8be838ae65efe9e7d`  
		Last Modified: Wed, 23 Jan 2019 09:15:37 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:b1614532fc944ed48bba5d81f0c99793447b8a4bc4a31408671c843a3140d9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201817550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3961f614f2ebf18ea9a17c76b34ffcd75f729a2d75b95b0739a07fadee48c7`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 10:29:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:55 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 10:29:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 10:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 10:30:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 10:30:10 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 10:30:11 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 10:30:12 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 10:30:13 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 10:30:14 GMT
ENV BONITA_VERSION=7.7.5
# Wed, 23 Jan 2019 10:30:15 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 23 Jan 2019 10:30:15 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Wed, 23 Jan 2019 10:30:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Wed, 23 Jan 2019 10:30:52 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:30:58 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:31:01 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 10:31:04 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 10:31:07 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Wed, 23 Jan 2019 10:31:09 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Wed, 23 Jan 2019 10:31:12 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 10:31:16 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36014e03f5eddb2d46fe689cf3daae150cf547e0c72d737c80a014459a8342`  
		Last Modified: Wed, 23 Jan 2019 10:33:08 GMT  
		Size: 73.8 MB (73819434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0916dd319efd2279b07f948bfb6e8226c973e379d3bb2fbad7c6489eb16ba8`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf2c7b23f95541695e5dd8440e32fccc66edc7bfefa46434e98f31206446cf`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe1670b9ef4c018a1a808fac58176158ba4fe888eb3209f59c470ce2144edd3`  
		Last Modified: Wed, 23 Jan 2019 10:32:42 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47610b1f343f9f256ece2ba443b94400f9be4ce6c160f2556e5050e5a28a41cd`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 468.8 KB (468797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca5462154011eb104fb59a6588055a918531cb9a452a07f831670ab2d3af20c`  
		Last Modified: Wed, 23 Jan 2019 10:32:52 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdfd834d9f1481a1d19daa0db42c1cd4c904e11686b3432414e1c50df331ad`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab90de9669756d17ca139455294fdc519d87daedf01a4b03c40a2b60a8a3d311`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:78134bce594cd3b6f6be94c600e0289b6627656362a8db68547b73a3ecdb43ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211518724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51f72fba646b224d0589014cca10a15311107018b5e9ead95ccdd689dff2d8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:47:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:50:07 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:50:15 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:50:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:50:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:50:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:50:43 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:50:45 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:50:48 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:50:51 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:50:52 GMT
ENV BONITA_VERSION=7.7.5
# Wed, 23 Jan 2019 09:50:53 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 23 Jan 2019 09:50:55 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Wed, 23 Jan 2019 09:50:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Wed, 23 Jan 2019 09:52:05 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:52:11 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:52:16 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:52:19 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:52:21 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Wed, 23 Jan 2019 09:52:23 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Wed, 23 Jan 2019 09:52:25 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:52:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51295aaf903aae8b4d704e6df4c2b79a9a400b458b90009508fee6bc99b416`  
		Last Modified: Wed, 23 Jan 2019 09:55:25 GMT  
		Size: 77.3 MB (77321899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c067dd29a8f27a83e9aca331875653804dc28ba13844beb687153d02318ee154`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b97f1fba885bf1b9b03a5b921bfea4aafe8f5d7f247f58b24c286789e31bb`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be33dc1ec863c64bf55d3dec439d04cae65ef798e9acf1048e08c1af6e5359b1`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6670b9842e7dbf07f427d64337b84f258ac2cf302b121b7fcf4f7464097635`  
		Last Modified: Wed, 23 Jan 2019 09:55:05 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7050ac9ce903d1519034068ad4ae53b115908119b7090ef16c0f07306870abc`  
		Last Modified: Wed, 23 Jan 2019 09:55:12 GMT  
		Size: 87.8 MB (87818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303691e687fc2e41a2c8740f277015242d562fe40b0abb1e96e424ace121c49e`  
		Last Modified: Wed, 23 Jan 2019 09:55:03 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3c434b49f24b2ead64fd25185d420a531d6a4891b3ba3771b07631a14320d2`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.5`

```console
$ docker pull bonita@sha256:8683071122f2d23364aabce3bbb2e366893a51719c43e3833011d2de25a4acab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7.5` - linux; amd64

```console
$ docker pull bonita@sha256:45551c362823e9cfade6d01fb5762f8d7004f439614181e3496930672c7fe89c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214850805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d14b76ea158ee9265ed9256f03c37fb83eca0acfc745e5fa3542c29bbc235d4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:13:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:14:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:14:19 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:14:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:14:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:14:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:14:24 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:14:24 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:14:25 GMT
ENV BONITA_VERSION=7.7.5
# Wed, 23 Jan 2019 09:14:25 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 23 Jan 2019 09:14:26 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Wed, 23 Jan 2019 09:14:26 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Wed, 23 Jan 2019 09:14:39 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:14:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:14:44 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:14:44 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:14:44 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Wed, 23 Jan 2019 09:14:44 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Wed, 23 Jan 2019 09:14:45 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:14:45 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f26df5825808198c401b1eb9ff338c8bd41c4850a5052915a9b2710195d76`  
		Last Modified: Wed, 23 Jan 2019 09:15:59 GMT  
		Size: 82.9 MB (82857468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f930042edac20f54322554e1bb0ae02885efa4e2ca1ecf865a658057f94063`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ff6b6f39338184f0f25c59b95f9cf1110dabfe9c6db70367e016d6107aa9`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fb1b09ad7514f3209e3e23f3f5cdc3c364a160995ed949939ff5b7e03a81`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1348911fbee3497586e055bf9c39856d0c570c728f1bc12bfd6849ae13fa3`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9299b80ec0f7a3187d921b8e3c44c12a6e938393f96e755a5387630c28b5cbba`  
		Last Modified: Wed, 23 Jan 2019 09:15:45 GMT  
		Size: 87.8 MB (87818776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de9733dbab57074aaf9257f14b557ae1e18075eccb3c6e7e0ff070bfee40a3d`  
		Last Modified: Wed, 23 Jan 2019 09:15:37 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e015866dcdbe16281b3c40e88107a2cd9feda8bdcdcac8be838ae65efe9e7d`  
		Last Modified: Wed, 23 Jan 2019 09:15:37 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:b1614532fc944ed48bba5d81f0c99793447b8a4bc4a31408671c843a3140d9fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201817550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3961f614f2ebf18ea9a17c76b34ffcd75f729a2d75b95b0739a07fadee48c7`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 10:29:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:55 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 10:29:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 10:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 10:30:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 10:30:10 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 10:30:11 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 10:30:12 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 10:30:13 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 10:30:14 GMT
ENV BONITA_VERSION=7.7.5
# Wed, 23 Jan 2019 10:30:15 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 23 Jan 2019 10:30:15 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Wed, 23 Jan 2019 10:30:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Wed, 23 Jan 2019 10:30:52 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:30:58 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:31:01 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 10:31:04 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 10:31:07 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Wed, 23 Jan 2019 10:31:09 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Wed, 23 Jan 2019 10:31:12 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 10:31:16 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36014e03f5eddb2d46fe689cf3daae150cf547e0c72d737c80a014459a8342`  
		Last Modified: Wed, 23 Jan 2019 10:33:08 GMT  
		Size: 73.8 MB (73819434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0916dd319efd2279b07f948bfb6e8226c973e379d3bb2fbad7c6489eb16ba8`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf2c7b23f95541695e5dd8440e32fccc66edc7bfefa46434e98f31206446cf`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe1670b9ef4c018a1a808fac58176158ba4fe888eb3209f59c470ce2144edd3`  
		Last Modified: Wed, 23 Jan 2019 10:32:42 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47610b1f343f9f256ece2ba443b94400f9be4ce6c160f2556e5050e5a28a41cd`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 468.8 KB (468797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca5462154011eb104fb59a6588055a918531cb9a452a07f831670ab2d3af20c`  
		Last Modified: Wed, 23 Jan 2019 10:32:52 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdfd834d9f1481a1d19daa0db42c1cd4c904e11686b3432414e1c50df331ad`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab90de9669756d17ca139455294fdc519d87daedf01a4b03c40a2b60a8a3d311`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; ppc64le

```console
$ docker pull bonita@sha256:78134bce594cd3b6f6be94c600e0289b6627656362a8db68547b73a3ecdb43ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211518724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51f72fba646b224d0589014cca10a15311107018b5e9ead95ccdd689dff2d8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:47:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:50:07 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:50:15 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:50:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:50:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:50:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:50:43 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:50:45 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:50:48 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:50:51 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:50:52 GMT
ENV BONITA_VERSION=7.7.5
# Wed, 23 Jan 2019 09:50:53 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 23 Jan 2019 09:50:55 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Wed, 23 Jan 2019 09:50:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Wed, 23 Jan 2019 09:52:05 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:52:11 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:52:16 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:52:19 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:52:21 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Wed, 23 Jan 2019 09:52:23 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Wed, 23 Jan 2019 09:52:25 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:52:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51295aaf903aae8b4d704e6df4c2b79a9a400b458b90009508fee6bc99b416`  
		Last Modified: Wed, 23 Jan 2019 09:55:25 GMT  
		Size: 77.3 MB (77321899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c067dd29a8f27a83e9aca331875653804dc28ba13844beb687153d02318ee154`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b97f1fba885bf1b9b03a5b921bfea4aafe8f5d7f247f58b24c286789e31bb`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be33dc1ec863c64bf55d3dec439d04cae65ef798e9acf1048e08c1af6e5359b1`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6670b9842e7dbf07f427d64337b84f258ac2cf302b121b7fcf4f7464097635`  
		Last Modified: Wed, 23 Jan 2019 09:55:05 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7050ac9ce903d1519034068ad4ae53b115908119b7090ef16c0f07306870abc`  
		Last Modified: Wed, 23 Jan 2019 09:55:12 GMT  
		Size: 87.8 MB (87818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303691e687fc2e41a2c8740f277015242d562fe40b0abb1e96e424ace121c49e`  
		Last Modified: Wed, 23 Jan 2019 09:55:03 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3c434b49f24b2ead64fd25185d420a531d6a4891b3ba3771b07631a14320d2`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8`

```console
$ docker pull bonita@sha256:f851f5f001c918c3dede01a35ebac41b7201a320cdd63d97da5220290e7da7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:540d7489aebc24446b70ab57c957c4b3b3e7c4b0e10e628d8a675f02d12273be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218049467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff92590966e64d6371e13c7a3f6370a748ccb62f3b30bf16b708ff752b052980`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:13:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:14:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:14:19 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:14:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:14:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:14:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:14:24 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:14:24 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:15:01 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 09:15:01 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 09:15:02 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 09:15:02 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 09:15:19 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:15:21 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:15:23 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:15:23 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:15:24 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 09:15:24 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 09:15:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:15:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f26df5825808198c401b1eb9ff338c8bd41c4850a5052915a9b2710195d76`  
		Last Modified: Wed, 23 Jan 2019 09:15:59 GMT  
		Size: 82.9 MB (82857468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f930042edac20f54322554e1bb0ae02885efa4e2ca1ecf865a658057f94063`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ff6b6f39338184f0f25c59b95f9cf1110dabfe9c6db70367e016d6107aa9`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fb1b09ad7514f3209e3e23f3f5cdc3c364a160995ed949939ff5b7e03a81`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1348911fbee3497586e055bf9c39856d0c570c728f1bc12bfd6849ae13fa3`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9259f7954689a9d8182e91ad218d6d340219f7f5011d8babe7085b23b0593f98`  
		Last Modified: Wed, 23 Jan 2019 09:16:12 GMT  
		Size: 91.0 MB (91017459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff5e6774fba4ff5beb0ccbef04407a958a774385b4077974f695287229b8f73`  
		Last Modified: Wed, 23 Jan 2019 09:16:04 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2edce4e0c794fd2054e6d9388912c0c2222e72f822249a0e7146e866410616b`  
		Last Modified: Wed, 23 Jan 2019 09:16:04 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:d3250784027669ade419331cc8d2c38402962f9d5f13f830927d4afdc494f041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (205016206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ea0b9cf5fa84b3da120dbcea7ba0cc810e6e50fde966ae1ccdc92219d6ebed`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 10:29:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:55 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 10:29:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 10:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 10:30:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 10:30:10 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 10:30:11 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 10:30:12 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 10:30:13 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 10:31:32 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 10:31:36 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 10:31:38 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 10:31:40 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 10:32:11 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:32:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:32:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 10:32:22 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 10:32:22 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 10:32:23 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 10:32:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 10:32:24 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36014e03f5eddb2d46fe689cf3daae150cf547e0c72d737c80a014459a8342`  
		Last Modified: Wed, 23 Jan 2019 10:33:08 GMT  
		Size: 73.8 MB (73819434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0916dd319efd2279b07f948bfb6e8226c973e379d3bb2fbad7c6489eb16ba8`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf2c7b23f95541695e5dd8440e32fccc66edc7bfefa46434e98f31206446cf`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe1670b9ef4c018a1a808fac58176158ba4fe888eb3209f59c470ce2144edd3`  
		Last Modified: Wed, 23 Jan 2019 10:32:42 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47610b1f343f9f256ece2ba443b94400f9be4ce6c160f2556e5050e5a28a41cd`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 468.8 KB (468797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067666cfa7442a2a3da1a1e23f79004f6b497aa328144abd69706ebc09eee9c3`  
		Last Modified: Wed, 23 Jan 2019 10:33:30 GMT  
		Size: 91.0 MB (91017460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6023af00a044dfc994183ad90c16ebaaa7090d1cc35386ebcb2e68d4eea91ac`  
		Last Modified: Wed, 23 Jan 2019 10:33:17 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0547fc5e500309d858e432a69aacaeaf29aef8fbbd9b44d035d9b159d585f`  
		Last Modified: Wed, 23 Jan 2019 10:33:18 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:f8fe660dedfeda52f290984e698595877d933c7ea480c3ae9f37ceebbd4aac00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214717387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c154166f839793d182c6d65073c2d36a609f370c62ac1c13ec51169c901936`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:47:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:50:07 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:50:15 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:50:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:50:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:50:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:50:43 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:50:45 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:50:48 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:50:51 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:52:43 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 09:52:45 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 09:52:47 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 09:52:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 09:54:20 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:54:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:54:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:54:38 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:54:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 09:54:41 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 09:54:43 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:54:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51295aaf903aae8b4d704e6df4c2b79a9a400b458b90009508fee6bc99b416`  
		Last Modified: Wed, 23 Jan 2019 09:55:25 GMT  
		Size: 77.3 MB (77321899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c067dd29a8f27a83e9aca331875653804dc28ba13844beb687153d02318ee154`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b97f1fba885bf1b9b03a5b921bfea4aafe8f5d7f247f58b24c286789e31bb`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be33dc1ec863c64bf55d3dec439d04cae65ef798e9acf1048e08c1af6e5359b1`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6670b9842e7dbf07f427d64337b84f258ac2cf302b121b7fcf4f7464097635`  
		Last Modified: Wed, 23 Jan 2019 09:55:05 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2f0f62aad275745e8f1e705acf643450d5e9de76ccc2f7fe4a7c10e520b350`  
		Last Modified: Wed, 23 Jan 2019 09:55:43 GMT  
		Size: 91.0 MB (91017499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60edd3a10a60bce56ec329cd988539b2fc5d85978f6fbfdfdf89668983b64ab4`  
		Last Modified: Wed, 23 Jan 2019 09:55:39 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27a483812e42f739d8ce025bfe8984e6319caabdfb15e99d9bd3d7ac598ab59`  
		Last Modified: Wed, 23 Jan 2019 09:55:39 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.0`

```console
$ docker pull bonita@sha256:f851f5f001c918c3dede01a35ebac41b7201a320cdd63d97da5220290e7da7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.0` - linux; amd64

```console
$ docker pull bonita@sha256:540d7489aebc24446b70ab57c957c4b3b3e7c4b0e10e628d8a675f02d12273be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218049467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff92590966e64d6371e13c7a3f6370a748ccb62f3b30bf16b708ff752b052980`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:13:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:14:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:14:19 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:14:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:14:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:14:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:14:24 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:14:24 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:15:01 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 09:15:01 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 09:15:02 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 09:15:02 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 09:15:19 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:15:21 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:15:23 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:15:23 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:15:24 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 09:15:24 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 09:15:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:15:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f26df5825808198c401b1eb9ff338c8bd41c4850a5052915a9b2710195d76`  
		Last Modified: Wed, 23 Jan 2019 09:15:59 GMT  
		Size: 82.9 MB (82857468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f930042edac20f54322554e1bb0ae02885efa4e2ca1ecf865a658057f94063`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ff6b6f39338184f0f25c59b95f9cf1110dabfe9c6db70367e016d6107aa9`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fb1b09ad7514f3209e3e23f3f5cdc3c364a160995ed949939ff5b7e03a81`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1348911fbee3497586e055bf9c39856d0c570c728f1bc12bfd6849ae13fa3`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9259f7954689a9d8182e91ad218d6d340219f7f5011d8babe7085b23b0593f98`  
		Last Modified: Wed, 23 Jan 2019 09:16:12 GMT  
		Size: 91.0 MB (91017459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff5e6774fba4ff5beb0ccbef04407a958a774385b4077974f695287229b8f73`  
		Last Modified: Wed, 23 Jan 2019 09:16:04 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2edce4e0c794fd2054e6d9388912c0c2222e72f822249a0e7146e866410616b`  
		Last Modified: Wed, 23 Jan 2019 09:16:04 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:d3250784027669ade419331cc8d2c38402962f9d5f13f830927d4afdc494f041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (205016206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ea0b9cf5fa84b3da120dbcea7ba0cc810e6e50fde966ae1ccdc92219d6ebed`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 10:29:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:55 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 10:29:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 10:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 10:30:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 10:30:10 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 10:30:11 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 10:30:12 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 10:30:13 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 10:31:32 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 10:31:36 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 10:31:38 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 10:31:40 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 10:32:11 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:32:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:32:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 10:32:22 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 10:32:22 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 10:32:23 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 10:32:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 10:32:24 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36014e03f5eddb2d46fe689cf3daae150cf547e0c72d737c80a014459a8342`  
		Last Modified: Wed, 23 Jan 2019 10:33:08 GMT  
		Size: 73.8 MB (73819434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0916dd319efd2279b07f948bfb6e8226c973e379d3bb2fbad7c6489eb16ba8`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf2c7b23f95541695e5dd8440e32fccc66edc7bfefa46434e98f31206446cf`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe1670b9ef4c018a1a808fac58176158ba4fe888eb3209f59c470ce2144edd3`  
		Last Modified: Wed, 23 Jan 2019 10:32:42 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47610b1f343f9f256ece2ba443b94400f9be4ce6c160f2556e5050e5a28a41cd`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 468.8 KB (468797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067666cfa7442a2a3da1a1e23f79004f6b497aa328144abd69706ebc09eee9c3`  
		Last Modified: Wed, 23 Jan 2019 10:33:30 GMT  
		Size: 91.0 MB (91017460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6023af00a044dfc994183ad90c16ebaaa7090d1cc35386ebcb2e68d4eea91ac`  
		Last Modified: Wed, 23 Jan 2019 10:33:17 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0547fc5e500309d858e432a69aacaeaf29aef8fbbd9b44d035d9b159d585f`  
		Last Modified: Wed, 23 Jan 2019 10:33:18 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:f8fe660dedfeda52f290984e698595877d933c7ea480c3ae9f37ceebbd4aac00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214717387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c154166f839793d182c6d65073c2d36a609f370c62ac1c13ec51169c901936`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:47:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:50:07 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:50:15 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:50:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:50:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:50:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:50:43 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:50:45 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:50:48 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:50:51 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:52:43 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 09:52:45 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 09:52:47 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 09:52:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 09:54:20 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:54:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:54:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:54:38 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:54:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 09:54:41 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 09:54:43 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:54:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51295aaf903aae8b4d704e6df4c2b79a9a400b458b90009508fee6bc99b416`  
		Last Modified: Wed, 23 Jan 2019 09:55:25 GMT  
		Size: 77.3 MB (77321899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c067dd29a8f27a83e9aca331875653804dc28ba13844beb687153d02318ee154`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b97f1fba885bf1b9b03a5b921bfea4aafe8f5d7f247f58b24c286789e31bb`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be33dc1ec863c64bf55d3dec439d04cae65ef798e9acf1048e08c1af6e5359b1`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6670b9842e7dbf07f427d64337b84f258ac2cf302b121b7fcf4f7464097635`  
		Last Modified: Wed, 23 Jan 2019 09:55:05 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2f0f62aad275745e8f1e705acf643450d5e9de76ccc2f7fe4a7c10e520b350`  
		Last Modified: Wed, 23 Jan 2019 09:55:43 GMT  
		Size: 91.0 MB (91017499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60edd3a10a60bce56ec329cd988539b2fc5d85978f6fbfdfdf89668983b64ab4`  
		Last Modified: Wed, 23 Jan 2019 09:55:39 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27a483812e42f739d8ce025bfe8984e6319caabdfb15e99d9bd3d7ac598ab59`  
		Last Modified: Wed, 23 Jan 2019 09:55:39 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:f851f5f001c918c3dede01a35ebac41b7201a320cdd63d97da5220290e7da7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:540d7489aebc24446b70ab57c957c4b3b3e7c4b0e10e628d8a675f02d12273be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218049467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff92590966e64d6371e13c7a3f6370a748ccb62f3b30bf16b708ff752b052980`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:13:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:14:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:14:19 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:14:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:14:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:14:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:14:24 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:14:24 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:15:01 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 09:15:01 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 09:15:02 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 09:15:02 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 09:15:19 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:15:21 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:15:23 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:15:23 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:15:24 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 09:15:24 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 09:15:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:15:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f26df5825808198c401b1eb9ff338c8bd41c4850a5052915a9b2710195d76`  
		Last Modified: Wed, 23 Jan 2019 09:15:59 GMT  
		Size: 82.9 MB (82857468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f930042edac20f54322554e1bb0ae02885efa4e2ca1ecf865a658057f94063`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ff6b6f39338184f0f25c59b95f9cf1110dabfe9c6db70367e016d6107aa9`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fb1b09ad7514f3209e3e23f3f5cdc3c364a160995ed949939ff5b7e03a81`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1348911fbee3497586e055bf9c39856d0c570c728f1bc12bfd6849ae13fa3`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9259f7954689a9d8182e91ad218d6d340219f7f5011d8babe7085b23b0593f98`  
		Last Modified: Wed, 23 Jan 2019 09:16:12 GMT  
		Size: 91.0 MB (91017459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff5e6774fba4ff5beb0ccbef04407a958a774385b4077974f695287229b8f73`  
		Last Modified: Wed, 23 Jan 2019 09:16:04 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2edce4e0c794fd2054e6d9388912c0c2222e72f822249a0e7146e866410616b`  
		Last Modified: Wed, 23 Jan 2019 09:16:04 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:d3250784027669ade419331cc8d2c38402962f9d5f13f830927d4afdc494f041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (205016206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ea0b9cf5fa84b3da120dbcea7ba0cc810e6e50fde966ae1ccdc92219d6ebed`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 10:29:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:55 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 10:29:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 10:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 10:30:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 10:30:10 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 10:30:11 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 10:30:12 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 10:30:13 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 10:31:32 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 10:31:36 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 10:31:38 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 10:31:40 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 10:32:11 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:32:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 10:32:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 10:32:22 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 10:32:22 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 10:32:23 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 10:32:24 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 10:32:24 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36014e03f5eddb2d46fe689cf3daae150cf547e0c72d737c80a014459a8342`  
		Last Modified: Wed, 23 Jan 2019 10:33:08 GMT  
		Size: 73.8 MB (73819434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0916dd319efd2279b07f948bfb6e8226c973e379d3bb2fbad7c6489eb16ba8`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf2c7b23f95541695e5dd8440e32fccc66edc7bfefa46434e98f31206446cf`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe1670b9ef4c018a1a808fac58176158ba4fe888eb3209f59c470ce2144edd3`  
		Last Modified: Wed, 23 Jan 2019 10:32:42 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47610b1f343f9f256ece2ba443b94400f9be4ce6c160f2556e5050e5a28a41cd`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 468.8 KB (468797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067666cfa7442a2a3da1a1e23f79004f6b497aa328144abd69706ebc09eee9c3`  
		Last Modified: Wed, 23 Jan 2019 10:33:30 GMT  
		Size: 91.0 MB (91017460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6023af00a044dfc994183ad90c16ebaaa7090d1cc35386ebcb2e68d4eea91ac`  
		Last Modified: Wed, 23 Jan 2019 10:33:17 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c0547fc5e500309d858e432a69aacaeaf29aef8fbbd9b44d035d9b159d585f`  
		Last Modified: Wed, 23 Jan 2019 10:33:18 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:f8fe660dedfeda52f290984e698595877d933c7ea480c3ae9f37ceebbd4aac00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214717387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c154166f839793d182c6d65073c2d36a609f370c62ac1c13ec51169c901936`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:47:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:50:07 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:50:15 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:50:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:50:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:50:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:50:43 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:50:45 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:50:48 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:50:51 GMT
ARG BONITA_URL
# Wed, 23 Jan 2019 09:52:43 GMT
ENV BONITA_VERSION=7.8.0
# Wed, 23 Jan 2019 09:52:45 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 23 Jan 2019 09:52:47 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Wed, 23 Jan 2019 09:52:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Wed, 23 Jan 2019 09:54:20 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:54:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 23 Jan 2019 09:54:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 23 Jan 2019 09:54:38 GMT
VOLUME [/opt/bonita]
# Wed, 23 Jan 2019 09:54:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 23 Jan 2019 09:54:41 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 23 Jan 2019 09:54:43 GMT
EXPOSE 8080
# Wed, 23 Jan 2019 09:54:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb51295aaf903aae8b4d704e6df4c2b79a9a400b458b90009508fee6bc99b416`  
		Last Modified: Wed, 23 Jan 2019 09:55:25 GMT  
		Size: 77.3 MB (77321899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c067dd29a8f27a83e9aca331875653804dc28ba13844beb687153d02318ee154`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34b97f1fba885bf1b9b03a5b921bfea4aafe8f5d7f247f58b24c286789e31bb`  
		Last Modified: Wed, 23 Jan 2019 09:55:11 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be33dc1ec863c64bf55d3dec439d04cae65ef798e9acf1048e08c1af6e5359b1`  
		Last Modified: Wed, 23 Jan 2019 09:55:02 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6670b9842e7dbf07f427d64337b84f258ac2cf302b121b7fcf4f7464097635`  
		Last Modified: Wed, 23 Jan 2019 09:55:05 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2f0f62aad275745e8f1e705acf643450d5e9de76ccc2f7fe4a7c10e520b350`  
		Last Modified: Wed, 23 Jan 2019 09:55:43 GMT  
		Size: 91.0 MB (91017499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60edd3a10a60bce56ec329cd988539b2fc5d85978f6fbfdfdf89668983b64ab4`  
		Last Modified: Wed, 23 Jan 2019 09:55:39 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27a483812e42f739d8ce025bfe8984e6319caabdfb15e99d9bd3d7ac598ab59`  
		Last Modified: Wed, 23 Jan 2019 09:55:39 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
