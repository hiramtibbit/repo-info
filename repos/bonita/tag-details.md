<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.5`](#bonita775)
-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.3`](#bonita783)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.7`

```console
$ docker pull bonita@sha256:cb22752e722d5a91e57d091264a7745a8ca0be76b8e68548703bd8213e1323e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:4239ef3068043bc9bfabe42c5d33505ad4af11952040059839adb5a1971fc620
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214852889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d88fba50b9dca3b65cce12f810493771c8b58bd5d0bb357350d55488914d778`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:12:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 01:13:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:05 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 01:13:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 01:13:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 01:13:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 01:13:10 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 12 Mar 2019 01:13:10 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 12 Mar 2019 01:13:10 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 12 Mar 2019 01:13:10 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 12 Mar 2019 01:13:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 01:13:20 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 01:13:20 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Tue, 12 Mar 2019 01:13:20 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Tue, 12 Mar 2019 01:13:21 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 01:13:21 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec73bccff4570968e300863cbb9e644a554e2463888fc832cb2ec072147503`  
		Last Modified: Tue, 12 Mar 2019 01:14:04 GMT  
		Size: 82.8 MB (82819497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3917618e8d89892db741b66f063293c151b22b30f3cbbaed2aeb2bc52994a`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d0acbf15d1fa25fbc8805bc642868506156d6a1e039894b22208dc815cb05`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452bc7e8ea3008eb0f1f9111ba97de40b67d96c56e216e30bf63254742e24f3`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd5fc0222c86ed911ff4bd61b730ad97a5a00d06bc884839eeaf0ad9062ca02`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd09d2b8a68a45a0d00445f6bb5338506305431db54a5c0880bfef690e878f0`  
		Last Modified: Tue, 12 Mar 2019 01:13:54 GMT  
		Size: 87.8 MB (87818773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10a27865281d8949b1fee8a7f3254d7c0a309025a99be8e538029e5a0e0beed`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a39ade1bc096b59a57e2d9586dbbc74902238ae582d4082c53816f791c680d1`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:db9cc1ac9134644c876575b7cef2ff208688301e813b8bb2f7a2345cfa628e40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201805654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0d2561d6741dd5b52f35624e7c0f9c572adc22d0a5a1d63bbf98d457c4d117`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 10:54:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Mar 2019 10:58:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:58:53 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Mar 2019 10:58:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Mar 2019 10:59:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Mar 2019 10:59:08 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Mar 2019 10:59:09 GMT
ARG BONITA_VERSION
# Thu, 14 Mar 2019 10:59:11 GMT
ARG TOMCAT_VERSION
# Thu, 14 Mar 2019 10:59:13 GMT
ARG BONITA_SHA256
# Thu, 14 Mar 2019 10:59:14 GMT
ARG BONITA_URL
# Thu, 14 Mar 2019 10:59:15 GMT
ENV BONITA_VERSION=7.7.5
# Thu, 14 Mar 2019 10:59:23 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 14 Mar 2019 10:59:24 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Thu, 14 Mar 2019 10:59:25 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Thu, 14 Mar 2019 10:59:51 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 10:59:54 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 10:59:57 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Mar 2019 10:59:58 GMT
VOLUME [/opt/bonita]
# Thu, 14 Mar 2019 10:59:59 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Thu, 14 Mar 2019 11:00:00 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Thu, 14 Mar 2019 11:00:01 GMT
EXPOSE 8080
# Thu, 14 Mar 2019 11:00:02 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5687d25bc03e08481ab9e29dab4e76c96f93f009cef8da8567c7af4ddcaa51a`  
		Last Modified: Thu, 14 Mar 2019 11:01:35 GMT  
		Size: 73.8 MB (73782779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbd0a15c7b02787373f566564c7a4b6cab9ca026be7a308f468edf4a0716e97`  
		Last Modified: Thu, 14 Mar 2019 11:01:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac5e2f94b4c37d3a2d739c2209bb293997e8473d1c4f1e718d0f6a3c0cd01c5`  
		Last Modified: Thu, 14 Mar 2019 11:01:10 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f86354aabbaa35b1d5b28bf4b0cc80bce417565d45d4fdbf300e174d4fc2b`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cc040f15e5c59c0d32df0ee11141946f7d06948865db3c53ae5cf0c74b9f0`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e37cbf85617d91fd59e6433decae2f5e5276682587b8ce6ccd488e980bb513`  
		Last Modified: Thu, 14 Mar 2019 11:01:19 GMT  
		Size: 87.8 MB (87818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a8f8aa2a3a3d05a76e9faa9530cc09662d41b979ab5406f06b04123e09da59`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a75bab5a3202f5aa251e4ef3a1b2d150e6d861899fb131b4227bad634ebdfe`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:be67e321c7b2b2932b375f5fa91a6ab7fb8c7c1c4aa5b04a9b2ebda950b7f04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211506639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4df337f43089d72145ba325c0b450a1250b5dc87c999e3a2573dc85e6ff90bd`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:45:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:50:10 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 09:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 09:50:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 09:50:49 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 09:50:56 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 09:51:00 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 09:51:03 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 09:51:05 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 09:51:07 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 12 Mar 2019 09:51:10 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 12 Mar 2019 09:51:13 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 12 Mar 2019 09:51:17 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 12 Mar 2019 09:52:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:52:24 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:52:33 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 09:52:36 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 09:52:37 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Tue, 12 Mar 2019 09:52:39 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Tue, 12 Mar 2019 09:52:42 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 09:52:45 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c086ce01eaf2427a864dd03d8ca7be4d6af7508dd1531ca8afe96357483f69`  
		Last Modified: Tue, 12 Mar 2019 09:55:13 GMT  
		Size: 77.3 MB (77290386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7f530a7e01f7871a5b863aee13f625711b5068b5762e1748f3c2c7b4efb6d`  
		Last Modified: Tue, 12 Mar 2019 09:54:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c71c4d894477cf828c5a4006b780010b4b8f991c2bce5230ed3ab13c7b5f8d`  
		Last Modified: Tue, 12 Mar 2019 09:54:56 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d78e2b7c8d887acf423caaa34cc30dc820303ab1a89c9136c3b5f0ba934399`  
		Last Modified: Tue, 12 Mar 2019 09:54:54 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05213e2042ec5ebd259d4fde23141419d5c542a5baf97df493c44a6702557c12`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24716c31f7b1b52e3a3caf49b66520f039068a9aae60b766d70c8dfc75b46`  
		Last Modified: Tue, 12 Mar 2019 09:54:59 GMT  
		Size: 87.8 MB (87818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564cff1e39b5bb994c689363ae299087d66df136e2df23798643f078b850d095`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 6.4 KB (6437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ff6405d0c024702f4ed0821e68bcde5a87d61f1b7fd715c30366bd7c7b46f9`  
		Last Modified: Tue, 12 Mar 2019 09:54:52 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.5`

```console
$ docker pull bonita@sha256:cb22752e722d5a91e57d091264a7745a8ca0be76b8e68548703bd8213e1323e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7.5` - linux; amd64

```console
$ docker pull bonita@sha256:4239ef3068043bc9bfabe42c5d33505ad4af11952040059839adb5a1971fc620
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214852889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d88fba50b9dca3b65cce12f810493771c8b58bd5d0bb357350d55488914d778`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:12:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 01:13:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:05 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 01:13:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 01:13:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 01:13:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 01:13:10 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 12 Mar 2019 01:13:10 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 12 Mar 2019 01:13:10 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 12 Mar 2019 01:13:10 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 12 Mar 2019 01:13:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 01:13:20 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 01:13:20 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Tue, 12 Mar 2019 01:13:20 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Tue, 12 Mar 2019 01:13:21 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 01:13:21 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec73bccff4570968e300863cbb9e644a554e2463888fc832cb2ec072147503`  
		Last Modified: Tue, 12 Mar 2019 01:14:04 GMT  
		Size: 82.8 MB (82819497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3917618e8d89892db741b66f063293c151b22b30f3cbbaed2aeb2bc52994a`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d0acbf15d1fa25fbc8805bc642868506156d6a1e039894b22208dc815cb05`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452bc7e8ea3008eb0f1f9111ba97de40b67d96c56e216e30bf63254742e24f3`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd5fc0222c86ed911ff4bd61b730ad97a5a00d06bc884839eeaf0ad9062ca02`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd09d2b8a68a45a0d00445f6bb5338506305431db54a5c0880bfef690e878f0`  
		Last Modified: Tue, 12 Mar 2019 01:13:54 GMT  
		Size: 87.8 MB (87818773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10a27865281d8949b1fee8a7f3254d7c0a309025a99be8e538029e5a0e0beed`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a39ade1bc096b59a57e2d9586dbbc74902238ae582d4082c53816f791c680d1`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:db9cc1ac9134644c876575b7cef2ff208688301e813b8bb2f7a2345cfa628e40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201805654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0d2561d6741dd5b52f35624e7c0f9c572adc22d0a5a1d63bbf98d457c4d117`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 10:54:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Mar 2019 10:58:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:58:53 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Mar 2019 10:58:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Mar 2019 10:59:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Mar 2019 10:59:08 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Mar 2019 10:59:09 GMT
ARG BONITA_VERSION
# Thu, 14 Mar 2019 10:59:11 GMT
ARG TOMCAT_VERSION
# Thu, 14 Mar 2019 10:59:13 GMT
ARG BONITA_SHA256
# Thu, 14 Mar 2019 10:59:14 GMT
ARG BONITA_URL
# Thu, 14 Mar 2019 10:59:15 GMT
ENV BONITA_VERSION=7.7.5
# Thu, 14 Mar 2019 10:59:23 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 14 Mar 2019 10:59:24 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Thu, 14 Mar 2019 10:59:25 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Thu, 14 Mar 2019 10:59:51 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 10:59:54 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 10:59:57 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Mar 2019 10:59:58 GMT
VOLUME [/opt/bonita]
# Thu, 14 Mar 2019 10:59:59 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Thu, 14 Mar 2019 11:00:00 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Thu, 14 Mar 2019 11:00:01 GMT
EXPOSE 8080
# Thu, 14 Mar 2019 11:00:02 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5687d25bc03e08481ab9e29dab4e76c96f93f009cef8da8567c7af4ddcaa51a`  
		Last Modified: Thu, 14 Mar 2019 11:01:35 GMT  
		Size: 73.8 MB (73782779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbd0a15c7b02787373f566564c7a4b6cab9ca026be7a308f468edf4a0716e97`  
		Last Modified: Thu, 14 Mar 2019 11:01:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac5e2f94b4c37d3a2d739c2209bb293997e8473d1c4f1e718d0f6a3c0cd01c5`  
		Last Modified: Thu, 14 Mar 2019 11:01:10 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f86354aabbaa35b1d5b28bf4b0cc80bce417565d45d4fdbf300e174d4fc2b`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cc040f15e5c59c0d32df0ee11141946f7d06948865db3c53ae5cf0c74b9f0`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e37cbf85617d91fd59e6433decae2f5e5276682587b8ce6ccd488e980bb513`  
		Last Modified: Thu, 14 Mar 2019 11:01:19 GMT  
		Size: 87.8 MB (87818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a8f8aa2a3a3d05a76e9faa9530cc09662d41b979ab5406f06b04123e09da59`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a75bab5a3202f5aa251e4ef3a1b2d150e6d861899fb131b4227bad634ebdfe`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; ppc64le

```console
$ docker pull bonita@sha256:be67e321c7b2b2932b375f5fa91a6ab7fb8c7c1c4aa5b04a9b2ebda950b7f04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211506639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4df337f43089d72145ba325c0b450a1250b5dc87c999e3a2573dc85e6ff90bd`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:45:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:50:10 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 09:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 09:50:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 09:50:49 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 09:50:56 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 09:51:00 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 09:51:03 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 09:51:05 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 09:51:07 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 12 Mar 2019 09:51:10 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 12 Mar 2019 09:51:13 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 12 Mar 2019 09:51:17 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 12 Mar 2019 09:52:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:52:24 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:52:33 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 09:52:36 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 09:52:37 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Tue, 12 Mar 2019 09:52:39 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Tue, 12 Mar 2019 09:52:42 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 09:52:45 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c086ce01eaf2427a864dd03d8ca7be4d6af7508dd1531ca8afe96357483f69`  
		Last Modified: Tue, 12 Mar 2019 09:55:13 GMT  
		Size: 77.3 MB (77290386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7f530a7e01f7871a5b863aee13f625711b5068b5762e1748f3c2c7b4efb6d`  
		Last Modified: Tue, 12 Mar 2019 09:54:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c71c4d894477cf828c5a4006b780010b4b8f991c2bce5230ed3ab13c7b5f8d`  
		Last Modified: Tue, 12 Mar 2019 09:54:56 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d78e2b7c8d887acf423caaa34cc30dc820303ab1a89c9136c3b5f0ba934399`  
		Last Modified: Tue, 12 Mar 2019 09:54:54 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05213e2042ec5ebd259d4fde23141419d5c542a5baf97df493c44a6702557c12`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f24716c31f7b1b52e3a3caf49b66520f039068a9aae60b766d70c8dfc75b46`  
		Last Modified: Tue, 12 Mar 2019 09:54:59 GMT  
		Size: 87.8 MB (87818817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564cff1e39b5bb994c689363ae299087d66df136e2df23798643f078b850d095`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 6.4 KB (6437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ff6405d0c024702f4ed0821e68bcde5a87d61f1b7fd715c30366bd7c7b46f9`  
		Last Modified: Tue, 12 Mar 2019 09:54:52 GMT  
		Size: 1.7 KB (1715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8`

```console
$ docker pull bonita@sha256:c6ab95b35cb2b06f7a6968fc11d2339a8cc527b1e7668e2d0fd3785eac119b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:0b71895a49a79be05168f667edfdf00fefdb341e6d891723f3a6e886a13dd4a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219018569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de6cfd1cbbd6cdb6cbb624f084071a96b5c6626a9fea659d9202bec47aab17e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:12:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 01:13:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:05 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 01:13:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 01:13:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 01:13:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 01:13:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 01:13:35 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:37 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 01:13:39 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 01:13:39 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 01:13:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec73bccff4570968e300863cbb9e644a554e2463888fc832cb2ec072147503`  
		Last Modified: Tue, 12 Mar 2019 01:14:04 GMT  
		Size: 82.8 MB (82819497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3917618e8d89892db741b66f063293c151b22b30f3cbbaed2aeb2bc52994a`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d0acbf15d1fa25fbc8805bc642868506156d6a1e039894b22208dc815cb05`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452bc7e8ea3008eb0f1f9111ba97de40b67d96c56e216e30bf63254742e24f3`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd5fc0222c86ed911ff4bd61b730ad97a5a00d06bc884839eeaf0ad9062ca02`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9f93d66a443eb8c7c3c92d9822d72f415dcc3e5ceec79e7e7479e72952cb`  
		Last Modified: Tue, 12 Mar 2019 01:14:13 GMT  
		Size: 92.0 MB (91984478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548ae50cd133cbfa6803fc14194a74fe012e8ef37d0eab0559c9b04976d7a9bc`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857cdc0f436dd95ace6de15c62b84aca39c3fb38d42913aec6743e41fc70159`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:2a0aaf3f66e83089fec28d3ad4398ff4bd5b747639047169adfc8af761db3ec8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205971346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f75019280d9a4918094025c894b3a8c9bb45a21f20f27754894cda46f163daa`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 10:54:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Mar 2019 10:58:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:58:53 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Mar 2019 10:58:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Mar 2019 10:59:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Mar 2019 10:59:08 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Mar 2019 10:59:09 GMT
ARG BONITA_VERSION
# Thu, 14 Mar 2019 10:59:11 GMT
ARG TOMCAT_VERSION
# Thu, 14 Mar 2019 10:59:13 GMT
ARG BONITA_SHA256
# Thu, 14 Mar 2019 10:59:14 GMT
ARG BONITA_URL
# Thu, 14 Mar 2019 11:00:08 GMT
ENV BONITA_VERSION=7.8.3
# Thu, 14 Mar 2019 11:00:09 GMT
ENV TOMCAT_VERSION=8.5.34
# Thu, 14 Mar 2019 11:00:10 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Thu, 14 Mar 2019 11:00:12 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Thu, 14 Mar 2019 11:00:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:38 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:43 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Mar 2019 11:00:44 GMT
VOLUME [/opt/bonita]
# Thu, 14 Mar 2019 11:00:45 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Thu, 14 Mar 2019 11:00:46 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Thu, 14 Mar 2019 11:00:48 GMT
EXPOSE 8080
# Thu, 14 Mar 2019 11:00:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5687d25bc03e08481ab9e29dab4e76c96f93f009cef8da8567c7af4ddcaa51a`  
		Last Modified: Thu, 14 Mar 2019 11:01:35 GMT  
		Size: 73.8 MB (73782779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbd0a15c7b02787373f566564c7a4b6cab9ca026be7a308f468edf4a0716e97`  
		Last Modified: Thu, 14 Mar 2019 11:01:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac5e2f94b4c37d3a2d739c2209bb293997e8473d1c4f1e718d0f6a3c0cd01c5`  
		Last Modified: Thu, 14 Mar 2019 11:01:10 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f86354aabbaa35b1d5b28bf4b0cc80bce417565d45d4fdbf300e174d4fc2b`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cc040f15e5c59c0d32df0ee11141946f7d06948865db3c53ae5cf0c74b9f0`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485a8950bdcaf19a1f9ca25ff8cce14eef6a028a021ec0816fac9843d660bd9d`  
		Last Modified: Thu, 14 Mar 2019 11:01:55 GMT  
		Size: 92.0 MB (91984483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddccde26445188f5e4d488c19b53f984c10c1292486239db0c62a39d544bab4`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa180081b8a94e365628318a7742fe3babe1095b899583eda8719b0619bfc91e`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:8be18bcf8cb0ca741f832e115997312f1dfa86764b41320d0f97092e42c2cdc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215672313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02583376e8cd4151b4339d1f0b5c7f7a3613d9c318d4887492b1947c5f142322`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:45:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:50:10 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 09:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 09:50:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 09:50:49 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 09:50:56 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 09:51:00 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 09:51:03 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 09:51:05 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 09:52:52 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 09:52:55 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 09:52:58 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 09:53:00 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 09:54:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:10 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 09:54:22 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 09:54:25 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 09:54:26 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 09:54:28 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 09:54:34 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c086ce01eaf2427a864dd03d8ca7be4d6af7508dd1531ca8afe96357483f69`  
		Last Modified: Tue, 12 Mar 2019 09:55:13 GMT  
		Size: 77.3 MB (77290386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7f530a7e01f7871a5b863aee13f625711b5068b5762e1748f3c2c7b4efb6d`  
		Last Modified: Tue, 12 Mar 2019 09:54:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c71c4d894477cf828c5a4006b780010b4b8f991c2bce5230ed3ab13c7b5f8d`  
		Last Modified: Tue, 12 Mar 2019 09:54:56 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d78e2b7c8d887acf423caaa34cc30dc820303ab1a89c9136c3b5f0ba934399`  
		Last Modified: Tue, 12 Mar 2019 09:54:54 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05213e2042ec5ebd259d4fde23141419d5c542a5baf97df493c44a6702557c12`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b8c1abf46aaa188f62efb74ed68894a896347a5b3acd87e5edf7464adcf27`  
		Last Modified: Tue, 12 Mar 2019 09:55:31 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98466bae79544ad77a31a01d74118f364f7aa9edb762e1ffbd1cc6bbfcddde62`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9fa3766deb9c3bb339c5507e36899fd7dbb2dba44a8bec040362c5b2c7bebf`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.3`

```console
$ docker pull bonita@sha256:c6ab95b35cb2b06f7a6968fc11d2339a8cc527b1e7668e2d0fd3785eac119b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.3` - linux; amd64

```console
$ docker pull bonita@sha256:0b71895a49a79be05168f667edfdf00fefdb341e6d891723f3a6e886a13dd4a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219018569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de6cfd1cbbd6cdb6cbb624f084071a96b5c6626a9fea659d9202bec47aab17e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:12:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 01:13:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:05 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 01:13:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 01:13:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 01:13:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 01:13:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 01:13:35 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:37 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 01:13:39 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 01:13:39 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 01:13:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec73bccff4570968e300863cbb9e644a554e2463888fc832cb2ec072147503`  
		Last Modified: Tue, 12 Mar 2019 01:14:04 GMT  
		Size: 82.8 MB (82819497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3917618e8d89892db741b66f063293c151b22b30f3cbbaed2aeb2bc52994a`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d0acbf15d1fa25fbc8805bc642868506156d6a1e039894b22208dc815cb05`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452bc7e8ea3008eb0f1f9111ba97de40b67d96c56e216e30bf63254742e24f3`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd5fc0222c86ed911ff4bd61b730ad97a5a00d06bc884839eeaf0ad9062ca02`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9f93d66a443eb8c7c3c92d9822d72f415dcc3e5ceec79e7e7479e72952cb`  
		Last Modified: Tue, 12 Mar 2019 01:14:13 GMT  
		Size: 92.0 MB (91984478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548ae50cd133cbfa6803fc14194a74fe012e8ef37d0eab0559c9b04976d7a9bc`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857cdc0f436dd95ace6de15c62b84aca39c3fb38d42913aec6743e41fc70159`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.3` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:2a0aaf3f66e83089fec28d3ad4398ff4bd5b747639047169adfc8af761db3ec8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205971346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f75019280d9a4918094025c894b3a8c9bb45a21f20f27754894cda46f163daa`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 10:54:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Mar 2019 10:58:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:58:53 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Mar 2019 10:58:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Mar 2019 10:59:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Mar 2019 10:59:08 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Mar 2019 10:59:09 GMT
ARG BONITA_VERSION
# Thu, 14 Mar 2019 10:59:11 GMT
ARG TOMCAT_VERSION
# Thu, 14 Mar 2019 10:59:13 GMT
ARG BONITA_SHA256
# Thu, 14 Mar 2019 10:59:14 GMT
ARG BONITA_URL
# Thu, 14 Mar 2019 11:00:08 GMT
ENV BONITA_VERSION=7.8.3
# Thu, 14 Mar 2019 11:00:09 GMT
ENV TOMCAT_VERSION=8.5.34
# Thu, 14 Mar 2019 11:00:10 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Thu, 14 Mar 2019 11:00:12 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Thu, 14 Mar 2019 11:00:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:38 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:43 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Mar 2019 11:00:44 GMT
VOLUME [/opt/bonita]
# Thu, 14 Mar 2019 11:00:45 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Thu, 14 Mar 2019 11:00:46 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Thu, 14 Mar 2019 11:00:48 GMT
EXPOSE 8080
# Thu, 14 Mar 2019 11:00:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5687d25bc03e08481ab9e29dab4e76c96f93f009cef8da8567c7af4ddcaa51a`  
		Last Modified: Thu, 14 Mar 2019 11:01:35 GMT  
		Size: 73.8 MB (73782779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbd0a15c7b02787373f566564c7a4b6cab9ca026be7a308f468edf4a0716e97`  
		Last Modified: Thu, 14 Mar 2019 11:01:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac5e2f94b4c37d3a2d739c2209bb293997e8473d1c4f1e718d0f6a3c0cd01c5`  
		Last Modified: Thu, 14 Mar 2019 11:01:10 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f86354aabbaa35b1d5b28bf4b0cc80bce417565d45d4fdbf300e174d4fc2b`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cc040f15e5c59c0d32df0ee11141946f7d06948865db3c53ae5cf0c74b9f0`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485a8950bdcaf19a1f9ca25ff8cce14eef6a028a021ec0816fac9843d660bd9d`  
		Last Modified: Thu, 14 Mar 2019 11:01:55 GMT  
		Size: 92.0 MB (91984483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddccde26445188f5e4d488c19b53f984c10c1292486239db0c62a39d544bab4`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa180081b8a94e365628318a7742fe3babe1095b899583eda8719b0619bfc91e`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.3` - linux; ppc64le

```console
$ docker pull bonita@sha256:8be18bcf8cb0ca741f832e115997312f1dfa86764b41320d0f97092e42c2cdc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215672313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02583376e8cd4151b4339d1f0b5c7f7a3613d9c318d4887492b1947c5f142322`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:45:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:50:10 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 09:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 09:50:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 09:50:49 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 09:50:56 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 09:51:00 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 09:51:03 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 09:51:05 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 09:52:52 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 09:52:55 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 09:52:58 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 09:53:00 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 09:54:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:10 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 09:54:22 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 09:54:25 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 09:54:26 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 09:54:28 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 09:54:34 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c086ce01eaf2427a864dd03d8ca7be4d6af7508dd1531ca8afe96357483f69`  
		Last Modified: Tue, 12 Mar 2019 09:55:13 GMT  
		Size: 77.3 MB (77290386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7f530a7e01f7871a5b863aee13f625711b5068b5762e1748f3c2c7b4efb6d`  
		Last Modified: Tue, 12 Mar 2019 09:54:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c71c4d894477cf828c5a4006b780010b4b8f991c2bce5230ed3ab13c7b5f8d`  
		Last Modified: Tue, 12 Mar 2019 09:54:56 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d78e2b7c8d887acf423caaa34cc30dc820303ab1a89c9136c3b5f0ba934399`  
		Last Modified: Tue, 12 Mar 2019 09:54:54 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05213e2042ec5ebd259d4fde23141419d5c542a5baf97df493c44a6702557c12`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b8c1abf46aaa188f62efb74ed68894a896347a5b3acd87e5edf7464adcf27`  
		Last Modified: Tue, 12 Mar 2019 09:55:31 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98466bae79544ad77a31a01d74118f364f7aa9edb762e1ffbd1cc6bbfcddde62`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9fa3766deb9c3bb339c5507e36899fd7dbb2dba44a8bec040362c5b2c7bebf`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:c6ab95b35cb2b06f7a6968fc11d2339a8cc527b1e7668e2d0fd3785eac119b18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:0b71895a49a79be05168f667edfdf00fefdb341e6d891723f3a6e886a13dd4a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219018569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de6cfd1cbbd6cdb6cbb624f084071a96b5c6626a9fea659d9202bec47aab17e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:12:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 01:13:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:05 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 01:13:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 01:13:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 01:13:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 01:13:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 01:13:35 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:37 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 01:13:39 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 01:13:39 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 01:13:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec73bccff4570968e300863cbb9e644a554e2463888fc832cb2ec072147503`  
		Last Modified: Tue, 12 Mar 2019 01:14:04 GMT  
		Size: 82.8 MB (82819497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3917618e8d89892db741b66f063293c151b22b30f3cbbaed2aeb2bc52994a`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d0acbf15d1fa25fbc8805bc642868506156d6a1e039894b22208dc815cb05`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452bc7e8ea3008eb0f1f9111ba97de40b67d96c56e216e30bf63254742e24f3`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd5fc0222c86ed911ff4bd61b730ad97a5a00d06bc884839eeaf0ad9062ca02`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9f93d66a443eb8c7c3c92d9822d72f415dcc3e5ceec79e7e7479e72952cb`  
		Last Modified: Tue, 12 Mar 2019 01:14:13 GMT  
		Size: 92.0 MB (91984478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548ae50cd133cbfa6803fc14194a74fe012e8ef37d0eab0559c9b04976d7a9bc`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857cdc0f436dd95ace6de15c62b84aca39c3fb38d42913aec6743e41fc70159`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:2a0aaf3f66e83089fec28d3ad4398ff4bd5b747639047169adfc8af761db3ec8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205971346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f75019280d9a4918094025c894b3a8c9bb45a21f20f27754894cda46f163daa`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 10:54:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Mar 2019 10:58:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:58:53 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Mar 2019 10:58:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Mar 2019 10:59:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Mar 2019 10:59:08 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Mar 2019 10:59:09 GMT
ARG BONITA_VERSION
# Thu, 14 Mar 2019 10:59:11 GMT
ARG TOMCAT_VERSION
# Thu, 14 Mar 2019 10:59:13 GMT
ARG BONITA_SHA256
# Thu, 14 Mar 2019 10:59:14 GMT
ARG BONITA_URL
# Thu, 14 Mar 2019 11:00:08 GMT
ENV BONITA_VERSION=7.8.3
# Thu, 14 Mar 2019 11:00:09 GMT
ENV TOMCAT_VERSION=8.5.34
# Thu, 14 Mar 2019 11:00:10 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Thu, 14 Mar 2019 11:00:12 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Thu, 14 Mar 2019 11:00:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:38 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:43 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Mar 2019 11:00:44 GMT
VOLUME [/opt/bonita]
# Thu, 14 Mar 2019 11:00:45 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Thu, 14 Mar 2019 11:00:46 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Thu, 14 Mar 2019 11:00:48 GMT
EXPOSE 8080
# Thu, 14 Mar 2019 11:00:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5687d25bc03e08481ab9e29dab4e76c96f93f009cef8da8567c7af4ddcaa51a`  
		Last Modified: Thu, 14 Mar 2019 11:01:35 GMT  
		Size: 73.8 MB (73782779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbd0a15c7b02787373f566564c7a4b6cab9ca026be7a308f468edf4a0716e97`  
		Last Modified: Thu, 14 Mar 2019 11:01:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac5e2f94b4c37d3a2d739c2209bb293997e8473d1c4f1e718d0f6a3c0cd01c5`  
		Last Modified: Thu, 14 Mar 2019 11:01:10 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f86354aabbaa35b1d5b28bf4b0cc80bce417565d45d4fdbf300e174d4fc2b`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cc040f15e5c59c0d32df0ee11141946f7d06948865db3c53ae5cf0c74b9f0`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485a8950bdcaf19a1f9ca25ff8cce14eef6a028a021ec0816fac9843d660bd9d`  
		Last Modified: Thu, 14 Mar 2019 11:01:55 GMT  
		Size: 92.0 MB (91984483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddccde26445188f5e4d488c19b53f984c10c1292486239db0c62a39d544bab4`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa180081b8a94e365628318a7742fe3babe1095b899583eda8719b0619bfc91e`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:8be18bcf8cb0ca741f832e115997312f1dfa86764b41320d0f97092e42c2cdc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215672313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02583376e8cd4151b4339d1f0b5c7f7a3613d9c318d4887492b1947c5f142322`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:45:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:50:10 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 09:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 09:50:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 09:50:49 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 09:50:56 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 09:51:00 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 09:51:03 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 09:51:05 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 09:52:52 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 09:52:55 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 09:52:58 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 09:53:00 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 09:54:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:10 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 09:54:22 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 09:54:25 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 09:54:26 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 09:54:28 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 09:54:34 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c086ce01eaf2427a864dd03d8ca7be4d6af7508dd1531ca8afe96357483f69`  
		Last Modified: Tue, 12 Mar 2019 09:55:13 GMT  
		Size: 77.3 MB (77290386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7f530a7e01f7871a5b863aee13f625711b5068b5762e1748f3c2c7b4efb6d`  
		Last Modified: Tue, 12 Mar 2019 09:54:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c71c4d894477cf828c5a4006b780010b4b8f991c2bce5230ed3ab13c7b5f8d`  
		Last Modified: Tue, 12 Mar 2019 09:54:56 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d78e2b7c8d887acf423caaa34cc30dc820303ab1a89c9136c3b5f0ba934399`  
		Last Modified: Tue, 12 Mar 2019 09:54:54 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05213e2042ec5ebd259d4fde23141419d5c542a5baf97df493c44a6702557c12`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b8c1abf46aaa188f62efb74ed68894a896347a5b3acd87e5edf7464adcf27`  
		Last Modified: Tue, 12 Mar 2019 09:55:31 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98466bae79544ad77a31a01d74118f364f7aa9edb762e1ffbd1cc6bbfcddde62`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9fa3766deb9c3bb339c5507e36899fd7dbb2dba44a8bec040362c5b2c7bebf`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
