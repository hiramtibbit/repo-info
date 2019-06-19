<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.4`](#bonita784)
-	[`bonita:7.9`](#bonita79)
-	[`bonita:7.9.0`](#bonita790)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.8`

```console
$ docker pull bonita@sha256:20abd9309fb9193d3064c44a96243758118600731d5e95a520c0c7e4a66d9e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:98458a2aea8c3f3781b50d6eabeed7d17cf016f32df7286da9566829ce16b052
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221345714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb8a49767da15f72ec5a4a11d92b74884444141a2e6987bebc167acfacd752f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:45:53 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 02:46:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:46:36 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 02:46:36 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 02:46:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 19 Jun 2019 02:46:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 02:46:39 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 02:46:39 GMT
ARG TOMCAT_VERSION
# Wed, 19 Jun 2019 02:46:39 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 02:46:39 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 02:46:39 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 19 Jun 2019 02:46:40 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 19 Jun 2019 02:46:40 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 19 Jun 2019 02:46:40 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 19 Jun 2019 02:46:48 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 02:46:49 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 02:46:51 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 19 Jun 2019 02:46:51 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 02:46:51 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 19 Jun 2019 02:46:51 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 19 Jun 2019 02:46:51 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 02:46:52 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff9b841869cef0b55ea027d7f6f2b07b9b41f022f70017650d44bc20dd3d9c0`  
		Last Modified: Wed, 19 Jun 2019 02:48:35 GMT  
		Size: 82.8 MB (82826220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c6944ff885f18ac4352c53468fc26aa42c6d6d7356078d597cd0b21bc967a`  
		Last Modified: Wed, 19 Jun 2019 02:48:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c974f66a7c9d72142e686052b24f1ad93d8fa8209e01b5adf3000189cb3a73a0`  
		Last Modified: Wed, 19 Jun 2019 02:48:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6961f6ef420304fdc4632c5bc12df9308525f68bffb78c7b7a075481e9631f`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4fd399b7422e9be0bc54b20d55966e6b7b28c876cd935bd082da940cfd6faa`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8973e6892fcaab284a5e8463139e65193d21728ce402af8643b6872eab6ac560`  
		Last Modified: Wed, 19 Jun 2019 02:48:21 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb6a24693334bc25e5f4cc838c34a54812829f7d27e584c25aae227ff76d466`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e0eeb93f1ce173ea9ff5dee57548e15eef0a7209fc651611178dec5dce4317`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 1.7 KB (1665 bytes)  
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
$ docker pull bonita@sha256:62c0b0644c0d2ec1adb804fd890a0baa4850f719d0389d36bd67d861243c0006
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217978252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f02204ed6ebf6c5a568068027e95df39bcb4df6de90ca9d12872d0ff1b26b2d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:50:20 GMT
ADD file:bb7fa17cc95ca89abe7a1b93077479764f75ee18108ec44141aaff4d2a1c6e7d in / 
# Tue, 18 Jun 2019 22:50:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:03:58 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 00:07:08 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:07:17 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 00:07:26 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 00:07:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 19 Jun 2019 00:07:44 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 00:07:49 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 00:07:51 GMT
ARG TOMCAT_VERSION
# Wed, 19 Jun 2019 00:07:54 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 00:07:57 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 00:08:01 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 19 Jun 2019 00:08:04 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 19 Jun 2019 00:08:09 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 19 Jun 2019 00:08:13 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 19 Jun 2019 00:09:07 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 00:09:14 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 00:09:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 19 Jun 2019 00:09:24 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 00:09:25 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 19 Jun 2019 00:09:26 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 19 Jun 2019 00:09:28 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 00:09:30 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1b0f236ed1ddec38971bf51256ce70e6672ebc41b9d7544e3f278adf3bda5373`  
		Last Modified: Tue, 18 Jun 2019 22:52:50 GMT  
		Size: 46.0 MB (45976401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d122a84ecd3a18e9b734692549cc4536a3bd6c4ef8ea05527403a57c1232d1cc`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf57bfa9cc2bbbd897299e6df30a2374ffcbd35a3bbde6ab9130c888321c4663`  
		Last Modified: Tue, 18 Jun 2019 22:52:36 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb32e0af70bba6cc9b0b95d580545ed84bebf7dcdae99d34ca6a0cd9acc41f5f`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d56dc4dea1dc9b402d5bbab57f2de5700837cc5c252c190860ffdc93edd1a`  
		Last Modified: Wed, 19 Jun 2019 00:15:22 GMT  
		Size: 77.4 MB (77350825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507fa1ddde7ed12f3624b23d69641f26782890fae143084e03b6aef4353fbb4c`  
		Last Modified: Wed, 19 Jun 2019 00:15:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6751a1e53be06eb13a983ea2ddf46d3e9451153cfc2dd6bfa29f607d4235841`  
		Last Modified: Wed, 19 Jun 2019 00:15:02 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af00e888de41681fa65c8b041e0e1852cb00b86b5ac232051b7a3d6c6a8adbcb`  
		Last Modified: Wed, 19 Jun 2019 00:15:00 GMT  
		Size: 140.6 KB (140616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af69680712acf0ef72ff664e964e5be14466a86bf86b713521dbae43850062f`  
		Last Modified: Wed, 19 Jun 2019 00:15:00 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea11608da2bcc21c05c5e15eb6d762823eb748c0ef62044217b03314d2c17bf`  
		Last Modified: Wed, 19 Jun 2019 00:15:08 GMT  
		Size: 94.0 MB (94028659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da8cbd552e2ce25507022a1bc1f39f2fb102d135ca1c26e679674651c3880fa`  
		Last Modified: Wed, 19 Jun 2019 00:14:59 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51feca5a5fd3c33d780e9dfaed9ee60ceb446b2a14b16a66034659867164e91`  
		Last Modified: Wed, 19 Jun 2019 00:14:59 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.4`

```console
$ docker pull bonita@sha256:20abd9309fb9193d3064c44a96243758118600731d5e95a520c0c7e4a66d9e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.4` - linux; amd64

```console
$ docker pull bonita@sha256:98458a2aea8c3f3781b50d6eabeed7d17cf016f32df7286da9566829ce16b052
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221345714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb8a49767da15f72ec5a4a11d92b74884444141a2e6987bebc167acfacd752f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:45:53 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 02:46:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:46:36 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 02:46:36 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 02:46:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 19 Jun 2019 02:46:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 02:46:39 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 02:46:39 GMT
ARG TOMCAT_VERSION
# Wed, 19 Jun 2019 02:46:39 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 02:46:39 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 02:46:39 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 19 Jun 2019 02:46:40 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 19 Jun 2019 02:46:40 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 19 Jun 2019 02:46:40 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 19 Jun 2019 02:46:48 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 02:46:49 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 02:46:51 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 19 Jun 2019 02:46:51 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 02:46:51 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 19 Jun 2019 02:46:51 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 19 Jun 2019 02:46:51 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 02:46:52 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff9b841869cef0b55ea027d7f6f2b07b9b41f022f70017650d44bc20dd3d9c0`  
		Last Modified: Wed, 19 Jun 2019 02:48:35 GMT  
		Size: 82.8 MB (82826220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794c6944ff885f18ac4352c53468fc26aa42c6d6d7356078d597cd0b21bc967a`  
		Last Modified: Wed, 19 Jun 2019 02:48:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c974f66a7c9d72142e686052b24f1ad93d8fa8209e01b5adf3000189cb3a73a0`  
		Last Modified: Wed, 19 Jun 2019 02:48:17 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6961f6ef420304fdc4632c5bc12df9308525f68bffb78c7b7a075481e9631f`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4fd399b7422e9be0bc54b20d55966e6b7b28c876cd935bd082da940cfd6faa`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8973e6892fcaab284a5e8463139e65193d21728ce402af8643b6872eab6ac560`  
		Last Modified: Wed, 19 Jun 2019 02:48:21 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb6a24693334bc25e5f4cc838c34a54812829f7d27e584c25aae227ff76d466`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e0eeb93f1ce173ea9ff5dee57548e15eef0a7209fc651611178dec5dce4317`  
		Last Modified: Wed, 19 Jun 2019 02:48:16 GMT  
		Size: 1.7 KB (1665 bytes)  
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
$ docker pull bonita@sha256:62c0b0644c0d2ec1adb804fd890a0baa4850f719d0389d36bd67d861243c0006
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217978252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f02204ed6ebf6c5a568068027e95df39bcb4df6de90ca9d12872d0ff1b26b2d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:50:20 GMT
ADD file:bb7fa17cc95ca89abe7a1b93077479764f75ee18108ec44141aaff4d2a1c6e7d in / 
# Tue, 18 Jun 2019 22:50:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:03:58 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 00:07:08 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:07:17 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 00:07:26 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 00:07:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 19 Jun 2019 00:07:44 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 00:07:49 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 00:07:51 GMT
ARG TOMCAT_VERSION
# Wed, 19 Jun 2019 00:07:54 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 00:07:57 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 00:08:01 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 19 Jun 2019 00:08:04 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 19 Jun 2019 00:08:09 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 19 Jun 2019 00:08:13 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 19 Jun 2019 00:09:07 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 00:09:14 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 19 Jun 2019 00:09:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 19 Jun 2019 00:09:24 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 00:09:25 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 19 Jun 2019 00:09:26 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 19 Jun 2019 00:09:28 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 00:09:30 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1b0f236ed1ddec38971bf51256ce70e6672ebc41b9d7544e3f278adf3bda5373`  
		Last Modified: Tue, 18 Jun 2019 22:52:50 GMT  
		Size: 46.0 MB (45976401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d122a84ecd3a18e9b734692549cc4536a3bd6c4ef8ea05527403a57c1232d1cc`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf57bfa9cc2bbbd897299e6df30a2374ffcbd35a3bbde6ab9130c888321c4663`  
		Last Modified: Tue, 18 Jun 2019 22:52:36 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb32e0af70bba6cc9b0b95d580545ed84bebf7dcdae99d34ca6a0cd9acc41f5f`  
		Last Modified: Tue, 18 Jun 2019 22:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3d56dc4dea1dc9b402d5bbab57f2de5700837cc5c252c190860ffdc93edd1a`  
		Last Modified: Wed, 19 Jun 2019 00:15:22 GMT  
		Size: 77.4 MB (77350825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507fa1ddde7ed12f3624b23d69641f26782890fae143084e03b6aef4353fbb4c`  
		Last Modified: Wed, 19 Jun 2019 00:15:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6751a1e53be06eb13a983ea2ddf46d3e9451153cfc2dd6bfa29f607d4235841`  
		Last Modified: Wed, 19 Jun 2019 00:15:02 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af00e888de41681fa65c8b041e0e1852cb00b86b5ac232051b7a3d6c6a8adbcb`  
		Last Modified: Wed, 19 Jun 2019 00:15:00 GMT  
		Size: 140.6 KB (140616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af69680712acf0ef72ff664e964e5be14466a86bf86b713521dbae43850062f`  
		Last Modified: Wed, 19 Jun 2019 00:15:00 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea11608da2bcc21c05c5e15eb6d762823eb748c0ef62044217b03314d2c17bf`  
		Last Modified: Wed, 19 Jun 2019 00:15:08 GMT  
		Size: 94.0 MB (94028659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da8cbd552e2ce25507022a1bc1f39f2fb102d135ca1c26e679674651c3880fa`  
		Last Modified: Wed, 19 Jun 2019 00:14:59 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51feca5a5fd3c33d780e9dfaed9ee60ceb446b2a14b16a66034659867164e91`  
		Last Modified: Wed, 19 Jun 2019 00:14:59 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.9`

```console
$ docker pull bonita@sha256:e19db706a3d96c58bcb6443fe0d8ba44778efd4b0ad03aea28c56ae06e8f590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.9` - linux; amd64

```console
$ docker pull bonita@sha256:d4b4b6e409d1a899aeee1646c8b0ecb92e98dec43500180ebef4aedd460fb7e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.7 MB (227710173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db5c89320f50556bbf8975982fbb65ace071d652ba7887268e8115de9910ef4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:46:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 02:47:40 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:47:41 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 02:47:42 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 02:47:48 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 02:47:49 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 02:47:57 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:47:59 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:48:00 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 02:48:00 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 02:48:00 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 02:48:01 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 02:48:01 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 02:48:01 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cded6615a931a18469f818c43ec639d39ca1710b637cbaa30c8b23411127f5`  
		Last Modified: Wed, 19 Jun 2019 02:49:01 GMT  
		Size: 101.9 MB (101905089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223bbc80d694ca9312ba5400659d8889892a060f95c01f41b29c353795373f97`  
		Last Modified: Wed, 19 Jun 2019 02:48:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69adecf4827978f0c64cd895d6db17b27f73278f58c6cb206614ebc84a5aa2`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113851937c3f4b9354fe336aa237bbfffec478618625edd1dd0f188fce03f4bf`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 569.1 KB (569107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78effd3049d0bd1947d809e6ec15843af93c114e8bd66eba19d17c0813239e8e`  
		Last Modified: Wed, 19 Jun 2019 02:48:45 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464290b79cf6c5ac8002186ae39c7033a857f540390abb447021bc5d493f8f16`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 7.6 KB (7559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3414feb676ccb848a108bd7e8249a46e95b36ff7f72efd1bea9225870b7f17`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.6 KB (1623 bytes)  
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
$ docker pull bonita@sha256:7b3a071a29e16730ea0c90aac59b8aaeac58d6fadf58cc5bad26be3ab7649706
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224417679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dc078fe76ca4ba1456867c932298f577e0cf4ee5794da95e8d1ea0014192cb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:09:41 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 00:12:24 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:12:33 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 00:12:40 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 00:12:47 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 00:12:50 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 00:12:56 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 00:13:01 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 00:13:03 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 00:13:04 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 00:13:06 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 00:14:06 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 00:14:30 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 00:14:34 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 00:14:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 00:14:39 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 00:14:43 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ecbf18ae29b0db5165c6deb40f2fdbbb41cd079e36d08ef5a2ecf2cec5bcc`  
		Last Modified: Wed, 19 Jun 2019 00:16:04 GMT  
		Size: 94.9 MB (94938627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1c9c5069e45760053accf3353de74d7424a579dd00b3e72bcda408a86ee385`  
		Last Modified: Wed, 19 Jun 2019 00:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6242bfaac5c2f07be660a72563a347e9a9578fc894583d223eea52f6c57da02`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c619e9c6138790a6c24627f0c816cd010a33e2df985c0d803a4b9b8f8c0e3273`  
		Last Modified: Wed, 19 Jun 2019 00:15:37 GMT  
		Size: 537.9 KB (537894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df06d49b668f6b04dec9edc781144cc7a15c586974e724c3576ec9f4bc9ca6`  
		Last Modified: Wed, 19 Jun 2019 00:15:46 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e838a0573a42746de494c4ccdc5ca1b2e26b8d8add6a292d95e2238811027`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 7.6 KB (7590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64d3756fe0b10d3e42545e74336832aaa497bd8161f510a41f0a75a2f9b53c2`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.9.0`

```console
$ docker pull bonita@sha256:e19db706a3d96c58bcb6443fe0d8ba44778efd4b0ad03aea28c56ae06e8f590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.9.0` - linux; amd64

```console
$ docker pull bonita@sha256:d4b4b6e409d1a899aeee1646c8b0ecb92e98dec43500180ebef4aedd460fb7e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.7 MB (227710173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db5c89320f50556bbf8975982fbb65ace071d652ba7887268e8115de9910ef4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:46:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 02:47:40 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:47:41 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 02:47:42 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 02:47:48 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 02:47:49 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 02:47:57 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:47:59 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:48:00 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 02:48:00 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 02:48:00 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 02:48:01 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 02:48:01 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 02:48:01 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cded6615a931a18469f818c43ec639d39ca1710b637cbaa30c8b23411127f5`  
		Last Modified: Wed, 19 Jun 2019 02:49:01 GMT  
		Size: 101.9 MB (101905089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223bbc80d694ca9312ba5400659d8889892a060f95c01f41b29c353795373f97`  
		Last Modified: Wed, 19 Jun 2019 02:48:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69adecf4827978f0c64cd895d6db17b27f73278f58c6cb206614ebc84a5aa2`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113851937c3f4b9354fe336aa237bbfffec478618625edd1dd0f188fce03f4bf`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 569.1 KB (569107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78effd3049d0bd1947d809e6ec15843af93c114e8bd66eba19d17c0813239e8e`  
		Last Modified: Wed, 19 Jun 2019 02:48:45 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464290b79cf6c5ac8002186ae39c7033a857f540390abb447021bc5d493f8f16`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 7.6 KB (7559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3414feb676ccb848a108bd7e8249a46e95b36ff7f72efd1bea9225870b7f17`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.6 KB (1623 bytes)  
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
$ docker pull bonita@sha256:7b3a071a29e16730ea0c90aac59b8aaeac58d6fadf58cc5bad26be3ab7649706
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224417679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dc078fe76ca4ba1456867c932298f577e0cf4ee5794da95e8d1ea0014192cb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:09:41 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 00:12:24 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:12:33 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 00:12:40 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 00:12:47 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 00:12:50 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 00:12:56 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 00:13:01 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 00:13:03 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 00:13:04 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 00:13:06 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 00:14:06 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 00:14:30 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 00:14:34 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 00:14:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 00:14:39 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 00:14:43 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ecbf18ae29b0db5165c6deb40f2fdbbb41cd079e36d08ef5a2ecf2cec5bcc`  
		Last Modified: Wed, 19 Jun 2019 00:16:04 GMT  
		Size: 94.9 MB (94938627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1c9c5069e45760053accf3353de74d7424a579dd00b3e72bcda408a86ee385`  
		Last Modified: Wed, 19 Jun 2019 00:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6242bfaac5c2f07be660a72563a347e9a9578fc894583d223eea52f6c57da02`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c619e9c6138790a6c24627f0c816cd010a33e2df985c0d803a4b9b8f8c0e3273`  
		Last Modified: Wed, 19 Jun 2019 00:15:37 GMT  
		Size: 537.9 KB (537894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df06d49b668f6b04dec9edc781144cc7a15c586974e724c3576ec9f4bc9ca6`  
		Last Modified: Wed, 19 Jun 2019 00:15:46 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e838a0573a42746de494c4ccdc5ca1b2e26b8d8add6a292d95e2238811027`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 7.6 KB (7590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64d3756fe0b10d3e42545e74336832aaa497bd8161f510a41f0a75a2f9b53c2`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:e19db706a3d96c58bcb6443fe0d8ba44778efd4b0ad03aea28c56ae06e8f590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:d4b4b6e409d1a899aeee1646c8b0ecb92e98dec43500180ebef4aedd460fb7e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.7 MB (227710173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db5c89320f50556bbf8975982fbb65ace071d652ba7887268e8115de9910ef4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:46:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 02:47:40 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:47:41 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 02:47:42 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 02:47:48 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 02:47:49 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 02:47:57 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:47:59 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:48:00 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 02:48:00 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 02:48:00 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 02:48:01 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 02:48:01 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 02:48:01 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cded6615a931a18469f818c43ec639d39ca1710b637cbaa30c8b23411127f5`  
		Last Modified: Wed, 19 Jun 2019 02:49:01 GMT  
		Size: 101.9 MB (101905089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223bbc80d694ca9312ba5400659d8889892a060f95c01f41b29c353795373f97`  
		Last Modified: Wed, 19 Jun 2019 02:48:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69adecf4827978f0c64cd895d6db17b27f73278f58c6cb206614ebc84a5aa2`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113851937c3f4b9354fe336aa237bbfffec478618625edd1dd0f188fce03f4bf`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 569.1 KB (569107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78effd3049d0bd1947d809e6ec15843af93c114e8bd66eba19d17c0813239e8e`  
		Last Modified: Wed, 19 Jun 2019 02:48:45 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464290b79cf6c5ac8002186ae39c7033a857f540390abb447021bc5d493f8f16`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 7.6 KB (7559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3414feb676ccb848a108bd7e8249a46e95b36ff7f72efd1bea9225870b7f17`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.6 KB (1623 bytes)  
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
$ docker pull bonita@sha256:7b3a071a29e16730ea0c90aac59b8aaeac58d6fadf58cc5bad26be3ab7649706
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224417679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dc078fe76ca4ba1456867c932298f577e0cf4ee5794da95e8d1ea0014192cb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:09:41 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 00:12:24 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:12:33 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 00:12:40 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 00:12:47 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 00:12:50 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 00:12:56 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 00:13:01 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 00:13:03 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 00:13:04 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 00:13:06 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 00:14:06 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 00:14:30 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 00:14:34 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 00:14:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 00:14:39 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 00:14:43 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ecbf18ae29b0db5165c6deb40f2fdbbb41cd079e36d08ef5a2ecf2cec5bcc`  
		Last Modified: Wed, 19 Jun 2019 00:16:04 GMT  
		Size: 94.9 MB (94938627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1c9c5069e45760053accf3353de74d7424a579dd00b3e72bcda408a86ee385`  
		Last Modified: Wed, 19 Jun 2019 00:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6242bfaac5c2f07be660a72563a347e9a9578fc894583d223eea52f6c57da02`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c619e9c6138790a6c24627f0c816cd010a33e2df985c0d803a4b9b8f8c0e3273`  
		Last Modified: Wed, 19 Jun 2019 00:15:37 GMT  
		Size: 537.9 KB (537894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df06d49b668f6b04dec9edc781144cc7a15c586974e724c3576ec9f4bc9ca6`  
		Last Modified: Wed, 19 Jun 2019 00:15:46 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e838a0573a42746de494c4ccdc5ca1b2e26b8d8add6a292d95e2238811027`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 7.6 KB (7590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64d3756fe0b10d3e42545e74336832aaa497bd8161f510a41f0a75a2f9b53c2`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
