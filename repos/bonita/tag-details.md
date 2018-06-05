<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:7.6.3`](#bonita763)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:946f8a68f86cb8aee3323b90878cfbd07a6c2d61ed590d112630a2566cf4e622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:b28db79e8be77002771cb092d1fbb985c7e9119c0f0e66dbc976e5205e904b4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214402555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aafb06769711af976186d3902ba9723de101931ab3c3761ea62d3ff1a18c48`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 05 Jun 2018 21:37:32 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:37:33 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 05 Jun 2018 21:37:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 05 Jun 2018 21:37:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 05 Jun 2018 21:37:43 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_VERSION
# Tue, 05 Jun 2018 21:37:43 GMT
ARG TOMCAT_VERSION
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_SHA256
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_URL
# Tue, 05 Jun 2018 21:37:43 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 05 Jun 2018 21:37:44 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 05 Jun 2018 21:37:44 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 05 Jun 2018 21:37:44 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 05 Jun 2018 21:42:37 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 05 Jun 2018 21:42:39 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 05 Jun 2018 21:42:41 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 05 Jun 2018 21:42:41 GMT
VOLUME [/opt/bonita]
# Tue, 05 Jun 2018 21:42:41 GMT
COPY dir:67158d50f6a23f242c6ece683aa22b62bf43e8403082c8a4b4c012ca3a3a0ac5 in /opt/files 
# Tue, 05 Jun 2018 21:42:41 GMT
COPY dir:9c7efc1f1052334e3fa2155bf4baf6140b0737b2a90d312707da88cd5f7679da in /opt/templates 
# Tue, 05 Jun 2018 21:42:41 GMT
EXPOSE 8080/tcp
# Tue, 05 Jun 2018 21:42:41 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc51898cfce02031db265219ce8f2ffc79ecd6480fd4a04cf6178f10637f6e4f`  
		Last Modified: Tue, 05 Jun 2018 21:48:35 GMT  
		Size: 82.8 MB (82804600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032320c6d92bf7226db0984955056c7a07ef4f51bd024d87358faf21e5986dd1`  
		Last Modified: Tue, 05 Jun 2018 21:48:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd77ba927c05fc48d7916c52b1120c566393d6426a73c255d95eaacce469d472`  
		Last Modified: Tue, 05 Jun 2018 21:48:06 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77967c8cbde072c4aa87cbcde7ca6f4aac3dc1d5dc5cc5ec1c6fb2a7c8cf3d62`  
		Last Modified: Tue, 05 Jun 2018 21:48:05 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120800aab22b26e76177cc350c53bbc55527c80a0afa6e7e4290a74325862122`  
		Last Modified: Tue, 05 Jun 2018 21:48:04 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839578ed1158cc171a7560c3201111218f4e08014d550d43db7cebb8b3db3397`  
		Last Modified: Tue, 05 Jun 2018 21:48:39 GMT  
		Size: 87.5 MB (87503860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8ad8f007a600b0722931dd226b0a3603bf7c36236cc55340586008e46188d3`  
		Last Modified: Tue, 05 Jun 2018 21:48:03 GMT  
		Size: 6.2 KB (6176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e47b655784d41d9f6bc5fdcc79cb752a0a71b11caa5aee03457d64016bf1959`  
		Last Modified: Tue, 05 Jun 2018 21:48:04 GMT  
		Size: 1.6 KB (1629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.3`

```console
$ docker pull bonita@sha256:7ead73460350c483de810c873ccb3c3f5a0b502dcc9b173d63462ced24b055b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.6.3` - linux; amd64

```console
$ docker pull bonita@sha256:e3b376f525a3df47ab1ff7ff112e14603f9f67e5f1c061e5b542a54dc46dc8e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215219645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa36040564ca05852f97085bd73fb86e751481126e4872cdbebaba3b9eef9a8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 05 Jun 2018 21:37:32 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:37:33 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 05 Jun 2018 21:37:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 05 Jun 2018 21:37:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 05 Jun 2018 21:37:43 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_VERSION
# Tue, 05 Jun 2018 21:37:43 GMT
ARG TOMCAT_VERSION
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_SHA256
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_URL
# Tue, 05 Jun 2018 21:42:50 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 05 Jun 2018 21:42:50 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 05 Jun 2018 21:42:51 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 05 Jun 2018 21:42:51 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 05 Jun 2018 21:47:53 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 05 Jun 2018 21:47:54 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 05 Jun 2018 21:47:56 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 05 Jun 2018 21:47:56 GMT
VOLUME [/opt/bonita]
# Tue, 05 Jun 2018 21:47:56 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Tue, 05 Jun 2018 21:47:57 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Tue, 05 Jun 2018 21:47:57 GMT
EXPOSE 8080/tcp
# Tue, 05 Jun 2018 21:47:57 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc51898cfce02031db265219ce8f2ffc79ecd6480fd4a04cf6178f10637f6e4f`  
		Last Modified: Tue, 05 Jun 2018 21:48:35 GMT  
		Size: 82.8 MB (82804600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032320c6d92bf7226db0984955056c7a07ef4f51bd024d87358faf21e5986dd1`  
		Last Modified: Tue, 05 Jun 2018 21:48:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd77ba927c05fc48d7916c52b1120c566393d6426a73c255d95eaacce469d472`  
		Last Modified: Tue, 05 Jun 2018 21:48:06 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77967c8cbde072c4aa87cbcde7ca6f4aac3dc1d5dc5cc5ec1c6fb2a7c8cf3d62`  
		Last Modified: Tue, 05 Jun 2018 21:48:05 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120800aab22b26e76177cc350c53bbc55527c80a0afa6e7e4290a74325862122`  
		Last Modified: Tue, 05 Jun 2018 21:48:04 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20184c13ce4cbe13dea1234a9ccb9023264db5f3c476008aa10fe67c5398217c`  
		Last Modified: Tue, 05 Jun 2018 21:49:07 GMT  
		Size: 88.3 MB (88320712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931a952ae7f9bb1c2d9b9fa59006a5ff7783eee317f05fca2fe797c69d845305`  
		Last Modified: Tue, 05 Jun 2018 21:48:47 GMT  
		Size: 6.4 KB (6370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28c4ab7ca1cd340c20abfad158aa01dfd01b32e30cb664dd5927fffa7a2fedb`  
		Last Modified: Tue, 05 Jun 2018 21:48:47 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:7ead73460350c483de810c873ccb3c3f5a0b502dcc9b173d63462ced24b055b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:e3b376f525a3df47ab1ff7ff112e14603f9f67e5f1c061e5b542a54dc46dc8e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215219645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa36040564ca05852f97085bd73fb86e751481126e4872cdbebaba3b9eef9a8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:35:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 05 Jun 2018 21:37:32 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:37:33 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 05 Jun 2018 21:37:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 05 Jun 2018 21:37:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 05 Jun 2018 21:37:43 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_VERSION
# Tue, 05 Jun 2018 21:37:43 GMT
ARG TOMCAT_VERSION
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_SHA256
# Tue, 05 Jun 2018 21:37:43 GMT
ARG BONITA_URL
# Tue, 05 Jun 2018 21:42:50 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 05 Jun 2018 21:42:50 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 05 Jun 2018 21:42:51 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 05 Jun 2018 21:42:51 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 05 Jun 2018 21:47:53 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 05 Jun 2018 21:47:54 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 05 Jun 2018 21:47:56 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 05 Jun 2018 21:47:56 GMT
VOLUME [/opt/bonita]
# Tue, 05 Jun 2018 21:47:56 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Tue, 05 Jun 2018 21:47:57 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Tue, 05 Jun 2018 21:47:57 GMT
EXPOSE 8080/tcp
# Tue, 05 Jun 2018 21:47:57 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc51898cfce02031db265219ce8f2ffc79ecd6480fd4a04cf6178f10637f6e4f`  
		Last Modified: Tue, 05 Jun 2018 21:48:35 GMT  
		Size: 82.8 MB (82804600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032320c6d92bf7226db0984955056c7a07ef4f51bd024d87358faf21e5986dd1`  
		Last Modified: Tue, 05 Jun 2018 21:48:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd77ba927c05fc48d7916c52b1120c566393d6426a73c255d95eaacce469d472`  
		Last Modified: Tue, 05 Jun 2018 21:48:06 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77967c8cbde072c4aa87cbcde7ca6f4aac3dc1d5dc5cc5ec1c6fb2a7c8cf3d62`  
		Last Modified: Tue, 05 Jun 2018 21:48:05 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120800aab22b26e76177cc350c53bbc55527c80a0afa6e7e4290a74325862122`  
		Last Modified: Tue, 05 Jun 2018 21:48:04 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20184c13ce4cbe13dea1234a9ccb9023264db5f3c476008aa10fe67c5398217c`  
		Last Modified: Tue, 05 Jun 2018 21:49:07 GMT  
		Size: 88.3 MB (88320712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931a952ae7f9bb1c2d9b9fa59006a5ff7783eee317f05fca2fe797c69d845305`  
		Last Modified: Tue, 05 Jun 2018 21:48:47 GMT  
		Size: 6.4 KB (6370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28c4ab7ca1cd340c20abfad158aa01dfd01b32e30cb664dd5927fffa7a2fedb`  
		Last Modified: Tue, 05 Jun 2018 21:48:47 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
