<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.6`](#bonita76)
-	[`bonita:7.6.3`](#bonita763)
-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.5`](#bonita775)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.6`

```console
$ docker pull bonita@sha256:32df9500b1a581f71fc97a57161161e7524d57912ee01a0fc9862072750ab6e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.6` - linux; amd64

```console
$ docker pull bonita@sha256:3eef92fb39a50f6bd3b5528fb62e859943e747514d6e5998b2960f1a4a479439
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215227805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0703c57542c09919cda9e7cae842b1a0fed7f9c7d7f34beb71b2caf96aa86f8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 19 Nov 2018 21:45:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:46:06 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 19 Nov 2018 21:46:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 19 Nov 2018 21:46:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Nov 2018 21:46:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG TOMCAT_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_SHA256
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_URL
# Mon, 19 Nov 2018 21:46:11 GMT
ENV BONITA_VERSION=7.6.3
# Mon, 19 Nov 2018 21:46:11 GMT
ENV TOMCAT_VERSION=8.5.23
# Mon, 19 Nov 2018 21:46:11 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Mon, 19 Nov 2018 21:46:11 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Mon, 19 Nov 2018 21:46:18 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 19 Nov 2018 21:46:20 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 19 Nov 2018 21:46:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 19 Nov 2018 21:46:21 GMT
VOLUME [/opt/bonita]
# Mon, 19 Nov 2018 21:46:22 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Mon, 19 Nov 2018 21:46:22 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Mon, 19 Nov 2018 21:46:22 GMT
EXPOSE 8080/tcp
# Mon, 19 Nov 2018 21:46:22 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:c084927be77add4706e0c908de46ec1dd0db4ce849a773899c1a630087063dfd`  
		Last Modified: Mon, 19 Nov 2018 21:47:41 GMT  
		Size: 82.8 MB (82841719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329c3581de3a6cdc2e24b5636585d3cb5e33462542384f90261d14e3d96bfc7`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338647a0796b395959fccb1402397860a0c1af57ee0dfb95443aae1340d00b3a`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008bf8bd357c99ed8cfd588503e6eb4fb19e9bae3b539a870a389b5381f754b2`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 140.6 KB (140581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698af0515a627d87ffe6d51da9b8b5e3c0d2d53722528c288b6e906bc6b57415`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5bec883558526b745183471aab53e3441ba218478753d122655b24d86838f`  
		Last Modified: Mon, 19 Nov 2018 21:47:34 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6985408d4532693a17ade6afe13ca7ac860992e2d5adfe3398c5f7245f2d8fba`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 6.4 KB (6390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3bf7d7fa67e7263888a22edb875e8c6b9324d6d39df12eda6e87b448f6dc5`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:66f5b8730186da8237e32a8bec60cb91571148c4052ada3838b14299e121c723
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201988843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def4f752f316040bd05defea35e327623f53187b064624fd0c0d3dcf4f98b747`
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
# Tue, 20 Nov 2018 10:17:14 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 20 Nov 2018 10:17:15 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 20 Nov 2018 10:17:16 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 20 Nov 2018 10:17:17 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 20 Nov 2018 10:17:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:17:39 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:17:42 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 20 Nov 2018 10:17:43 GMT
VOLUME [/opt/bonita]
# Tue, 20 Nov 2018 10:17:44 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Tue, 20 Nov 2018 10:17:45 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 20 Nov 2018 10:17:46 GMT
EXPOSE 8080/tcp
# Tue, 20 Nov 2018 10:17:46 GMT
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
	-	`sha256:53ac1b790918c1537d238108d51b04d63e298aa82baa776d34036f9f62c2e84c`  
		Last Modified: Tue, 20 Nov 2018 10:19:32 GMT  
		Size: 88.3 MB (88320702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a898ea32f04330e044a13f4a1e176af18910b313f50fc233599ed1d135484`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 6.4 KB (6389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afeb81e39f543bbbe121614fddf03b46de5593e5d9faa50f8fd0b227c71ac85`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6` - linux; ppc64le

```console
$ docker pull bonita@sha256:92e50e049f7ff924b37120a61af193a9ce7c0a36558c4394da0bd61013293223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211919672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ec7da6afe4489a218a5f4d953c2a315b3146ae54be6f8cb37d91a482436663`
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
# Tue, 20 Nov 2018 10:13:21 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 20 Nov 2018 10:13:22 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 20 Nov 2018 10:13:23 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 20 Nov 2018 10:13:23 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 20 Nov 2018 10:14:51 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:14:55 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:15:00 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 20 Nov 2018 10:15:01 GMT
VOLUME [/opt/bonita]
# Tue, 20 Nov 2018 10:15:02 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Tue, 20 Nov 2018 10:15:04 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 20 Nov 2018 10:15:05 GMT
EXPOSE 8080/tcp
# Tue, 20 Nov 2018 10:15:07 GMT
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
	-	`sha256:c5e80c461ddc3402e027c24826993ece1e0f9ffffc201fef9026eb2c656d3c32`  
		Last Modified: Tue, 20 Nov 2018 10:17:03 GMT  
		Size: 88.3 MB (88320726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea4f4706f27fa2646b2585dfc4305e9d71bd57f2680ab0ace88a868730901d`  
		Last Modified: Tue, 20 Nov 2018 10:16:55 GMT  
		Size: 6.4 KB (6420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345e97371cc0592f796745c068ce1128bfa3e1b56445171e99e06afcd825677f`  
		Last Modified: Tue, 20 Nov 2018 10:16:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.3`

```console
$ docker pull bonita@sha256:32df9500b1a581f71fc97a57161161e7524d57912ee01a0fc9862072750ab6e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.6.3` - linux; amd64

```console
$ docker pull bonita@sha256:3eef92fb39a50f6bd3b5528fb62e859943e747514d6e5998b2960f1a4a479439
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215227805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0703c57542c09919cda9e7cae842b1a0fed7f9c7d7f34beb71b2caf96aa86f8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 19 Nov 2018 21:45:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:46:06 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 19 Nov 2018 21:46:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 19 Nov 2018 21:46:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Nov 2018 21:46:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG TOMCAT_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_SHA256
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_URL
# Mon, 19 Nov 2018 21:46:11 GMT
ENV BONITA_VERSION=7.6.3
# Mon, 19 Nov 2018 21:46:11 GMT
ENV TOMCAT_VERSION=8.5.23
# Mon, 19 Nov 2018 21:46:11 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Mon, 19 Nov 2018 21:46:11 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Mon, 19 Nov 2018 21:46:18 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 19 Nov 2018 21:46:20 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 19 Nov 2018 21:46:21 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 19 Nov 2018 21:46:21 GMT
VOLUME [/opt/bonita]
# Mon, 19 Nov 2018 21:46:22 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Mon, 19 Nov 2018 21:46:22 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Mon, 19 Nov 2018 21:46:22 GMT
EXPOSE 8080/tcp
# Mon, 19 Nov 2018 21:46:22 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:c084927be77add4706e0c908de46ec1dd0db4ce849a773899c1a630087063dfd`  
		Last Modified: Mon, 19 Nov 2018 21:47:41 GMT  
		Size: 82.8 MB (82841719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329c3581de3a6cdc2e24b5636585d3cb5e33462542384f90261d14e3d96bfc7`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338647a0796b395959fccb1402397860a0c1af57ee0dfb95443aae1340d00b3a`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008bf8bd357c99ed8cfd588503e6eb4fb19e9bae3b539a870a389b5381f754b2`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 140.6 KB (140581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698af0515a627d87ffe6d51da9b8b5e3c0d2d53722528c288b6e906bc6b57415`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc5bec883558526b745183471aab53e3441ba218478753d122655b24d86838f`  
		Last Modified: Mon, 19 Nov 2018 21:47:34 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6985408d4532693a17ade6afe13ca7ac860992e2d5adfe3398c5f7245f2d8fba`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 6.4 KB (6390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f3bf7d7fa67e7263888a22edb875e8c6b9324d6d39df12eda6e87b448f6dc5`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6.3` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:66f5b8730186da8237e32a8bec60cb91571148c4052ada3838b14299e121c723
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201988843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def4f752f316040bd05defea35e327623f53187b064624fd0c0d3dcf4f98b747`
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
# Tue, 20 Nov 2018 10:17:14 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 20 Nov 2018 10:17:15 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 20 Nov 2018 10:17:16 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 20 Nov 2018 10:17:17 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 20 Nov 2018 10:17:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:17:39 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:17:42 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 20 Nov 2018 10:17:43 GMT
VOLUME [/opt/bonita]
# Tue, 20 Nov 2018 10:17:44 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Tue, 20 Nov 2018 10:17:45 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 20 Nov 2018 10:17:46 GMT
EXPOSE 8080/tcp
# Tue, 20 Nov 2018 10:17:46 GMT
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
	-	`sha256:53ac1b790918c1537d238108d51b04d63e298aa82baa776d34036f9f62c2e84c`  
		Last Modified: Tue, 20 Nov 2018 10:19:32 GMT  
		Size: 88.3 MB (88320702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90a898ea32f04330e044a13f4a1e176af18910b313f50fc233599ed1d135484`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 6.4 KB (6389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afeb81e39f543bbbe121614fddf03b46de5593e5d9faa50f8fd0b227c71ac85`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6.3` - linux; ppc64le

```console
$ docker pull bonita@sha256:92e50e049f7ff924b37120a61af193a9ce7c0a36558c4394da0bd61013293223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211919672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7ec7da6afe4489a218a5f4d953c2a315b3146ae54be6f8cb37d91a482436663`
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
# Tue, 20 Nov 2018 10:13:21 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 20 Nov 2018 10:13:22 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 20 Nov 2018 10:13:23 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 20 Nov 2018 10:13:23 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 20 Nov 2018 10:14:51 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:14:55 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 20 Nov 2018 10:15:00 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 20 Nov 2018 10:15:01 GMT
VOLUME [/opt/bonita]
# Tue, 20 Nov 2018 10:15:02 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Tue, 20 Nov 2018 10:15:04 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 20 Nov 2018 10:15:05 GMT
EXPOSE 8080/tcp
# Tue, 20 Nov 2018 10:15:07 GMT
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
	-	`sha256:c5e80c461ddc3402e027c24826993ece1e0f9ffffc201fef9026eb2c656d3c32`  
		Last Modified: Tue, 20 Nov 2018 10:17:03 GMT  
		Size: 88.3 MB (88320726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ea4f4706f27fa2646b2585dfc4305e9d71bd57f2680ab0ace88a868730901d`  
		Last Modified: Tue, 20 Nov 2018 10:16:55 GMT  
		Size: 6.4 KB (6420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345e97371cc0592f796745c068ce1128bfa3e1b56445171e99e06afcd825677f`  
		Last Modified: Tue, 20 Nov 2018 10:16:55 GMT  
		Size: 1.7 KB (1712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7`

```console
$ docker pull bonita@sha256:906179fb31569b74ac2e1b3e7c4845a5825022671dd3dc948b6b75aaed24409a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:d6ba2ca310f67c7a33d2340788fb6ec54ce9b2a98f4c32f0455d70ce82408364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e338dd26c595b0d1f6e658b7950414df0f454ee47e8d8a0a3678c22c5c3fb9d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 19 Nov 2018 21:45:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:46:06 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 19 Nov 2018 21:46:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 19 Nov 2018 21:46:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Nov 2018 21:46:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG TOMCAT_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_SHA256
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 00:19:51 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 00:19:59 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 00:20:00 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 00:20:01 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 00:20:02 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 00:20:02 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 00:20:17 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 00:20:17 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 00:20:17 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:c084927be77add4706e0c908de46ec1dd0db4ce849a773899c1a630087063dfd`  
		Last Modified: Mon, 19 Nov 2018 21:47:41 GMT  
		Size: 82.8 MB (82841719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329c3581de3a6cdc2e24b5636585d3cb5e33462542384f90261d14e3d96bfc7`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338647a0796b395959fccb1402397860a0c1af57ee0dfb95443aae1340d00b3a`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008bf8bd357c99ed8cfd588503e6eb4fb19e9bae3b539a870a389b5381f754b2`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 140.6 KB (140581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698af0515a627d87ffe6d51da9b8b5e3c0d2d53722528c288b6e906bc6b57415`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9a52a5d1c8c3241bbb2c128397b5526c7432aadf53eb2f8406e4262bfd089c`  
		Last Modified: Tue, 04 Dec 2018 00:20:58 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0592fa6d7b32a0f3f8c239a3a5691dcbfc33de8a09c53eb2657e98ac0a292d`  
		Last Modified: Tue, 04 Dec 2018 00:20:51 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4d6f6cfbb9af4e93e6df931f6fffe259eca95c2df5af921ba9aadda26406c9`  
		Last Modified: Tue, 04 Dec 2018 00:20:51 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.5`

```console
$ docker pull bonita@sha256:906179fb31569b74ac2e1b3e7c4845a5825022671dd3dc948b6b75aaed24409a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.7.5` - linux; amd64

```console
$ docker pull bonita@sha256:d6ba2ca310f67c7a33d2340788fb6ec54ce9b2a98f4c32f0455d70ce82408364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e338dd26c595b0d1f6e658b7950414df0f454ee47e8d8a0a3678c22c5c3fb9d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 19 Nov 2018 21:45:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:46:06 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 19 Nov 2018 21:46:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 19 Nov 2018 21:46:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Nov 2018 21:46:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG TOMCAT_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_SHA256
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 00:19:51 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 00:19:59 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 00:20:00 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 00:20:01 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 00:20:02 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 00:20:02 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 00:20:17 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 00:20:17 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 00:20:17 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:c084927be77add4706e0c908de46ec1dd0db4ce849a773899c1a630087063dfd`  
		Last Modified: Mon, 19 Nov 2018 21:47:41 GMT  
		Size: 82.8 MB (82841719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329c3581de3a6cdc2e24b5636585d3cb5e33462542384f90261d14e3d96bfc7`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338647a0796b395959fccb1402397860a0c1af57ee0dfb95443aae1340d00b3a`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008bf8bd357c99ed8cfd588503e6eb4fb19e9bae3b539a870a389b5381f754b2`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 140.6 KB (140581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698af0515a627d87ffe6d51da9b8b5e3c0d2d53722528c288b6e906bc6b57415`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9a52a5d1c8c3241bbb2c128397b5526c7432aadf53eb2f8406e4262bfd089c`  
		Last Modified: Tue, 04 Dec 2018 00:20:58 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0592fa6d7b32a0f3f8c239a3a5691dcbfc33de8a09c53eb2657e98ac0a292d`  
		Last Modified: Tue, 04 Dec 2018 00:20:51 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4d6f6cfbb9af4e93e6df931f6fffe259eca95c2df5af921ba9aadda26406c9`  
		Last Modified: Tue, 04 Dec 2018 00:20:51 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:906179fb31569b74ac2e1b3e7c4845a5825022671dd3dc948b6b75aaed24409a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:d6ba2ca310f67c7a33d2340788fb6ec54ce9b2a98f4c32f0455d70ce82408364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214725883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e338dd26c595b0d1f6e658b7950414df0f454ee47e8d8a0a3678c22c5c3fb9d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 19 Nov 2018 21:45:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:46:06 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 19 Nov 2018 21:46:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 19 Nov 2018 21:46:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 19 Nov 2018 21:46:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG TOMCAT_VERSION
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_SHA256
# Mon, 19 Nov 2018 21:46:10 GMT
ARG BONITA_URL
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_VERSION=7.7.5
# Tue, 04 Dec 2018 00:19:51 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Tue, 04 Dec 2018 00:19:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Tue, 04 Dec 2018 00:19:59 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 00:20:00 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 04 Dec 2018 00:20:01 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 04 Dec 2018 00:20:02 GMT
VOLUME [/opt/bonita]
# Tue, 04 Dec 2018 00:20:02 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Tue, 04 Dec 2018 00:20:17 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 04 Dec 2018 00:20:17 GMT
EXPOSE 8080/tcp
# Tue, 04 Dec 2018 00:20:17 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:c084927be77add4706e0c908de46ec1dd0db4ce849a773899c1a630087063dfd`  
		Last Modified: Mon, 19 Nov 2018 21:47:41 GMT  
		Size: 82.8 MB (82841719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a329c3581de3a6cdc2e24b5636585d3cb5e33462542384f90261d14e3d96bfc7`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338647a0796b395959fccb1402397860a0c1af57ee0dfb95443aae1340d00b3a`  
		Last Modified: Mon, 19 Nov 2018 21:47:27 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008bf8bd357c99ed8cfd588503e6eb4fb19e9bae3b539a870a389b5381f754b2`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 140.6 KB (140581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698af0515a627d87ffe6d51da9b8b5e3c0d2d53722528c288b6e906bc6b57415`  
		Last Modified: Mon, 19 Nov 2018 21:47:26 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9a52a5d1c8c3241bbb2c128397b5526c7432aadf53eb2f8406e4262bfd089c`  
		Last Modified: Tue, 04 Dec 2018 00:20:58 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0592fa6d7b32a0f3f8c239a3a5691dcbfc33de8a09c53eb2657e98ac0a292d`  
		Last Modified: Tue, 04 Dec 2018 00:20:51 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4d6f6cfbb9af4e93e6df931f6fffe259eca95c2df5af921ba9aadda26406c9`  
		Last Modified: Tue, 04 Dec 2018 00:20:51 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
