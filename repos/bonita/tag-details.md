<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.5`](#bonita775)
-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.0`](#bonita780)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.7`

```console
$ docker pull bonita@sha256:039705af7d346dc8762966e7716fd12e64e657109841c793bd9c8ee8a7e56642
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
$ docker pull bonita@sha256:ae6d29dac7005ee15e86e9bbf3e94b6dc2f48d900a72a3083a97963d731d2a7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201486927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f85e9b201adc6320dd029db906276ef0a478e61fa0ff8d60a13c5237acaaeb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:14:33 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:16:58 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:17:00 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:17:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:17:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:17:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:17:11 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:17:12 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:17:13 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:17:14 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 09:39:34 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 09:39:35 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 09:39:35 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 09:39:36 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 09:39:58 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:40:00 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:40:03 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 09:40:03 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 09:40:04 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 09:40:05 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 09:40:05 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 09:40:06 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5855b12f835836ed7af3d3a80f961f99b95ab133ee69cbbbee13a19d38e2e30`  
		Last Modified: Tue, 20 Nov 2018 10:19:51 GMT  
		Size: 73.6 MB (73564494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c15ebad64b83ce2d190e4a665d7fa9a9defc394c999df5aa108189c55528`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe1f35dce8778ebf382a30708dcf4b7e6743b9b54c54cd17057ae1408e1b5c`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d5f908df6d49536a53ceacb4f9c7df54212567b5cb7a272678f16e2185451`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0ca394adcc9a97256b22bfac7c2ca0449d6e50f871bcfbcaf2d614bb390ff`  
		Last Modified: Tue, 20 Nov 2018 10:19:08 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6e4516aa9e1c1a9538f4f84993cd35929c07d25d64b39ef32c5b667ef4711e`  
		Last Modified: Tue, 04 Dec 2018 09:40:35 GMT  
		Size: 87.8 MB (87818773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a5fbd1cc7d4495ce066c2e65e13eba2bad0da31e33396da877bf1596dfdc68`  
		Last Modified: Tue, 04 Dec 2018 09:40:25 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a41ed81163e9f153982b0e654d1038d3efa06633290b4833092e8ad2d1eda2`  
		Last Modified: Tue, 04 Dec 2018 09:40:25 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:a4514d2fe8bc95aec3f1e0ebce3c81b6f51a4fef3cf4e06f4b6a82de094fa5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211417774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ddcaf906a25fef76ceceeea383ca6e8396f2700929b993bb7cf97b4f9815ce3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:09:29 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:12:41 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:12:48 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:12:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:13:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:13:17 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:13:18 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:13:18 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:13:19 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:13:20 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 09:27:01 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 09:27:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 09:27:03 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 09:27:04 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 09:27:59 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:28:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:28:32 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 09:28:45 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 09:28:48 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 09:28:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 09:28:50 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 09:28:52 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902a461f7fc602332f11f46d7665980a19a346af3972df63ea5bbc3cfca22bd`  
		Last Modified: Tue, 20 Nov 2018 10:17:18 GMT  
		Size: 77.3 MB (77281563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b18c8d90fcafdd3a89fa3ffddfa5b58bc618b3e9dd819c309470e4a756a501`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68167b1ab25c82518198a336ece838e6ed68884232303956b45e14cbe9aa2d5e`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d29a4443d19bcb0a35a53e1773ac3d17f0253bf78a7f26c487d58ccf31ca5a`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d70d844737f6c656a849e0f08b77dd834a2b80672c10f6d7338a127fef2663`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a352e743bcfd43daf5a0daaa36af741ad8393e2b9fcccbffb4af171deebad60d`  
		Last Modified: Tue, 04 Dec 2018 09:29:38 GMT  
		Size: 87.8 MB (87818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b501387e08e2fd0836315a693e43aafa0f0190ab443cf61b09ed44e07ab183`  
		Last Modified: Tue, 04 Dec 2018 09:29:30 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3df89259955f435718db739de08a17d4395ee4d3a72d253cdf7372118c879c`  
		Last Modified: Tue, 04 Dec 2018 09:29:30 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.5`

```console
$ docker pull bonita@sha256:039705af7d346dc8762966e7716fd12e64e657109841c793bd9c8ee8a7e56642
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
$ docker pull bonita@sha256:ae6d29dac7005ee15e86e9bbf3e94b6dc2f48d900a72a3083a97963d731d2a7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.5 MB (201486927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f85e9b201adc6320dd029db906276ef0a478e61fa0ff8d60a13c5237acaaeb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:14:33 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:16:58 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:17:00 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:17:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:17:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:17:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:17:11 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:17:12 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:17:13 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:17:14 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 09:39:34 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 09:39:35 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 09:39:35 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 09:39:36 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 09:39:58 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:40:00 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:40:03 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 09:40:03 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 09:40:04 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 09:40:05 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 09:40:05 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 09:40:06 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5855b12f835836ed7af3d3a80f961f99b95ab133ee69cbbbee13a19d38e2e30`  
		Last Modified: Tue, 20 Nov 2018 10:19:51 GMT  
		Size: 73.6 MB (73564494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c15ebad64b83ce2d190e4a665d7fa9a9defc394c999df5aa108189c55528`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe1f35dce8778ebf382a30708dcf4b7e6743b9b54c54cd17057ae1408e1b5c`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d5f908df6d49536a53ceacb4f9c7df54212567b5cb7a272678f16e2185451`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0ca394adcc9a97256b22bfac7c2ca0449d6e50f871bcfbcaf2d614bb390ff`  
		Last Modified: Tue, 20 Nov 2018 10:19:08 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6e4516aa9e1c1a9538f4f84993cd35929c07d25d64b39ef32c5b667ef4711e`  
		Last Modified: Tue, 04 Dec 2018 09:40:35 GMT  
		Size: 87.8 MB (87818773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a5fbd1cc7d4495ce066c2e65e13eba2bad0da31e33396da877bf1596dfdc68`  
		Last Modified: Tue, 04 Dec 2018 09:40:25 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a41ed81163e9f153982b0e654d1038d3efa06633290b4833092e8ad2d1eda2`  
		Last Modified: Tue, 04 Dec 2018 09:40:25 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; ppc64le

```console
$ docker pull bonita@sha256:a4514d2fe8bc95aec3f1e0ebce3c81b6f51a4fef3cf4e06f4b6a82de094fa5aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211417774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ddcaf906a25fef76ceceeea383ca6e8396f2700929b993bb7cf97b4f9815ce3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:09:29 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:12:41 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:12:48 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:12:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:13:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:13:17 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:13:18 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:13:18 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:13:19 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:13:20 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 09:27:01 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 09:27:02 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 09:27:03 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 09:27:04 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 09:27:59 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:28:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 09:28:32 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 09:28:45 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 09:28:48 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 09:28:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 09:28:50 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 09:28:52 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902a461f7fc602332f11f46d7665980a19a346af3972df63ea5bbc3cfca22bd`  
		Last Modified: Tue, 20 Nov 2018 10:17:18 GMT  
		Size: 77.3 MB (77281563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b18c8d90fcafdd3a89fa3ffddfa5b58bc618b3e9dd819c309470e4a756a501`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68167b1ab25c82518198a336ece838e6ed68884232303956b45e14cbe9aa2d5e`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d29a4443d19bcb0a35a53e1773ac3d17f0253bf78a7f26c487d58ccf31ca5a`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d70d844737f6c656a849e0f08b77dd834a2b80672c10f6d7338a127fef2663`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a352e743bcfd43daf5a0daaa36af741ad8393e2b9fcccbffb4af171deebad60d`  
		Last Modified: Tue, 04 Dec 2018 09:29:38 GMT  
		Size: 87.8 MB (87818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b501387e08e2fd0836315a693e43aafa0f0190ab443cf61b09ed44e07ab183`  
		Last Modified: Tue, 04 Dec 2018 09:29:30 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3df89259955f435718db739de08a17d4395ee4d3a72d253cdf7372118c879c`  
		Last Modified: Tue, 04 Dec 2018 09:29:30 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8`

```console
$ docker pull bonita@sha256:237b52b83b6739b5b7d8427d4dd86e4cb31ec71922d3b5f090ee293d1c966821
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
$ docker pull bonita@sha256:71b2ae973fede2251eba9a72b4707624e4cf0c74d3efe68124c8969c410c25e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204685595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2266a2fc95dcf29c41acb8207bd904c5d4ec4f762a2356d2c41e9eff84763ba`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:14:33 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:16:58 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:17:00 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:17:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:17:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:17:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:17:11 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:17:12 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:17:13 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:17:14 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:39:47 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:39:48 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:39:49 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:39:50 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:40:16 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:40:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:40:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:40:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:40:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:40:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5855b12f835836ed7af3d3a80f961f99b95ab133ee69cbbbee13a19d38e2e30`  
		Last Modified: Tue, 20 Nov 2018 10:19:51 GMT  
		Size: 73.6 MB (73564494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c15ebad64b83ce2d190e4a665d7fa9a9defc394c999df5aa108189c55528`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe1f35dce8778ebf382a30708dcf4b7e6743b9b54c54cd17057ae1408e1b5c`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d5f908df6d49536a53ceacb4f9c7df54212567b5cb7a272678f16e2185451`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0ca394adcc9a97256b22bfac7c2ca0449d6e50f871bcfbcaf2d614bb390ff`  
		Last Modified: Tue, 20 Nov 2018 10:19:08 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bef3e988cde5f07302b8971bf357bbbe955fff827784b0230bab11ab0dce05`  
		Last Modified: Sat, 08 Dec 2018 09:41:07 GMT  
		Size: 91.0 MB (91017458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9445031e5169539d938be717700973a1e5d8cee744ef20a79e173d9fa8f920a8`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b683a15600409411c8db38769f5112b33c20875d8b31e27fcd86b8a1ec78165`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:e82ecb1e0d8093ab9a112fa574ddec2a933eb21446bba6848460d3da5c3f4511
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214616431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573abd0ea96b7a8aa38234e00db74ec6db8710e23b2ef2408245eb89149c1e70`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:09:29 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:12:41 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:12:48 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:12:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:13:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:13:17 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:13:18 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:13:18 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:13:19 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:13:20 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:26:26 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:26:27 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:26:28 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:26:29 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:27:15 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:27:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:27:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:27:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:27:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:27:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902a461f7fc602332f11f46d7665980a19a346af3972df63ea5bbc3cfca22bd`  
		Last Modified: Tue, 20 Nov 2018 10:17:18 GMT  
		Size: 77.3 MB (77281563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b18c8d90fcafdd3a89fa3ffddfa5b58bc618b3e9dd819c309470e4a756a501`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68167b1ab25c82518198a336ece838e6ed68884232303956b45e14cbe9aa2d5e`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d29a4443d19bcb0a35a53e1773ac3d17f0253bf78a7f26c487d58ccf31ca5a`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d70d844737f6c656a849e0f08b77dd834a2b80672c10f6d7338a127fef2663`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df1f5afb7681ea9a070367113f8cd47d48c0872750cf3bc46013d96656dc6ec`  
		Last Modified: Sat, 08 Dec 2018 09:28:29 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23b814871233aa05022d7274f4fd732c089ab90435c63a516a337b04df1a823`  
		Last Modified: Sat, 08 Dec 2018 09:28:21 GMT  
		Size: 6.4 KB (6429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6ca1c79a3e5c04e9e7f6255d0954cdd2f4420cb9decd138ee61a0fb17fe9db`  
		Last Modified: Sat, 08 Dec 2018 09:28:20 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.0`

```console
$ docker pull bonita@sha256:237b52b83b6739b5b7d8427d4dd86e4cb31ec71922d3b5f090ee293d1c966821
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
$ docker pull bonita@sha256:71b2ae973fede2251eba9a72b4707624e4cf0c74d3efe68124c8969c410c25e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204685595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2266a2fc95dcf29c41acb8207bd904c5d4ec4f762a2356d2c41e9eff84763ba`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:14:33 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:16:58 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:17:00 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:17:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:17:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:17:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:17:11 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:17:12 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:17:13 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:17:14 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:39:47 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:39:48 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:39:49 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:39:50 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:40:16 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:40:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:40:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:40:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:40:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:40:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5855b12f835836ed7af3d3a80f961f99b95ab133ee69cbbbee13a19d38e2e30`  
		Last Modified: Tue, 20 Nov 2018 10:19:51 GMT  
		Size: 73.6 MB (73564494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c15ebad64b83ce2d190e4a665d7fa9a9defc394c999df5aa108189c55528`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe1f35dce8778ebf382a30708dcf4b7e6743b9b54c54cd17057ae1408e1b5c`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d5f908df6d49536a53ceacb4f9c7df54212567b5cb7a272678f16e2185451`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0ca394adcc9a97256b22bfac7c2ca0449d6e50f871bcfbcaf2d614bb390ff`  
		Last Modified: Tue, 20 Nov 2018 10:19:08 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bef3e988cde5f07302b8971bf357bbbe955fff827784b0230bab11ab0dce05`  
		Last Modified: Sat, 08 Dec 2018 09:41:07 GMT  
		Size: 91.0 MB (91017458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9445031e5169539d938be717700973a1e5d8cee744ef20a79e173d9fa8f920a8`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b683a15600409411c8db38769f5112b33c20875d8b31e27fcd86b8a1ec78165`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:e82ecb1e0d8093ab9a112fa574ddec2a933eb21446bba6848460d3da5c3f4511
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214616431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573abd0ea96b7a8aa38234e00db74ec6db8710e23b2ef2408245eb89149c1e70`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:09:29 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:12:41 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:12:48 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:12:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:13:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:13:17 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:13:18 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:13:18 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:13:19 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:13:20 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:26:26 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:26:27 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:26:28 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:26:29 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:27:15 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:27:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:27:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:27:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:27:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:27:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902a461f7fc602332f11f46d7665980a19a346af3972df63ea5bbc3cfca22bd`  
		Last Modified: Tue, 20 Nov 2018 10:17:18 GMT  
		Size: 77.3 MB (77281563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b18c8d90fcafdd3a89fa3ffddfa5b58bc618b3e9dd819c309470e4a756a501`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68167b1ab25c82518198a336ece838e6ed68884232303956b45e14cbe9aa2d5e`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d29a4443d19bcb0a35a53e1773ac3d17f0253bf78a7f26c487d58ccf31ca5a`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d70d844737f6c656a849e0f08b77dd834a2b80672c10f6d7338a127fef2663`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df1f5afb7681ea9a070367113f8cd47d48c0872750cf3bc46013d96656dc6ec`  
		Last Modified: Sat, 08 Dec 2018 09:28:29 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23b814871233aa05022d7274f4fd732c089ab90435c63a516a337b04df1a823`  
		Last Modified: Sat, 08 Dec 2018 09:28:21 GMT  
		Size: 6.4 KB (6429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6ca1c79a3e5c04e9e7f6255d0954cdd2f4420cb9decd138ee61a0fb17fe9db`  
		Last Modified: Sat, 08 Dec 2018 09:28:20 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:237b52b83b6739b5b7d8427d4dd86e4cb31ec71922d3b5f090ee293d1c966821
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
$ docker pull bonita@sha256:71b2ae973fede2251eba9a72b4707624e4cf0c74d3efe68124c8969c410c25e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204685595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2266a2fc95dcf29c41acb8207bd904c5d4ec4f762a2356d2c41e9eff84763ba`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:14:33 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:16:58 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:17:00 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:17:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:17:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:17:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:17:11 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:17:12 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:17:13 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:17:14 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:39:47 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:39:48 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:39:49 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:39:50 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:40:16 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:40:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:40:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:40:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:40:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:40:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5855b12f835836ed7af3d3a80f961f99b95ab133ee69cbbbee13a19d38e2e30`  
		Last Modified: Tue, 20 Nov 2018 10:19:51 GMT  
		Size: 73.6 MB (73564494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c15ebad64b83ce2d190e4a665d7fa9a9defc394c999df5aa108189c55528`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe1f35dce8778ebf382a30708dcf4b7e6743b9b54c54cd17057ae1408e1b5c`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d5f908df6d49536a53ceacb4f9c7df54212567b5cb7a272678f16e2185451`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0ca394adcc9a97256b22bfac7c2ca0449d6e50f871bcfbcaf2d614bb390ff`  
		Last Modified: Tue, 20 Nov 2018 10:19:08 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bef3e988cde5f07302b8971bf357bbbe955fff827784b0230bab11ab0dce05`  
		Last Modified: Sat, 08 Dec 2018 09:41:07 GMT  
		Size: 91.0 MB (91017458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9445031e5169539d938be717700973a1e5d8cee744ef20a79e173d9fa8f920a8`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b683a15600409411c8db38769f5112b33c20875d8b31e27fcd86b8a1ec78165`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:e82ecb1e0d8093ab9a112fa574ddec2a933eb21446bba6848460d3da5c3f4511
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214616431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573abd0ea96b7a8aa38234e00db74ec6db8710e23b2ef2408245eb89149c1e70`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:09:29 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:12:41 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:12:48 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:12:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:13:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:13:17 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:13:18 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:13:18 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:13:19 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:13:20 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:26:26 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:26:27 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:26:28 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:26:29 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:27:15 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:27:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:27:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:27:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:27:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:27:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902a461f7fc602332f11f46d7665980a19a346af3972df63ea5bbc3cfca22bd`  
		Last Modified: Tue, 20 Nov 2018 10:17:18 GMT  
		Size: 77.3 MB (77281563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b18c8d90fcafdd3a89fa3ffddfa5b58bc618b3e9dd819c309470e4a756a501`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68167b1ab25c82518198a336ece838e6ed68884232303956b45e14cbe9aa2d5e`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d29a4443d19bcb0a35a53e1773ac3d17f0253bf78a7f26c487d58ccf31ca5a`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d70d844737f6c656a849e0f08b77dd834a2b80672c10f6d7338a127fef2663`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df1f5afb7681ea9a070367113f8cd47d48c0872750cf3bc46013d96656dc6ec`  
		Last Modified: Sat, 08 Dec 2018 09:28:29 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23b814871233aa05022d7274f4fd732c089ab90435c63a516a337b04df1a823`  
		Last Modified: Sat, 08 Dec 2018 09:28:21 GMT  
		Size: 6.4 KB (6429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6ca1c79a3e5c04e9e7f6255d0954cdd2f4420cb9decd138ee61a0fb17fe9db`  
		Last Modified: Sat, 08 Dec 2018 09:28:20 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
