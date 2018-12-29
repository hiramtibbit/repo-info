<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.5`](#bonita775)
-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.0`](#bonita780)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.7`

```console
$ docker pull bonita@sha256:34f9e5f07f7f4a55e20855afe97aceca959f8a733b65603061633774f3d6d7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:0e451ae695abc437c7f1b977510a5e0b98c4640245880d7100288d94bfbf3f0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214769418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71e79df24699748ed383f2fac502ba67805c2be314a377e63433b1edc2cefec`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:42:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 28 Dec 2018 23:43:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:43:36 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 28 Dec 2018 23:43:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 28 Dec 2018 23:43:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Dec 2018 23:43:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG TOMCAT_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_SHA256
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_URL
# Fri, 28 Dec 2018 23:43:40 GMT
ENV BONITA_VERSION=7.7.5
# Fri, 28 Dec 2018 23:43:41 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 28 Dec 2018 23:43:41 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Fri, 28 Dec 2018 23:43:41 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Fri, 28 Dec 2018 23:43:49 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:43:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:43:52 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 28 Dec 2018 23:43:52 GMT
VOLUME [/opt/bonita]
# Fri, 28 Dec 2018 23:43:53 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Fri, 28 Dec 2018 23:43:53 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Fri, 28 Dec 2018 23:43:53 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 23:43:53 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c59679fdbf59eb0ffa2a1c81187a215ddcadcc30219e67d31f24ebc15ee4128`  
		Last Modified: Fri, 28 Dec 2018 23:44:44 GMT  
		Size: 82.9 MB (82854534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee8c3fb73a1c5db284adbc7f5acc0bbeec5f6752e71e1fc6a682b9a82d82694`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d066807956a3ad31734860c81c0502c8fae532f3946a67d8d3770376c6e4227f`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48a846d00d24db624c5221a4390fc07bc97f2ff749c321202cbd99e2f98e2`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aea9228da94a87c7b22735196ba665ae8f259811a452eacabbd2ddb56f6ead`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f382f9256e15f962ab0e8ca4cf9a854b0d4b3bc85c9f9f5a6659ba1842b57989`  
		Last Modified: Fri, 28 Dec 2018 23:44:37 GMT  
		Size: 87.8 MB (87818773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebf0f559d96496e661ea768935164fdab8d04d00284fe5579afe2ce26840a8c`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca4a972788bde0d150f552a446dd788168c55b33445f2c238b78e511b52cdd9`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:412cb3055ef9293e2f23d16603ebff6bef21a3077bc365763e88ed30cd4857c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201764394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71140bce0a46a6f91fa5a2f2f84b03cdbdf6f3e46297bb7c792ddbd59179481`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:41 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 10:33:45 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 10:33:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 10:33:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 10:33:55 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 10:33:56 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 10:33:58 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 10:33:59 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 10:34:00 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 29 Dec 2018 10:34:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 29 Dec 2018 10:34:03 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 29 Dec 2018 10:34:04 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 29 Dec 2018 10:34:26 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:34:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:34:43 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 10:34:46 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 10:34:49 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 29 Dec 2018 10:34:50 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 29 Dec 2018 10:34:53 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:34:57 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae02e069d15187550828b017b028d4d9784c9743f06c4cebf79ed049f1187b8`  
		Last Modified: Sat, 29 Dec 2018 10:36:42 GMT  
		Size: 73.8 MB (73817090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1726af2fcfc02fff927f39a313e4c51ce9e9f7939936e0b00d10ffc81ba4dd`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59d5973b5a05a4edda83e784d6b4e7504fcf35329c670351efae42735f41789`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be21d0368f0ec290eabd48510b32ee4cd7b001d5da40e991c1f3d5f3393e4f`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeb24ecd305a771b7a61669784a802591d5aacb70483b5cf90820267b1abbae`  
		Last Modified: Sat, 29 Dec 2018 10:36:15 GMT  
		Size: 468.8 KB (468793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07da3681ea7b4c487006828fca2fa09f482d88c5220187c173b927296f62ad1`  
		Last Modified: Sat, 29 Dec 2018 10:36:25 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9600aa58882ae5ea1399a6fd531ab3b2de956e69cfed93f726488ecb2591283d`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218a3932615ff6a5c60865f1e74faf9da61a60230d301d91bc05ba331c99a733`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:25dc3f41f5fed69f4a58f620c605610b9f8bf6de52f55ba5b0b508244c18260e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211481823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7df875162b6ec049339c2c45b849568fe1e877e4978467d1009d8d04d229a6c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:42:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 09:45:17 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:45:25 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 09:45:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 09:45:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 09:45:51 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 09:45:53 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 09:45:55 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 09:45:57 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 09:45:58 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 09:46:00 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 29 Dec 2018 09:46:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 29 Dec 2018 09:46:05 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 29 Dec 2018 09:46:08 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 29 Dec 2018 09:47:20 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:47:26 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:47:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 09:47:34 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 09:47:36 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 29 Dec 2018 09:47:37 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 29 Dec 2018 09:47:39 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 09:47:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34b1baefa847db83eb3897308a668ce8b4d9eca9b010be9d1eb5b9317dce6c`  
		Last Modified: Sat, 29 Dec 2018 09:49:40 GMT  
		Size: 77.3 MB (77321086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657747ee289f7c04c9944561b45cc7cae98d21952987d9069fc4b378b58feb92`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373bc6648cbfe1fc3b46ac43dd9f304f8218b801c924728764144f436b5fa1a`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261a2e478f364e73a4a0cbf6a1936aaa05edd034d37d2aaa9199626d837043f`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73184953c05820a8c17e0626678e82bc9b8d0ff150b2bd54f1ee7d4f942558aa`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 469.9 KB (469921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249b13fab6559fcff67039848e4e4a6dc50b2713e735a4e7d2d9138dc24871cd`  
		Last Modified: Sat, 29 Dec 2018 09:49:29 GMT  
		Size: 87.8 MB (87818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9380282a832c3a36330f104adb6fa9a5bf5c83f2bddcb45013bb591183ed98e9`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0e7d0377546450b7230c554d4a63d54d9c383ce60565d390e67bc8779e6ca5`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.5`

```console
$ docker pull bonita@sha256:34f9e5f07f7f4a55e20855afe97aceca959f8a733b65603061633774f3d6d7b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7.5` - linux; amd64

```console
$ docker pull bonita@sha256:0e451ae695abc437c7f1b977510a5e0b98c4640245880d7100288d94bfbf3f0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214769418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f71e79df24699748ed383f2fac502ba67805c2be314a377e63433b1edc2cefec`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:42:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 28 Dec 2018 23:43:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:43:36 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 28 Dec 2018 23:43:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 28 Dec 2018 23:43:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Dec 2018 23:43:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG TOMCAT_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_SHA256
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_URL
# Fri, 28 Dec 2018 23:43:40 GMT
ENV BONITA_VERSION=7.7.5
# Fri, 28 Dec 2018 23:43:41 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 28 Dec 2018 23:43:41 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Fri, 28 Dec 2018 23:43:41 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Fri, 28 Dec 2018 23:43:49 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:43:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:43:52 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 28 Dec 2018 23:43:52 GMT
VOLUME [/opt/bonita]
# Fri, 28 Dec 2018 23:43:53 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Fri, 28 Dec 2018 23:43:53 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Fri, 28 Dec 2018 23:43:53 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 23:43:53 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c59679fdbf59eb0ffa2a1c81187a215ddcadcc30219e67d31f24ebc15ee4128`  
		Last Modified: Fri, 28 Dec 2018 23:44:44 GMT  
		Size: 82.9 MB (82854534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee8c3fb73a1c5db284adbc7f5acc0bbeec5f6752e71e1fc6a682b9a82d82694`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d066807956a3ad31734860c81c0502c8fae532f3946a67d8d3770376c6e4227f`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48a846d00d24db624c5221a4390fc07bc97f2ff749c321202cbd99e2f98e2`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aea9228da94a87c7b22735196ba665ae8f259811a452eacabbd2ddb56f6ead`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f382f9256e15f962ab0e8ca4cf9a854b0d4b3bc85c9f9f5a6659ba1842b57989`  
		Last Modified: Fri, 28 Dec 2018 23:44:37 GMT  
		Size: 87.8 MB (87818773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ebf0f559d96496e661ea768935164fdab8d04d00284fe5579afe2ce26840a8c`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca4a972788bde0d150f552a446dd788168c55b33445f2c238b78e511b52cdd9`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:412cb3055ef9293e2f23d16603ebff6bef21a3077bc365763e88ed30cd4857c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201764394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71140bce0a46a6f91fa5a2f2f84b03cdbdf6f3e46297bb7c792ddbd59179481`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:41 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 10:33:45 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 10:33:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 10:33:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 10:33:55 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 10:33:56 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 10:33:58 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 10:33:59 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 10:34:00 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 29 Dec 2018 10:34:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 29 Dec 2018 10:34:03 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 29 Dec 2018 10:34:04 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 29 Dec 2018 10:34:26 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:34:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:34:43 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 10:34:46 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 10:34:49 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 29 Dec 2018 10:34:50 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 29 Dec 2018 10:34:53 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:34:57 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae02e069d15187550828b017b028d4d9784c9743f06c4cebf79ed049f1187b8`  
		Last Modified: Sat, 29 Dec 2018 10:36:42 GMT  
		Size: 73.8 MB (73817090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1726af2fcfc02fff927f39a313e4c51ce9e9f7939936e0b00d10ffc81ba4dd`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59d5973b5a05a4edda83e784d6b4e7504fcf35329c670351efae42735f41789`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be21d0368f0ec290eabd48510b32ee4cd7b001d5da40e991c1f3d5f3393e4f`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeb24ecd305a771b7a61669784a802591d5aacb70483b5cf90820267b1abbae`  
		Last Modified: Sat, 29 Dec 2018 10:36:15 GMT  
		Size: 468.8 KB (468793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07da3681ea7b4c487006828fca2fa09f482d88c5220187c173b927296f62ad1`  
		Last Modified: Sat, 29 Dec 2018 10:36:25 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9600aa58882ae5ea1399a6fd531ab3b2de956e69cfed93f726488ecb2591283d`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218a3932615ff6a5c60865f1e74faf9da61a60230d301d91bc05ba331c99a733`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; ppc64le

```console
$ docker pull bonita@sha256:25dc3f41f5fed69f4a58f620c605610b9f8bf6de52f55ba5b0b508244c18260e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211481823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7df875162b6ec049339c2c45b849568fe1e877e4978467d1009d8d04d229a6c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:42:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 09:45:17 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:45:25 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 09:45:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 09:45:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 09:45:51 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 09:45:53 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 09:45:55 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 09:45:57 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 09:45:58 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 09:46:00 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 29 Dec 2018 09:46:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 29 Dec 2018 09:46:05 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 29 Dec 2018 09:46:08 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 29 Dec 2018 09:47:20 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:47:26 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:47:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 09:47:34 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 09:47:36 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 29 Dec 2018 09:47:37 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 29 Dec 2018 09:47:39 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 09:47:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34b1baefa847db83eb3897308a668ce8b4d9eca9b010be9d1eb5b9317dce6c`  
		Last Modified: Sat, 29 Dec 2018 09:49:40 GMT  
		Size: 77.3 MB (77321086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657747ee289f7c04c9944561b45cc7cae98d21952987d9069fc4b378b58feb92`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373bc6648cbfe1fc3b46ac43dd9f304f8218b801c924728764144f436b5fa1a`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261a2e478f364e73a4a0cbf6a1936aaa05edd034d37d2aaa9199626d837043f`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73184953c05820a8c17e0626678e82bc9b8d0ff150b2bd54f1ee7d4f942558aa`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 469.9 KB (469921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249b13fab6559fcff67039848e4e4a6dc50b2713e735a4e7d2d9138dc24871cd`  
		Last Modified: Sat, 29 Dec 2018 09:49:29 GMT  
		Size: 87.8 MB (87818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9380282a832c3a36330f104adb6fa9a5bf5c83f2bddcb45013bb591183ed98e9`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0e7d0377546450b7230c554d4a63d54d9c383ce60565d390e67bc8779e6ca5`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8`

```console
$ docker pull bonita@sha256:cc4aa2a1f198715e6229a24468272e9d2f0a74cfe15ab38f0a2facef847d41f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:8b54a5b8d4528a521c14d64c049d0538b4aaa063a9a25a0405d0bfc27092b76c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217968082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a30cbc791581e53c725dcf5af85bfd68fbfcfc882dfe737c135c6a1dee839b`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:42:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 28 Dec 2018 23:43:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:43:36 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 28 Dec 2018 23:43:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 28 Dec 2018 23:43:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Dec 2018 23:43:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG TOMCAT_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_SHA256
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_URL
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_VERSION=7.8.0
# Fri, 28 Dec 2018 23:44:10 GMT
ENV TOMCAT_VERSION=8.5.34
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Fri, 28 Dec 2018 23:44:18 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:44:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:44:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 28 Dec 2018 23:44:20 GMT
VOLUME [/opt/bonita]
# Fri, 28 Dec 2018 23:44:21 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Fri, 28 Dec 2018 23:44:21 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Fri, 28 Dec 2018 23:44:21 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 23:44:21 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c59679fdbf59eb0ffa2a1c81187a215ddcadcc30219e67d31f24ebc15ee4128`  
		Last Modified: Fri, 28 Dec 2018 23:44:44 GMT  
		Size: 82.9 MB (82854534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee8c3fb73a1c5db284adbc7f5acc0bbeec5f6752e71e1fc6a682b9a82d82694`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d066807956a3ad31734860c81c0502c8fae532f3946a67d8d3770376c6e4227f`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48a846d00d24db624c5221a4390fc07bc97f2ff749c321202cbd99e2f98e2`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aea9228da94a87c7b22735196ba665ae8f259811a452eacabbd2ddb56f6ead`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd194ee652865fab5980a738940b875092fbc2ba8d4439b9dda33e0461cc58cb`  
		Last Modified: Fri, 28 Dec 2018 23:44:55 GMT  
		Size: 91.0 MB (91017456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb38c628bcd2c751c49be2d05e0d776cfff341a9e85b17e0d93ed35fc5a0059`  
		Last Modified: Fri, 28 Dec 2018 23:44:49 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57731cecdd74cacb375d9da7436b9fdf4b9b9c15f870e04dab47d345035f0e3`  
		Last Modified: Fri, 28 Dec 2018 23:44:50 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:61ba68e342cee41a8d5c0a0a525e298c4ef735d1923399fc2392caa3b668a7ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (204963047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8512063dc3c0164f214d2cdc6cf0434e5d865ceace3c9d87735407b8f43d0d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:41 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 10:33:45 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 10:33:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 10:33:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 10:33:55 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 10:33:56 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 10:33:58 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 10:33:59 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 10:35:06 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 29 Dec 2018 10:35:08 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 29 Dec 2018 10:35:12 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 29 Dec 2018 10:35:14 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 29 Dec 2018 10:35:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:35:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:35:40 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 10:35:41 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 10:35:43 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 29 Dec 2018 10:35:45 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 29 Dec 2018 10:35:47 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:35:56 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae02e069d15187550828b017b028d4d9784c9743f06c4cebf79ed049f1187b8`  
		Last Modified: Sat, 29 Dec 2018 10:36:42 GMT  
		Size: 73.8 MB (73817090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1726af2fcfc02fff927f39a313e4c51ce9e9f7939936e0b00d10ffc81ba4dd`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59d5973b5a05a4edda83e784d6b4e7504fcf35329c670351efae42735f41789`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be21d0368f0ec290eabd48510b32ee4cd7b001d5da40e991c1f3d5f3393e4f`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeb24ecd305a771b7a61669784a802591d5aacb70483b5cf90820267b1abbae`  
		Last Modified: Sat, 29 Dec 2018 10:36:15 GMT  
		Size: 468.8 KB (468793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d52e77f2018724c5eec9d1ff704218669abb3e7fa49df54a452bc7d33ce36`  
		Last Modified: Sat, 29 Dec 2018 10:37:02 GMT  
		Size: 91.0 MB (91017457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a3716776b757c5e283c9bef65890ac269ffb8a8eeb0dd27b73ddae634255af`  
		Last Modified: Sat, 29 Dec 2018 10:36:51 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1cbe0f51d4c76f66c5d5a5cb9a61413e902c8be9aebd3632904f9f4510026`  
		Last Modified: Sat, 29 Dec 2018 10:36:50 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:8920ca1384e2ccba9d2f9125911243c3165e0c438fc5c4baf3182ee367f71629
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214680479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e823dbcef357f59a61867c87231173caa5fb0fad4f6a0f13d6ece0c487f804`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:42:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 09:45:17 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:45:25 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 09:45:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 09:45:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 09:45:51 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 09:45:53 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 09:45:55 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 09:45:57 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 09:45:58 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 09:47:51 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 29 Dec 2018 09:47:53 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 29 Dec 2018 09:47:56 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 29 Dec 2018 09:47:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 29 Dec 2018 09:48:44 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:48:51 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:48:57 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 09:49:00 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 09:49:02 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 29 Dec 2018 09:49:03 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 29 Dec 2018 09:49:06 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 09:49:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34b1baefa847db83eb3897308a668ce8b4d9eca9b010be9d1eb5b9317dce6c`  
		Last Modified: Sat, 29 Dec 2018 09:49:40 GMT  
		Size: 77.3 MB (77321086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657747ee289f7c04c9944561b45cc7cae98d21952987d9069fc4b378b58feb92`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373bc6648cbfe1fc3b46ac43dd9f304f8218b801c924728764144f436b5fa1a`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261a2e478f364e73a4a0cbf6a1936aaa05edd034d37d2aaa9199626d837043f`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73184953c05820a8c17e0626678e82bc9b8d0ff150b2bd54f1ee7d4f942558aa`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 469.9 KB (469921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba106f6baa6d9809e479d9d7640817b6f8c0ed2045dae9d64400b19aaadff359`  
		Last Modified: Sat, 29 Dec 2018 09:49:58 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293d42a661444e532572242123a69429901214d82e622593d4a65359b7a3cb3e`  
		Last Modified: Sat, 29 Dec 2018 09:49:51 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6c022b8574d064fcd26317ed05a0209164e377a36352038e5aed8b385def03`  
		Last Modified: Sat, 29 Dec 2018 09:49:51 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.0`

```console
$ docker pull bonita@sha256:cc4aa2a1f198715e6229a24468272e9d2f0a74cfe15ab38f0a2facef847d41f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.0` - linux; amd64

```console
$ docker pull bonita@sha256:8b54a5b8d4528a521c14d64c049d0538b4aaa063a9a25a0405d0bfc27092b76c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217968082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a30cbc791581e53c725dcf5af85bfd68fbfcfc882dfe737c135c6a1dee839b`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:42:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 28 Dec 2018 23:43:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:43:36 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 28 Dec 2018 23:43:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 28 Dec 2018 23:43:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Dec 2018 23:43:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG TOMCAT_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_SHA256
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_URL
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_VERSION=7.8.0
# Fri, 28 Dec 2018 23:44:10 GMT
ENV TOMCAT_VERSION=8.5.34
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Fri, 28 Dec 2018 23:44:18 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:44:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:44:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 28 Dec 2018 23:44:20 GMT
VOLUME [/opt/bonita]
# Fri, 28 Dec 2018 23:44:21 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Fri, 28 Dec 2018 23:44:21 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Fri, 28 Dec 2018 23:44:21 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 23:44:21 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c59679fdbf59eb0ffa2a1c81187a215ddcadcc30219e67d31f24ebc15ee4128`  
		Last Modified: Fri, 28 Dec 2018 23:44:44 GMT  
		Size: 82.9 MB (82854534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee8c3fb73a1c5db284adbc7f5acc0bbeec5f6752e71e1fc6a682b9a82d82694`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d066807956a3ad31734860c81c0502c8fae532f3946a67d8d3770376c6e4227f`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48a846d00d24db624c5221a4390fc07bc97f2ff749c321202cbd99e2f98e2`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aea9228da94a87c7b22735196ba665ae8f259811a452eacabbd2ddb56f6ead`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd194ee652865fab5980a738940b875092fbc2ba8d4439b9dda33e0461cc58cb`  
		Last Modified: Fri, 28 Dec 2018 23:44:55 GMT  
		Size: 91.0 MB (91017456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb38c628bcd2c751c49be2d05e0d776cfff341a9e85b17e0d93ed35fc5a0059`  
		Last Modified: Fri, 28 Dec 2018 23:44:49 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57731cecdd74cacb375d9da7436b9fdf4b9b9c15f870e04dab47d345035f0e3`  
		Last Modified: Fri, 28 Dec 2018 23:44:50 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:61ba68e342cee41a8d5c0a0a525e298c4ef735d1923399fc2392caa3b668a7ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (204963047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8512063dc3c0164f214d2cdc6cf0434e5d865ceace3c9d87735407b8f43d0d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:41 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 10:33:45 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 10:33:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 10:33:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 10:33:55 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 10:33:56 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 10:33:58 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 10:33:59 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 10:35:06 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 29 Dec 2018 10:35:08 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 29 Dec 2018 10:35:12 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 29 Dec 2018 10:35:14 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 29 Dec 2018 10:35:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:35:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:35:40 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 10:35:41 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 10:35:43 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 29 Dec 2018 10:35:45 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 29 Dec 2018 10:35:47 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:35:56 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae02e069d15187550828b017b028d4d9784c9743f06c4cebf79ed049f1187b8`  
		Last Modified: Sat, 29 Dec 2018 10:36:42 GMT  
		Size: 73.8 MB (73817090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1726af2fcfc02fff927f39a313e4c51ce9e9f7939936e0b00d10ffc81ba4dd`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59d5973b5a05a4edda83e784d6b4e7504fcf35329c670351efae42735f41789`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be21d0368f0ec290eabd48510b32ee4cd7b001d5da40e991c1f3d5f3393e4f`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeb24ecd305a771b7a61669784a802591d5aacb70483b5cf90820267b1abbae`  
		Last Modified: Sat, 29 Dec 2018 10:36:15 GMT  
		Size: 468.8 KB (468793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d52e77f2018724c5eec9d1ff704218669abb3e7fa49df54a452bc7d33ce36`  
		Last Modified: Sat, 29 Dec 2018 10:37:02 GMT  
		Size: 91.0 MB (91017457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a3716776b757c5e283c9bef65890ac269ffb8a8eeb0dd27b73ddae634255af`  
		Last Modified: Sat, 29 Dec 2018 10:36:51 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1cbe0f51d4c76f66c5d5a5cb9a61413e902c8be9aebd3632904f9f4510026`  
		Last Modified: Sat, 29 Dec 2018 10:36:50 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:8920ca1384e2ccba9d2f9125911243c3165e0c438fc5c4baf3182ee367f71629
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214680479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e823dbcef357f59a61867c87231173caa5fb0fad4f6a0f13d6ece0c487f804`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:42:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 09:45:17 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:45:25 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 09:45:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 09:45:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 09:45:51 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 09:45:53 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 09:45:55 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 09:45:57 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 09:45:58 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 09:47:51 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 29 Dec 2018 09:47:53 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 29 Dec 2018 09:47:56 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 29 Dec 2018 09:47:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 29 Dec 2018 09:48:44 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:48:51 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:48:57 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 09:49:00 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 09:49:02 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 29 Dec 2018 09:49:03 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 29 Dec 2018 09:49:06 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 09:49:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34b1baefa847db83eb3897308a668ce8b4d9eca9b010be9d1eb5b9317dce6c`  
		Last Modified: Sat, 29 Dec 2018 09:49:40 GMT  
		Size: 77.3 MB (77321086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657747ee289f7c04c9944561b45cc7cae98d21952987d9069fc4b378b58feb92`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373bc6648cbfe1fc3b46ac43dd9f304f8218b801c924728764144f436b5fa1a`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261a2e478f364e73a4a0cbf6a1936aaa05edd034d37d2aaa9199626d837043f`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73184953c05820a8c17e0626678e82bc9b8d0ff150b2bd54f1ee7d4f942558aa`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 469.9 KB (469921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba106f6baa6d9809e479d9d7640817b6f8c0ed2045dae9d64400b19aaadff359`  
		Last Modified: Sat, 29 Dec 2018 09:49:58 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293d42a661444e532572242123a69429901214d82e622593d4a65359b7a3cb3e`  
		Last Modified: Sat, 29 Dec 2018 09:49:51 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6c022b8574d064fcd26317ed05a0209164e377a36352038e5aed8b385def03`  
		Last Modified: Sat, 29 Dec 2018 09:49:51 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:cc4aa2a1f198715e6229a24468272e9d2f0a74cfe15ab38f0a2facef847d41f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:8b54a5b8d4528a521c14d64c049d0538b4aaa063a9a25a0405d0bfc27092b76c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217968082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a30cbc791581e53c725dcf5af85bfd68fbfcfc882dfe737c135c6a1dee839b`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:42:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 28 Dec 2018 23:43:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:43:36 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 28 Dec 2018 23:43:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 28 Dec 2018 23:43:38 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Dec 2018 23:43:40 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG TOMCAT_VERSION
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_SHA256
# Fri, 28 Dec 2018 23:43:40 GMT
ARG BONITA_URL
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_VERSION=7.8.0
# Fri, 28 Dec 2018 23:44:10 GMT
ENV TOMCAT_VERSION=8.5.34
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Fri, 28 Dec 2018 23:44:10 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Fri, 28 Dec 2018 23:44:18 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:44:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 28 Dec 2018 23:44:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 28 Dec 2018 23:44:20 GMT
VOLUME [/opt/bonita]
# Fri, 28 Dec 2018 23:44:21 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Fri, 28 Dec 2018 23:44:21 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Fri, 28 Dec 2018 23:44:21 GMT
EXPOSE 8080
# Fri, 28 Dec 2018 23:44:21 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c59679fdbf59eb0ffa2a1c81187a215ddcadcc30219e67d31f24ebc15ee4128`  
		Last Modified: Fri, 28 Dec 2018 23:44:44 GMT  
		Size: 82.9 MB (82854534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee8c3fb73a1c5db284adbc7f5acc0bbeec5f6752e71e1fc6a682b9a82d82694`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d066807956a3ad31734860c81c0502c8fae532f3946a67d8d3770376c6e4227f`  
		Last Modified: Fri, 28 Dec 2018 23:44:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db48a846d00d24db624c5221a4390fc07bc97f2ff749c321202cbd99e2f98e2`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aea9228da94a87c7b22735196ba665ae8f259811a452eacabbd2ddb56f6ead`  
		Last Modified: Fri, 28 Dec 2018 23:44:30 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd194ee652865fab5980a738940b875092fbc2ba8d4439b9dda33e0461cc58cb`  
		Last Modified: Fri, 28 Dec 2018 23:44:55 GMT  
		Size: 91.0 MB (91017456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb38c628bcd2c751c49be2d05e0d776cfff341a9e85b17e0d93ed35fc5a0059`  
		Last Modified: Fri, 28 Dec 2018 23:44:49 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57731cecdd74cacb375d9da7436b9fdf4b9b9c15f870e04dab47d345035f0e3`  
		Last Modified: Fri, 28 Dec 2018 23:44:50 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:61ba68e342cee41a8d5c0a0a525e298c4ef735d1923399fc2392caa3b668a7ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (204963047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8512063dc3c0164f214d2cdc6cf0434e5d865ceace3c9d87735407b8f43d0d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:31:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:33:41 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 10:33:45 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 10:33:49 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 10:33:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 10:33:55 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 10:33:56 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 10:33:58 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 10:33:59 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 10:35:06 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 29 Dec 2018 10:35:08 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 29 Dec 2018 10:35:12 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 29 Dec 2018 10:35:14 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 29 Dec 2018 10:35:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:35:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 10:35:40 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 10:35:41 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 10:35:43 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 29 Dec 2018 10:35:45 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 29 Dec 2018 10:35:47 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:35:56 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae02e069d15187550828b017b028d4d9784c9743f06c4cebf79ed049f1187b8`  
		Last Modified: Sat, 29 Dec 2018 10:36:42 GMT  
		Size: 73.8 MB (73817090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1726af2fcfc02fff927f39a313e4c51ce9e9f7939936e0b00d10ffc81ba4dd`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59d5973b5a05a4edda83e784d6b4e7504fcf35329c670351efae42735f41789`  
		Last Modified: Sat, 29 Dec 2018 10:36:16 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7be21d0368f0ec290eabd48510b32ee4cd7b001d5da40e991c1f3d5f3393e4f`  
		Last Modified: Sat, 29 Dec 2018 10:36:14 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eeb24ecd305a771b7a61669784a802591d5aacb70483b5cf90820267b1abbae`  
		Last Modified: Sat, 29 Dec 2018 10:36:15 GMT  
		Size: 468.8 KB (468793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d52e77f2018724c5eec9d1ff704218669abb3e7fa49df54a452bc7d33ce36`  
		Last Modified: Sat, 29 Dec 2018 10:37:02 GMT  
		Size: 91.0 MB (91017457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a3716776b757c5e283c9bef65890ac269ffb8a8eeb0dd27b73ddae634255af`  
		Last Modified: Sat, 29 Dec 2018 10:36:51 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1cbe0f51d4c76f66c5d5a5cb9a61413e902c8be9aebd3632904f9f4510026`  
		Last Modified: Sat, 29 Dec 2018 10:36:50 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:8920ca1384e2ccba9d2f9125911243c3165e0c438fc5c4baf3182ee367f71629
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214680479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0e823dbcef357f59a61867c87231173caa5fb0fad4f6a0f13d6ece0c487f804`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:42:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 29 Dec 2018 09:45:17 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:45:25 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 29 Dec 2018 09:45:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 29 Dec 2018 09:45:43 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Dec 2018 09:45:51 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 29 Dec 2018 09:45:53 GMT
ARG BONITA_VERSION
# Sat, 29 Dec 2018 09:45:55 GMT
ARG TOMCAT_VERSION
# Sat, 29 Dec 2018 09:45:57 GMT
ARG BONITA_SHA256
# Sat, 29 Dec 2018 09:45:58 GMT
ARG BONITA_URL
# Sat, 29 Dec 2018 09:47:51 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 29 Dec 2018 09:47:53 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 29 Dec 2018 09:47:56 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 29 Dec 2018 09:47:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 29 Dec 2018 09:48:44 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:48:51 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 29 Dec 2018 09:48:57 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 29 Dec 2018 09:49:00 GMT
VOLUME [/opt/bonita]
# Sat, 29 Dec 2018 09:49:02 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 29 Dec 2018 09:49:03 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 29 Dec 2018 09:49:06 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 09:49:09 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf34b1baefa847db83eb3897308a668ce8b4d9eca9b010be9d1eb5b9317dce6c`  
		Last Modified: Sat, 29 Dec 2018 09:49:40 GMT  
		Size: 77.3 MB (77321086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657747ee289f7c04c9944561b45cc7cae98d21952987d9069fc4b378b58feb92`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6373bc6648cbfe1fc3b46ac43dd9f304f8218b801c924728764144f436b5fa1a`  
		Last Modified: Sat, 29 Dec 2018 09:49:24 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f261a2e478f364e73a4a0cbf6a1936aaa05edd034d37d2aaa9199626d837043f`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73184953c05820a8c17e0626678e82bc9b8d0ff150b2bd54f1ee7d4f942558aa`  
		Last Modified: Sat, 29 Dec 2018 09:49:21 GMT  
		Size: 469.9 KB (469921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba106f6baa6d9809e479d9d7640817b6f8c0ed2045dae9d64400b19aaadff359`  
		Last Modified: Sat, 29 Dec 2018 09:49:58 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293d42a661444e532572242123a69429901214d82e622593d4a65359b7a3cb3e`  
		Last Modified: Sat, 29 Dec 2018 09:49:51 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6c022b8574d064fcd26317ed05a0209164e377a36352038e5aed8b385def03`  
		Last Modified: Sat, 29 Dec 2018 09:49:51 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
