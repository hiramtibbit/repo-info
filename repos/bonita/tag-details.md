<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.4`](#bonita784)
-	[`bonita:7.9`](#bonita79)
-	[`bonita:7.9.0`](#bonita790)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.8`

```console
$ docker pull bonita@sha256:34e653e2ef39de86cd8bd975ff84c342b7a0974e04e0c03d65a25d69db00454f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:0f352d6462d28b375bf58e7672e82403f64fdb8454e5aae6b1da44b0510f01a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221275581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c762ca5db48df9165e2c3af93c288e96c4b83760cc2c2ac86ad637b0eb354d0c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:38:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 15 May 2019 21:39:09 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:12 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 15 May 2019 21:39:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 15 May 2019 21:39:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 15 May 2019 21:39:16 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG TOMCAT_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_SHA256
# Wed, 15 May 2019 21:39:17 GMT
ARG BONITA_URL
# Wed, 15 May 2019 21:39:33 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 15 May 2019 21:39:34 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 15 May 2019 21:39:42 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:46 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 15 May 2019 21:39:48 GMT
VOLUME [/opt/bonita]
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 15 May 2019 21:39:48 GMT
EXPOSE 8080
# Wed, 15 May 2019 21:39:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2054ffe6918ee14a5656783f4e7e00c518a854c42d68ab4438d102178c7e2460`  
		Last Modified: Wed, 15 May 2019 21:40:16 GMT  
		Size: 82.8 MB (82825868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b0e75dcea0a1bfb203f09f320478f14ab32887119659c45593af54edd49356`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f4a16446c587dfada2a11484f9c2ade5e35899b44fd8a2ff8af99ab8872923`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126df4570c8d50706efbba124d49d85c50c8040ae85ecfd95525b5cb9fad419f`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c7e85d000ec3bab408f31ae4e2327eaf58e1e6ba74cb476cfa02df4deab2`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9f50ae09160103f2b69489313fce9b26e2ec67b2ff2ddc9790b097533a8`  
		Last Modified: Wed, 15 May 2019 21:40:28 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5290f11ca4c3cd1b18d7e98c72e07d8b9868165666b1db3d8d55ca8cbc4e6ebb`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f18745fc4ec1fcc83a8bfe21ba7062c4cd80d9ef5eb3a74520cc3cfe0ce2b`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:3e8faff2f54eafd8fffe581d0bafae59a8431571ac4ff6d31121f1d2140717d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.3 MB (208277895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0110314fc1fd85fc2d1c2f4bb5da39b72aecf62d6b3d80449a082439d26cc7cf`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:58:15 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 21:59:29 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:32 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 21:59:33 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 21:59:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 18 Jun 2019 21:59:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 21:59:39 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 21:59:39 GMT
ARG TOMCAT_VERSION
# Tue, 18 Jun 2019 21:59:40 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 21:59:40 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 21:59:41 GMT
ENV BONITA_VERSION=7.8.4
# Tue, 18 Jun 2019 21:59:41 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 18 Jun 2019 21:59:42 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Tue, 18 Jun 2019 21:59:42 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Tue, 18 Jun 2019 22:00:46 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 18 Jun 2019 22:00:49 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 18 Jun 2019 22:00:51 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 18 Jun 2019 22:00:51 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 22:00:53 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 18 Jun 2019 22:00:53 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 18 Jun 2019 22:00:54 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 22:00:55 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d3aebfdcca2bce8c0f0204b175f0c9f5e31a63ae5324f672ca7cf1162c217a`  
		Last Modified: Tue, 18 Jun 2019 22:04:58 GMT  
		Size: 73.8 MB (73837021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6712fd6f64e67dc826ff3b37fc4b2533d1febeaad57c403b4e21079f2415d`  
		Last Modified: Tue, 18 Jun 2019 22:04:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62533df0f2536d46d2e677c12bcb5eb8c127eb251e101c4ea2ee1d40ab39f4ea`  
		Last Modified: Tue, 18 Jun 2019 22:04:14 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb8cbdd37daa4d85e39354dc0ae9c2607947de5e8aea8730fa6c2320f466a54`  
		Last Modified: Tue, 18 Jun 2019 22:04:12 GMT  
		Size: 140.6 KB (140612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90e3c2431daa069f154d77f5ed88290ad592acbf082110fd67f63b6cd0f3fd`  
		Last Modified: Tue, 18 Jun 2019 22:04:12 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e00eac20a5c1032b0f1105847c2327bcdd18edfab032ff5efb29fcf522ce937`  
		Last Modified: Tue, 18 Jun 2019 22:04:25 GMT  
		Size: 94.0 MB (94028663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473c6ccd9edf17e5644eec33d6640f778302db27a8d0f4bf1b158e16a45fa61e`  
		Last Modified: Tue, 18 Jun 2019 22:04:12 GMT  
		Size: 6.4 KB (6432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a105546bf6b08a73a74d7c3539998cfc47585c4b9775ebdc4cdb550c87c72a48`  
		Last Modified: Tue, 18 Jun 2019 22:04:20 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:a936c32be77c4f5e78a7435bb7e14ba130e94ae59091d51c0fff8e8bf7c1c1fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217937478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d2944f8e47eac630fc7d62ac2aac9f08a68e35954525221f03cc463e11d874`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:43:20 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:45:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:45:55 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:46:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:46:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 17 Jun 2019 23:46:14 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:46:15 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:46:17 GMT
ARG TOMCAT_VERSION
# Mon, 17 Jun 2019 23:46:19 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:46:21 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:46:23 GMT
ENV BONITA_VERSION=7.8.4
# Mon, 17 Jun 2019 23:46:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Mon, 17 Jun 2019 23:46:26 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Mon, 17 Jun 2019 23:46:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Mon, 17 Jun 2019 23:47:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:29 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:34 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:47:36 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Mon, 17 Jun 2019 23:47:40 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:47:42 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e43c3c9d823219865b554a8d2f209dac7b7ca48fa0c259ddb6aac39919748`  
		Last Modified: Mon, 17 Jun 2019 23:52:28 GMT  
		Size: 77.4 MB (77350432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c3d17fab22ccd6fed19a42911c4cda4a08c6524c21b589b98c8c4704487b`  
		Last Modified: Mon, 17 Jun 2019 23:52:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0496f8946ed23eb653faa1d526ff15d8bf443b72980575b4d633468def5d72`  
		Last Modified: Mon, 17 Jun 2019 23:52:08 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322c92e2555a71c32328ab0a27c0cbd6cf4da0b97413a657c37b6ab002f869c0`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 140.6 KB (140612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91f27e2814771b13559494b4fd5d190eb38eadd8ff80d41cf74546104761add`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029de702f318aac3c132e3c1b8b0b2a38ea82b073b5a0874a85233c14c4b35e4`  
		Last Modified: Mon, 17 Jun 2019 23:52:17 GMT  
		Size: 94.0 MB (94028663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b4638911640af7713dc16932df9fdb9bf06a562adf3473e9ca87b7f555e61`  
		Last Modified: Mon, 17 Jun 2019 23:52:05 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e3740441d3be84c6915146e5b8879ae68a7c719af3f0279a826db3c128a7fb`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.4`

```console
$ docker pull bonita@sha256:34e653e2ef39de86cd8bd975ff84c342b7a0974e04e0c03d65a25d69db00454f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.4` - linux; amd64

```console
$ docker pull bonita@sha256:0f352d6462d28b375bf58e7672e82403f64fdb8454e5aae6b1da44b0510f01a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221275581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c762ca5db48df9165e2c3af93c288e96c4b83760cc2c2ac86ad637b0eb354d0c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:38:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 15 May 2019 21:39:09 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:12 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 15 May 2019 21:39:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 15 May 2019 21:39:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 15 May 2019 21:39:16 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG TOMCAT_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_SHA256
# Wed, 15 May 2019 21:39:17 GMT
ARG BONITA_URL
# Wed, 15 May 2019 21:39:33 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 15 May 2019 21:39:34 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 15 May 2019 21:39:42 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:46 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 15 May 2019 21:39:48 GMT
VOLUME [/opt/bonita]
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 15 May 2019 21:39:48 GMT
EXPOSE 8080
# Wed, 15 May 2019 21:39:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2054ffe6918ee14a5656783f4e7e00c518a854c42d68ab4438d102178c7e2460`  
		Last Modified: Wed, 15 May 2019 21:40:16 GMT  
		Size: 82.8 MB (82825868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b0e75dcea0a1bfb203f09f320478f14ab32887119659c45593af54edd49356`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f4a16446c587dfada2a11484f9c2ade5e35899b44fd8a2ff8af99ab8872923`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126df4570c8d50706efbba124d49d85c50c8040ae85ecfd95525b5cb9fad419f`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c7e85d000ec3bab408f31ae4e2327eaf58e1e6ba74cb476cfa02df4deab2`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9f50ae09160103f2b69489313fce9b26e2ec67b2ff2ddc9790b097533a8`  
		Last Modified: Wed, 15 May 2019 21:40:28 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5290f11ca4c3cd1b18d7e98c72e07d8b9868165666b1db3d8d55ca8cbc4e6ebb`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f18745fc4ec1fcc83a8bfe21ba7062c4cd80d9ef5eb3a74520cc3cfe0ce2b`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.4` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:3e8faff2f54eafd8fffe581d0bafae59a8431571ac4ff6d31121f1d2140717d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.3 MB (208277895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0110314fc1fd85fc2d1c2f4bb5da39b72aecf62d6b3d80449a082439d26cc7cf`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:58:15 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 21:59:29 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:32 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 21:59:33 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 21:59:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 18 Jun 2019 21:59:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 21:59:39 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 21:59:39 GMT
ARG TOMCAT_VERSION
# Tue, 18 Jun 2019 21:59:40 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 21:59:40 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 21:59:41 GMT
ENV BONITA_VERSION=7.8.4
# Tue, 18 Jun 2019 21:59:41 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 18 Jun 2019 21:59:42 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Tue, 18 Jun 2019 21:59:42 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Tue, 18 Jun 2019 22:00:46 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 18 Jun 2019 22:00:49 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 18 Jun 2019 22:00:51 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 18 Jun 2019 22:00:51 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 22:00:53 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 18 Jun 2019 22:00:53 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 18 Jun 2019 22:00:54 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 22:00:55 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d3aebfdcca2bce8c0f0204b175f0c9f5e31a63ae5324f672ca7cf1162c217a`  
		Last Modified: Tue, 18 Jun 2019 22:04:58 GMT  
		Size: 73.8 MB (73837021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6712fd6f64e67dc826ff3b37fc4b2533d1febeaad57c403b4e21079f2415d`  
		Last Modified: Tue, 18 Jun 2019 22:04:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62533df0f2536d46d2e677c12bcb5eb8c127eb251e101c4ea2ee1d40ab39f4ea`  
		Last Modified: Tue, 18 Jun 2019 22:04:14 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb8cbdd37daa4d85e39354dc0ae9c2607947de5e8aea8730fa6c2320f466a54`  
		Last Modified: Tue, 18 Jun 2019 22:04:12 GMT  
		Size: 140.6 KB (140612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90e3c2431daa069f154d77f5ed88290ad592acbf082110fd67f63b6cd0f3fd`  
		Last Modified: Tue, 18 Jun 2019 22:04:12 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e00eac20a5c1032b0f1105847c2327bcdd18edfab032ff5efb29fcf522ce937`  
		Last Modified: Tue, 18 Jun 2019 22:04:25 GMT  
		Size: 94.0 MB (94028663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473c6ccd9edf17e5644eec33d6640f778302db27a8d0f4bf1b158e16a45fa61e`  
		Last Modified: Tue, 18 Jun 2019 22:04:12 GMT  
		Size: 6.4 KB (6432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a105546bf6b08a73a74d7c3539998cfc47585c4b9775ebdc4cdb550c87c72a48`  
		Last Modified: Tue, 18 Jun 2019 22:04:20 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.4` - linux; ppc64le

```console
$ docker pull bonita@sha256:a936c32be77c4f5e78a7435bb7e14ba130e94ae59091d51c0fff8e8bf7c1c1fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217937478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d2944f8e47eac630fc7d62ac2aac9f08a68e35954525221f03cc463e11d874`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:43:20 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:45:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:45:55 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:46:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:46:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 17 Jun 2019 23:46:14 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:46:15 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:46:17 GMT
ARG TOMCAT_VERSION
# Mon, 17 Jun 2019 23:46:19 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:46:21 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:46:23 GMT
ENV BONITA_VERSION=7.8.4
# Mon, 17 Jun 2019 23:46:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Mon, 17 Jun 2019 23:46:26 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Mon, 17 Jun 2019 23:46:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Mon, 17 Jun 2019 23:47:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:29 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:34 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:47:36 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Mon, 17 Jun 2019 23:47:40 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:47:42 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e43c3c9d823219865b554a8d2f209dac7b7ca48fa0c259ddb6aac39919748`  
		Last Modified: Mon, 17 Jun 2019 23:52:28 GMT  
		Size: 77.4 MB (77350432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c3d17fab22ccd6fed19a42911c4cda4a08c6524c21b589b98c8c4704487b`  
		Last Modified: Mon, 17 Jun 2019 23:52:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0496f8946ed23eb653faa1d526ff15d8bf443b72980575b4d633468def5d72`  
		Last Modified: Mon, 17 Jun 2019 23:52:08 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322c92e2555a71c32328ab0a27c0cbd6cf4da0b97413a657c37b6ab002f869c0`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 140.6 KB (140612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91f27e2814771b13559494b4fd5d190eb38eadd8ff80d41cf74546104761add`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029de702f318aac3c132e3c1b8b0b2a38ea82b073b5a0874a85233c14c4b35e4`  
		Last Modified: Mon, 17 Jun 2019 23:52:17 GMT  
		Size: 94.0 MB (94028663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b4638911640af7713dc16932df9fdb9bf06a562adf3473e9ca87b7f555e61`  
		Last Modified: Mon, 17 Jun 2019 23:52:05 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e3740441d3be84c6915146e5b8879ae68a7c719af3f0279a826db3c128a7fb`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.9`

```console
$ docker pull bonita@sha256:1009190831d81277b8336fa5a5bcadf6b356fe7273ea25dee98f5276261c519e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.9` - linux; amd64

```console
$ docker pull bonita@sha256:19af15ca3dff56ba22697c2a10c0d555af9cefef92cc05f767fe38c3e4bfa635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229845308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45337405c4b1fec9b86c0e51640381f167a2b52374d7e5cc01fbcd18338695`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 01:29:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 01:30:18 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:30:20 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 01:30:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 01:30:23 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 01:30:24 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 01:30:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 01:30:38 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 01:30:39 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 01:30:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab04e3c3c62bf8cf07ba3916ff59e606844ca4ac48599a4d4c66b143ba9e7ff`  
		Last Modified: Tue, 18 Jun 2019 01:31:20 GMT  
		Size: 101.9 MB (101905041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0106b7c9b768e7a3971d120ceeeef1da525193df539cedebc129ff8ed38843`  
		Last Modified: Tue, 18 Jun 2019 01:30:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd180994c3c40cd7bba9b483fe377ce93b3aed5c1d7c3cd0c3d3e611c1fabf4`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce10142e6f3c8cc5f0ec3292acfedcf65324390b92ffaf9a90f3b3637b5cd9e`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 569.1 KB (569081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50eb4e47e1234fbd1921d497755f8da190ba764c27b3627a4c4f2f1d29f62e1`  
		Last Modified: Tue, 18 Jun 2019 01:31:03 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039838d002136b49b8c8fe8f92f5ad54b1735ba353aa7366d8b31e72dabcb94`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 7.6 KB (7560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcb9f8e7a89e7d3602cac0ab76e5ce6ab0a913f81a7c0d0da639f9c7f249e3`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1cab4e50e33633a0bd58cd358ed00b99d9017d1acf088f13cdc431dd09b3fc05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215631318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547cc6dbf0e061f591144318a0e4bce9814a12c8a4677ec556c7ad6f2c00f96`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:01:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 22:02:11 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:02:14 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 22:02:16 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 22:02:25 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 22:03:29 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:32 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 22:03:35 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 22:03:37 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 22:03:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc92279742e94523473d4ebc6b845814d605b2f40963c731e8349f57a49a6d5a`  
		Last Modified: Tue, 18 Jun 2019 22:09:58 GMT  
		Size: 92.8 MB (92838464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4a63e7d6af3165babba8d5d65a44b926484803cae594ba717d54e54313bf9`  
		Last Modified: Tue, 18 Jun 2019 22:09:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f233dfb933d3876fc753a6e30462c4d6917e9faf26728fa365598491b7ac637`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd8567053211cc3307f31922a2ae2d08196146ca3ef69be8e87a3b626b0336`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdf4819853fe7c07402ee4015980c31b855cc14cdfde3201d0d7b37885ca5d`  
		Last Modified: Tue, 18 Jun 2019 22:10:26 GMT  
		Size: 98.5 MB (98503922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e5190f41a8f646aa59673c37acf37183bf37989c5bafeeef9347dcf7f74d4`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ab76957ade8c80d479673bcbda644d0b50133ba49db46c121a135958cf1d5`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9` - linux; ppc64le

```console
$ docker pull bonita@sha256:5215e887de3d84fa959949bbf3c0762f62dac940a10b129f487d6bbca35b099f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226551665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68103550ce599e10e8c279c6d3b6849c03a812440e12bf5dfc5809be898d63a9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:47:46 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:50:13 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:50:18 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:50:28 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:50:30 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:50:32 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:50:34 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:50:36 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:50:37 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:50:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:51:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:51:47 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:51:47 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:51:48 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:51:50 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:51:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53507aa91c369cbc0acedaaa960bc139d1797a805e01dfb2d32ab1916f9231fd`  
		Last Modified: Mon, 17 Jun 2019 23:53:13 GMT  
		Size: 94.9 MB (94938228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf033f0b5e52fb35fb70f7f332bd4b8d188fbf452b4b08b60f597ba56445720`  
		Last Modified: Mon, 17 Jun 2019 23:52:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50633185561df55ffe2032b93183210e007dce454d7e74d0dddf0c1fffb857cf`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48d24f130e5cebac121df0b0ff33bfa70251ef2e52a927414c12ca30fe50693`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 537.9 KB (537895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f86cc875b17faca4d5c6f1ddcc85deeba9fc5bbaee6bda5052c8befafdb064`  
		Last Modified: Mon, 17 Jun 2019 23:52:53 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda0594ad860f771357e0d598a069d1a4593b5fb8bf0d45813631faba4d8f6`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5c5228074e04cd8c4dc4ba6a473f1c66c1842e1afd76fcfc75e59440852b`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.9.0`

```console
$ docker pull bonita@sha256:1009190831d81277b8336fa5a5bcadf6b356fe7273ea25dee98f5276261c519e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.9.0` - linux; amd64

```console
$ docker pull bonita@sha256:19af15ca3dff56ba22697c2a10c0d555af9cefef92cc05f767fe38c3e4bfa635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229845308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45337405c4b1fec9b86c0e51640381f167a2b52374d7e5cc01fbcd18338695`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 01:29:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 01:30:18 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:30:20 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 01:30:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 01:30:23 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 01:30:24 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 01:30:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 01:30:38 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 01:30:39 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 01:30:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab04e3c3c62bf8cf07ba3916ff59e606844ca4ac48599a4d4c66b143ba9e7ff`  
		Last Modified: Tue, 18 Jun 2019 01:31:20 GMT  
		Size: 101.9 MB (101905041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0106b7c9b768e7a3971d120ceeeef1da525193df539cedebc129ff8ed38843`  
		Last Modified: Tue, 18 Jun 2019 01:30:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd180994c3c40cd7bba9b483fe377ce93b3aed5c1d7c3cd0c3d3e611c1fabf4`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce10142e6f3c8cc5f0ec3292acfedcf65324390b92ffaf9a90f3b3637b5cd9e`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 569.1 KB (569081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50eb4e47e1234fbd1921d497755f8da190ba764c27b3627a4c4f2f1d29f62e1`  
		Last Modified: Tue, 18 Jun 2019 01:31:03 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039838d002136b49b8c8fe8f92f5ad54b1735ba353aa7366d8b31e72dabcb94`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 7.6 KB (7560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcb9f8e7a89e7d3602cac0ab76e5ce6ab0a913f81a7c0d0da639f9c7f249e3`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1cab4e50e33633a0bd58cd358ed00b99d9017d1acf088f13cdc431dd09b3fc05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215631318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547cc6dbf0e061f591144318a0e4bce9814a12c8a4677ec556c7ad6f2c00f96`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:01:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 22:02:11 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:02:14 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 22:02:16 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 22:02:25 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 22:03:29 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:32 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 22:03:35 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 22:03:37 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 22:03:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc92279742e94523473d4ebc6b845814d605b2f40963c731e8349f57a49a6d5a`  
		Last Modified: Tue, 18 Jun 2019 22:09:58 GMT  
		Size: 92.8 MB (92838464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4a63e7d6af3165babba8d5d65a44b926484803cae594ba717d54e54313bf9`  
		Last Modified: Tue, 18 Jun 2019 22:09:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f233dfb933d3876fc753a6e30462c4d6917e9faf26728fa365598491b7ac637`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd8567053211cc3307f31922a2ae2d08196146ca3ef69be8e87a3b626b0336`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdf4819853fe7c07402ee4015980c31b855cc14cdfde3201d0d7b37885ca5d`  
		Last Modified: Tue, 18 Jun 2019 22:10:26 GMT  
		Size: 98.5 MB (98503922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e5190f41a8f646aa59673c37acf37183bf37989c5bafeeef9347dcf7f74d4`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ab76957ade8c80d479673bcbda644d0b50133ba49db46c121a135958cf1d5`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:5215e887de3d84fa959949bbf3c0762f62dac940a10b129f487d6bbca35b099f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226551665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68103550ce599e10e8c279c6d3b6849c03a812440e12bf5dfc5809be898d63a9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:47:46 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:50:13 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:50:18 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:50:28 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:50:30 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:50:32 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:50:34 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:50:36 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:50:37 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:50:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:51:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:51:47 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:51:47 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:51:48 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:51:50 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:51:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53507aa91c369cbc0acedaaa960bc139d1797a805e01dfb2d32ab1916f9231fd`  
		Last Modified: Mon, 17 Jun 2019 23:53:13 GMT  
		Size: 94.9 MB (94938228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf033f0b5e52fb35fb70f7f332bd4b8d188fbf452b4b08b60f597ba56445720`  
		Last Modified: Mon, 17 Jun 2019 23:52:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50633185561df55ffe2032b93183210e007dce454d7e74d0dddf0c1fffb857cf`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48d24f130e5cebac121df0b0ff33bfa70251ef2e52a927414c12ca30fe50693`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 537.9 KB (537895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f86cc875b17faca4d5c6f1ddcc85deeba9fc5bbaee6bda5052c8befafdb064`  
		Last Modified: Mon, 17 Jun 2019 23:52:53 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda0594ad860f771357e0d598a069d1a4593b5fb8bf0d45813631faba4d8f6`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5c5228074e04cd8c4dc4ba6a473f1c66c1842e1afd76fcfc75e59440852b`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:1009190831d81277b8336fa5a5bcadf6b356fe7273ea25dee98f5276261c519e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:19af15ca3dff56ba22697c2a10c0d555af9cefef92cc05f767fe38c3e4bfa635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229845308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45337405c4b1fec9b86c0e51640381f167a2b52374d7e5cc01fbcd18338695`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 01:29:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 01:30:18 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:30:20 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 01:30:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 01:30:23 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 01:30:24 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 01:30:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 01:30:38 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 01:30:39 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 01:30:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab04e3c3c62bf8cf07ba3916ff59e606844ca4ac48599a4d4c66b143ba9e7ff`  
		Last Modified: Tue, 18 Jun 2019 01:31:20 GMT  
		Size: 101.9 MB (101905041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0106b7c9b768e7a3971d120ceeeef1da525193df539cedebc129ff8ed38843`  
		Last Modified: Tue, 18 Jun 2019 01:30:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd180994c3c40cd7bba9b483fe377ce93b3aed5c1d7c3cd0c3d3e611c1fabf4`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce10142e6f3c8cc5f0ec3292acfedcf65324390b92ffaf9a90f3b3637b5cd9e`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 569.1 KB (569081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50eb4e47e1234fbd1921d497755f8da190ba764c27b3627a4c4f2f1d29f62e1`  
		Last Modified: Tue, 18 Jun 2019 01:31:03 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039838d002136b49b8c8fe8f92f5ad54b1735ba353aa7366d8b31e72dabcb94`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 7.6 KB (7560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcb9f8e7a89e7d3602cac0ab76e5ce6ab0a913f81a7c0d0da639f9c7f249e3`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1cab4e50e33633a0bd58cd358ed00b99d9017d1acf088f13cdc431dd09b3fc05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215631318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547cc6dbf0e061f591144318a0e4bce9814a12c8a4677ec556c7ad6f2c00f96`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:01:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 22:02:11 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:02:14 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 22:02:16 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 22:02:25 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 22:03:29 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:32 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 22:03:35 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 22:03:37 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 22:03:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc92279742e94523473d4ebc6b845814d605b2f40963c731e8349f57a49a6d5a`  
		Last Modified: Tue, 18 Jun 2019 22:09:58 GMT  
		Size: 92.8 MB (92838464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4a63e7d6af3165babba8d5d65a44b926484803cae594ba717d54e54313bf9`  
		Last Modified: Tue, 18 Jun 2019 22:09:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f233dfb933d3876fc753a6e30462c4d6917e9faf26728fa365598491b7ac637`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd8567053211cc3307f31922a2ae2d08196146ca3ef69be8e87a3b626b0336`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdf4819853fe7c07402ee4015980c31b855cc14cdfde3201d0d7b37885ca5d`  
		Last Modified: Tue, 18 Jun 2019 22:10:26 GMT  
		Size: 98.5 MB (98503922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e5190f41a8f646aa59673c37acf37183bf37989c5bafeeef9347dcf7f74d4`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ab76957ade8c80d479673bcbda644d0b50133ba49db46c121a135958cf1d5`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:5215e887de3d84fa959949bbf3c0762f62dac940a10b129f487d6bbca35b099f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226551665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68103550ce599e10e8c279c6d3b6849c03a812440e12bf5dfc5809be898d63a9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:47:46 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:50:13 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:50:18 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:50:28 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:50:30 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:50:32 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:50:34 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:50:36 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:50:37 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:50:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:51:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:51:47 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:51:47 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:51:48 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:51:50 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:51:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53507aa91c369cbc0acedaaa960bc139d1797a805e01dfb2d32ab1916f9231fd`  
		Last Modified: Mon, 17 Jun 2019 23:53:13 GMT  
		Size: 94.9 MB (94938228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf033f0b5e52fb35fb70f7f332bd4b8d188fbf452b4b08b60f597ba56445720`  
		Last Modified: Mon, 17 Jun 2019 23:52:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50633185561df55ffe2032b93183210e007dce454d7e74d0dddf0c1fffb857cf`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48d24f130e5cebac121df0b0ff33bfa70251ef2e52a927414c12ca30fe50693`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 537.9 KB (537895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f86cc875b17faca4d5c6f1ddcc85deeba9fc5bbaee6bda5052c8befafdb064`  
		Last Modified: Mon, 17 Jun 2019 23:52:53 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda0594ad860f771357e0d598a069d1a4593b5fb8bf0d45813631faba4d8f6`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5c5228074e04cd8c4dc4ba6a473f1c66c1842e1afd76fcfc75e59440852b`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
