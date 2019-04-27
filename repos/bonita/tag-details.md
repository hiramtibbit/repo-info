<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.5`](#bonita775)
-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.3`](#bonita783)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.7`

```console
$ docker pull bonita@sha256:1fb41f87a953e786c880e2217addd91ecd66982792855484be4b50c02ad916b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:720d4ec5f9ce82948cdfd23b77a8cba1bdd86c69815d29199e1770df0075d3eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215045683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba0d60a82e602ddb1b19ef13a10ca8d144f946450385b05d63d88fadd49e479`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:22:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 00:22:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:23:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 00:23:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 00:23:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 00:23:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 00:23:03 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 00:23:03 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 00:23:04 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 27 Apr 2019 00:23:04 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 27 Apr 2019 00:23:04 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 27 Apr 2019 00:23:05 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 27 Apr 2019 00:23:12 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:14 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 00:23:14 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 00:23:15 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 27 Apr 2019 00:23:15 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 27 Apr 2019 00:23:15 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 00:23:15 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3d372b5b1e0f15513f309f795bce52c03bd236afa8b07fd1925ace324ce3d9`  
		Last Modified: Sat, 27 Apr 2019 00:23:54 GMT  
		Size: 82.8 MB (82821283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357abc1d0a4de0ab0ec75b6240b2cc41faa561a8f4d0ebd575fbe2be9048d1b1`  
		Last Modified: Sat, 27 Apr 2019 00:23:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50e9b451808694c428ab22be4b506562f3068ec0b15e214c417b4529b160f2`  
		Last Modified: Sat, 27 Apr 2019 00:23:39 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fddeacdbebac494de0c931dec77b42a42ec8c2e27760c2bb2c617f3a4b911`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5901022eb25651cb5845ce3c07f402d1b7f08efbd58b42a131e0f800a5076`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8aaca82a4d1267e7840e00b0833db5b8fae7603454eb2ee196ccb54ca9fa5e`  
		Last Modified: Sat, 27 Apr 2019 00:23:44 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b3c96d61862e954c75b740caac1143d5d59e44b84cf091632b28c4464c739`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbc54c9083a9dae1bd0aad85a2f5fc5b486145c69245648cd0809b25f493d8a`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:5cae81fde51e1a99fee44a098d9638123ca824eec0bf8b89492ad72de72eedfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201954898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c504174fefa782b2a52da23473020463d97b097c56f9534065cf2dff33a406`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:34:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:38:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:39:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:39:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:39:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:39:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:39:11 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:39:13 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:39:14 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:39:15 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:39:16 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 27 Apr 2019 11:39:17 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 27 Apr 2019 11:39:18 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 27 Apr 2019 11:39:19 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 27 Apr 2019 11:39:45 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:39:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:39:54 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:39:56 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:39:57 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 27 Apr 2019 11:39:57 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 27 Apr 2019 11:39:58 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:40:00 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0f603ee2b381586c67700d00b186a0e22912262df37959c653a2b3f6b4463`  
		Last Modified: Sat, 27 Apr 2019 11:41:27 GMT  
		Size: 73.8 MB (73785599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c76b4392c1fd7e305f6ebf8c3b2e0e60cf401a68858d99f5fea05694c11274`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ca360e0f2944a7935f3747c34bcfafbc18c72de44c76bb6829a91560db3b7`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711853d24742332454e3adf5970b565c60e6a3d608a8e957d117e7461aa4ba51`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907896896ff865d4cd23904321fa5098f44fff4f94a619c2d0ab91de42fa35f5`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233c91563b1d6567a0efbe2f81c2e94b47fd1a93d080e47d6d4ab3e998050722`  
		Last Modified: Sat, 27 Apr 2019 11:41:11 GMT  
		Size: 87.8 MB (87818772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb07631bf580c4a0c111be280c7fa5da548193d7da7088adf5a7ebed85b4ed`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e57590c32be0f173a59485719eea5186d62fad4d6c2ef0f9afabc19603b4e1`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:6834987e0b6d46def9e9badf1bcff87639220d6cfdb47fd792d2745f7f3c2c62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211660194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4064a160e22d6b9a97c5a6a92558fe99b2348562c06054a11591a0b6caf58f1a`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:57:19 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:01:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:01:10 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:01:19 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:01:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:01:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:01:42 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:01:45 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:01:48 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:01:51 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:01:54 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 27 Apr 2019 11:01:58 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 27 Apr 2019 11:02:00 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 27 Apr 2019 11:02:02 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 27 Apr 2019 11:03:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:03:33 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:03:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:03:51 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:03:53 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 27 Apr 2019 11:03:54 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 27 Apr 2019 11:03:57 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:04:01 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfbc12b06969d7b6f1da24cdb63c44de63ccc7691676e41c0e33e0dda5f5830`  
		Last Modified: Sat, 27 Apr 2019 11:06:43 GMT  
		Size: 77.3 MB (77290355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e9c001041610102db23ae3d1e3d0007433f0f71942f8564920a73c3ade7ad2`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5613c383fa244bc407cfe56e5dd302cbc750dde3deae58121a01ed438680b3`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316ac94565a2d92bc41bfbbe19a13fbdfd2f765c839d6ae320c29ac74aff057`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae36072b67aeddc3da2f1b0fd0562a8a7de105fe1687598a3643d3cd181e07f`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ffae660a123f18956305f4881b51782a6592ab7d9bb53cb3629c6185ca7fb`  
		Last Modified: Sat, 27 Apr 2019 11:06:26 GMT  
		Size: 87.8 MB (87818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357ad874f57e8cc6a7ce64aa3021a3baa5c207fedaa2a977cb5c29803ea262e`  
		Last Modified: Sat, 27 Apr 2019 11:06:18 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e342d9e1fdc17b47ac0c1528a706ca9b3589a64fbede80ff8c2f604fad92c8`  
		Last Modified: Sat, 27 Apr 2019 11:06:18 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.5`

```console
$ docker pull bonita@sha256:1fb41f87a953e786c880e2217addd91ecd66982792855484be4b50c02ad916b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7.5` - linux; amd64

```console
$ docker pull bonita@sha256:720d4ec5f9ce82948cdfd23b77a8cba1bdd86c69815d29199e1770df0075d3eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (215045683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba0d60a82e602ddb1b19ef13a10ca8d144f946450385b05d63d88fadd49e479`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:22:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 00:22:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:23:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 00:23:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 00:23:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 00:23:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 00:23:03 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 00:23:03 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 00:23:04 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 27 Apr 2019 00:23:04 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 27 Apr 2019 00:23:04 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 27 Apr 2019 00:23:05 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 27 Apr 2019 00:23:12 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:14 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 00:23:14 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 00:23:15 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 27 Apr 2019 00:23:15 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 27 Apr 2019 00:23:15 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 00:23:15 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3d372b5b1e0f15513f309f795bce52c03bd236afa8b07fd1925ace324ce3d9`  
		Last Modified: Sat, 27 Apr 2019 00:23:54 GMT  
		Size: 82.8 MB (82821283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357abc1d0a4de0ab0ec75b6240b2cc41faa561a8f4d0ebd575fbe2be9048d1b1`  
		Last Modified: Sat, 27 Apr 2019 00:23:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50e9b451808694c428ab22be4b506562f3068ec0b15e214c417b4529b160f2`  
		Last Modified: Sat, 27 Apr 2019 00:23:39 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fddeacdbebac494de0c931dec77b42a42ec8c2e27760c2bb2c617f3a4b911`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5901022eb25651cb5845ce3c07f402d1b7f08efbd58b42a131e0f800a5076`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8aaca82a4d1267e7840e00b0833db5b8fae7603454eb2ee196ccb54ca9fa5e`  
		Last Modified: Sat, 27 Apr 2019 00:23:44 GMT  
		Size: 87.8 MB (87818775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917b3c96d61862e954c75b740caac1143d5d59e44b84cf091632b28c4464c739`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbc54c9083a9dae1bd0aad85a2f5fc5b486145c69245648cd0809b25f493d8a`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:5cae81fde51e1a99fee44a098d9638123ca824eec0bf8b89492ad72de72eedfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201954898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91c504174fefa782b2a52da23473020463d97b097c56f9534065cf2dff33a406`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:34:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:38:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:39:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:39:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:39:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:39:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:39:11 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:39:13 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:39:14 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:39:15 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:39:16 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 27 Apr 2019 11:39:17 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 27 Apr 2019 11:39:18 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 27 Apr 2019 11:39:19 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 27 Apr 2019 11:39:45 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:39:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:39:54 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:39:56 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:39:57 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 27 Apr 2019 11:39:57 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 27 Apr 2019 11:39:58 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:40:00 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0f603ee2b381586c67700d00b186a0e22912262df37959c653a2b3f6b4463`  
		Last Modified: Sat, 27 Apr 2019 11:41:27 GMT  
		Size: 73.8 MB (73785599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c76b4392c1fd7e305f6ebf8c3b2e0e60cf401a68858d99f5fea05694c11274`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ca360e0f2944a7935f3747c34bcfafbc18c72de44c76bb6829a91560db3b7`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711853d24742332454e3adf5970b565c60e6a3d608a8e957d117e7461aa4ba51`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907896896ff865d4cd23904321fa5098f44fff4f94a619c2d0ab91de42fa35f5`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233c91563b1d6567a0efbe2f81c2e94b47fd1a93d080e47d6d4ab3e998050722`  
		Last Modified: Sat, 27 Apr 2019 11:41:11 GMT  
		Size: 87.8 MB (87818772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bb07631bf580c4a0c111be280c7fa5da548193d7da7088adf5a7ebed85b4ed`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e57590c32be0f173a59485719eea5186d62fad4d6c2ef0f9afabc19603b4e1`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.5` - linux; ppc64le

```console
$ docker pull bonita@sha256:6834987e0b6d46def9e9badf1bcff87639220d6cfdb47fd792d2745f7f3c2c62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211660194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4064a160e22d6b9a97c5a6a92558fe99b2348562c06054a11591a0b6caf58f1a`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:57:19 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:01:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:01:10 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:01:19 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:01:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:01:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:01:42 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:01:45 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:01:48 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:01:51 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:01:54 GMT
ENV BONITA_VERSION=7.7.5
# Sat, 27 Apr 2019 11:01:58 GMT
ENV TOMCAT_VERSION=8.5.31
# Sat, 27 Apr 2019 11:02:00 GMT
ENV BONITA_SHA256=cbed7de66b763683e1edad0aa374f234e6b7c4bebaf5dd31925125196fceab81
# Sat, 27 Apr 2019 11:02:02 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.5-Tomcat-8.5.31.zip
# Sat, 27 Apr 2019 11:03:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:03:33 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:03:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:03:51 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:03:53 GMT
COPY dir:218b54db7fe23f6e7d786ad3d05252e5a170aa9f0bc4f4daab27f269f2f972cb in /opt/files 
# Sat, 27 Apr 2019 11:03:54 GMT
COPY dir:6d3e15de1cb4f57dbe1c443d37e47f4fd23de68060b4a003d8918618cf14d1cd in /opt/templates 
# Sat, 27 Apr 2019 11:03:57 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:04:01 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfbc12b06969d7b6f1da24cdb63c44de63ccc7691676e41c0e33e0dda5f5830`  
		Last Modified: Sat, 27 Apr 2019 11:06:43 GMT  
		Size: 77.3 MB (77290355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e9c001041610102db23ae3d1e3d0007433f0f71942f8564920a73c3ade7ad2`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5613c383fa244bc407cfe56e5dd302cbc750dde3deae58121a01ed438680b3`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316ac94565a2d92bc41bfbbe19a13fbdfd2f765c839d6ae320c29ac74aff057`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae36072b67aeddc3da2f1b0fd0562a8a7de105fe1687598a3643d3cd181e07f`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85ffae660a123f18956305f4881b51782a6592ab7d9bb53cb3629c6185ca7fb`  
		Last Modified: Sat, 27 Apr 2019 11:06:26 GMT  
		Size: 87.8 MB (87818816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8357ad874f57e8cc6a7ce64aa3021a3baa5c207fedaa2a977cb5c29803ea262e`  
		Last Modified: Sat, 27 Apr 2019 11:06:18 GMT  
		Size: 6.4 KB (6431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e342d9e1fdc17b47ac0c1528a706ca9b3589a64fbede80ff8c2f604fad92c8`  
		Last Modified: Sat, 27 Apr 2019 11:06:18 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8`

```console
$ docker pull bonita@sha256:d7f4d0303d8eabf78f7895c88ecc3249c3ed05c6939dcf2f1cf618240a1d8277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:e0d93e88e0ce17fa3488671cd37e2ed87364b3ebdc930f9d5a8a13d7e27e61c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219211375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a084edc81858e5c126e438eb9d60453d85349fd6ffa17ad93cf69c5aa541439`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:22:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 00:22:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:23:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 00:23:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 00:23:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 00:23:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 00:23:03 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 00:23:03 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 00:23:20 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 00:23:27 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 00:23:31 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 00:23:31 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 00:23:31 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3d372b5b1e0f15513f309f795bce52c03bd236afa8b07fd1925ace324ce3d9`  
		Last Modified: Sat, 27 Apr 2019 00:23:54 GMT  
		Size: 82.8 MB (82821283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357abc1d0a4de0ab0ec75b6240b2cc41faa561a8f4d0ebd575fbe2be9048d1b1`  
		Last Modified: Sat, 27 Apr 2019 00:23:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50e9b451808694c428ab22be4b506562f3068ec0b15e214c417b4529b160f2`  
		Last Modified: Sat, 27 Apr 2019 00:23:39 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fddeacdbebac494de0c931dec77b42a42ec8c2e27760c2bb2c617f3a4b911`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5901022eb25651cb5845ce3c07f402d1b7f08efbd58b42a131e0f800a5076`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd01c0be42a9984400e2408f50e21cf79d60c5c1315e03e8d3b1b1c1b08f3a`  
		Last Modified: Sat, 27 Apr 2019 00:24:04 GMT  
		Size: 92.0 MB (91984484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfc276dba61e6ef227ad4ec29fcf2a9de679b996aa052185e7e4521ab53b3ef`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e280ae7828de58488501aa696837af043a09c92cbec2d004daff8e1eae76dc77`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1098d853f7733b77ba6efaba5431e3f57dd9ded84a694e89b3886d2f9d07b4e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206120587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7438524ac05fb826315e5dd25db4ef810bd0ded0f9223a7dce31010e319198`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:34:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:38:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:39:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:39:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:39:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:39:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:39:11 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:39:13 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:39:14 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:39:15 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:40:07 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 11:40:10 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 11:40:14 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 11:40:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 11:40:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:40:35 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:40:40 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:40:41 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:40:42 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 11:40:43 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 11:40:45 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:40:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0f603ee2b381586c67700d00b186a0e22912262df37959c653a2b3f6b4463`  
		Last Modified: Sat, 27 Apr 2019 11:41:27 GMT  
		Size: 73.8 MB (73785599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c76b4392c1fd7e305f6ebf8c3b2e0e60cf401a68858d99f5fea05694c11274`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ca360e0f2944a7935f3747c34bcfafbc18c72de44c76bb6829a91560db3b7`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711853d24742332454e3adf5970b565c60e6a3d608a8e957d117e7461aa4ba51`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907896896ff865d4cd23904321fa5098f44fff4f94a619c2d0ab91de42fa35f5`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a0892f71492ca2ff1f8190524e6faae813b66ddc4a86de96ebb62fb41a0794`  
		Last Modified: Sat, 27 Apr 2019 11:41:51 GMT  
		Size: 92.0 MB (91984481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0855dff64d71393b8d51d3525e7d91dbaa4f0abaf5e6032cbda1846d49e6f3c`  
		Last Modified: Sat, 27 Apr 2019 11:41:36 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c9ed43e64ca6c824cc5606ea9b5446b7fbf92b605c64c9f8adbcb8b191deb`  
		Last Modified: Sat, 27 Apr 2019 11:41:36 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:46d6fc034993706c65aad524e82d85f6bdbfd4c2c15917d3e1554dec02bc640c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215825876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606bc786c670f18228f10e5d9b8ca5ad0e8bc784e60032d1fc8f9419933cba49`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:57:19 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:01:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:01:10 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:01:19 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:01:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:01:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:01:42 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:01:45 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:01:48 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:01:51 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:04:15 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 11:04:19 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 11:04:23 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 11:04:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 11:05:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:05:33 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:05:44 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:05:48 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:05:50 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 11:05:52 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 11:05:56 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:06:00 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfbc12b06969d7b6f1da24cdb63c44de63ccc7691676e41c0e33e0dda5f5830`  
		Last Modified: Sat, 27 Apr 2019 11:06:43 GMT  
		Size: 77.3 MB (77290355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e9c001041610102db23ae3d1e3d0007433f0f71942f8564920a73c3ade7ad2`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5613c383fa244bc407cfe56e5dd302cbc750dde3deae58121a01ed438680b3`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316ac94565a2d92bc41bfbbe19a13fbdfd2f765c839d6ae320c29ac74aff057`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae36072b67aeddc3da2f1b0fd0562a8a7de105fe1687598a3643d3cd181e07f`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef0b01a7e41c4828ef33534efcd249f92d1d90bffd11ed90ff7a56866efb316`  
		Last Modified: Sat, 27 Apr 2019 11:07:07 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30868fe68d2f8598a4183b7cdcfeae90aa3ddf939d01c7199c248c41d5c5c185`  
		Last Modified: Sat, 27 Apr 2019 11:07:04 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9714cb1fe3c91d2db2211ccdd8465ef37d6c5fb6b008e49ec6633185b51b2e0`  
		Last Modified: Sat, 27 Apr 2019 11:07:04 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.3`

```console
$ docker pull bonita@sha256:d7f4d0303d8eabf78f7895c88ecc3249c3ed05c6939dcf2f1cf618240a1d8277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.3` - linux; amd64

```console
$ docker pull bonita@sha256:e0d93e88e0ce17fa3488671cd37e2ed87364b3ebdc930f9d5a8a13d7e27e61c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219211375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a084edc81858e5c126e438eb9d60453d85349fd6ffa17ad93cf69c5aa541439`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:22:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 00:22:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:23:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 00:23:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 00:23:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 00:23:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 00:23:03 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 00:23:03 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 00:23:20 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 00:23:27 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 00:23:31 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 00:23:31 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 00:23:31 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3d372b5b1e0f15513f309f795bce52c03bd236afa8b07fd1925ace324ce3d9`  
		Last Modified: Sat, 27 Apr 2019 00:23:54 GMT  
		Size: 82.8 MB (82821283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357abc1d0a4de0ab0ec75b6240b2cc41faa561a8f4d0ebd575fbe2be9048d1b1`  
		Last Modified: Sat, 27 Apr 2019 00:23:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50e9b451808694c428ab22be4b506562f3068ec0b15e214c417b4529b160f2`  
		Last Modified: Sat, 27 Apr 2019 00:23:39 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fddeacdbebac494de0c931dec77b42a42ec8c2e27760c2bb2c617f3a4b911`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5901022eb25651cb5845ce3c07f402d1b7f08efbd58b42a131e0f800a5076`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd01c0be42a9984400e2408f50e21cf79d60c5c1315e03e8d3b1b1c1b08f3a`  
		Last Modified: Sat, 27 Apr 2019 00:24:04 GMT  
		Size: 92.0 MB (91984484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfc276dba61e6ef227ad4ec29fcf2a9de679b996aa052185e7e4521ab53b3ef`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e280ae7828de58488501aa696837af043a09c92cbec2d004daff8e1eae76dc77`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.3` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1098d853f7733b77ba6efaba5431e3f57dd9ded84a694e89b3886d2f9d07b4e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206120587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7438524ac05fb826315e5dd25db4ef810bd0ded0f9223a7dce31010e319198`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:34:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:38:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:39:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:39:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:39:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:39:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:39:11 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:39:13 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:39:14 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:39:15 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:40:07 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 11:40:10 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 11:40:14 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 11:40:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 11:40:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:40:35 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:40:40 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:40:41 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:40:42 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 11:40:43 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 11:40:45 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:40:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0f603ee2b381586c67700d00b186a0e22912262df37959c653a2b3f6b4463`  
		Last Modified: Sat, 27 Apr 2019 11:41:27 GMT  
		Size: 73.8 MB (73785599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c76b4392c1fd7e305f6ebf8c3b2e0e60cf401a68858d99f5fea05694c11274`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ca360e0f2944a7935f3747c34bcfafbc18c72de44c76bb6829a91560db3b7`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711853d24742332454e3adf5970b565c60e6a3d608a8e957d117e7461aa4ba51`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907896896ff865d4cd23904321fa5098f44fff4f94a619c2d0ab91de42fa35f5`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a0892f71492ca2ff1f8190524e6faae813b66ddc4a86de96ebb62fb41a0794`  
		Last Modified: Sat, 27 Apr 2019 11:41:51 GMT  
		Size: 92.0 MB (91984481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0855dff64d71393b8d51d3525e7d91dbaa4f0abaf5e6032cbda1846d49e6f3c`  
		Last Modified: Sat, 27 Apr 2019 11:41:36 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c9ed43e64ca6c824cc5606ea9b5446b7fbf92b605c64c9f8adbcb8b191deb`  
		Last Modified: Sat, 27 Apr 2019 11:41:36 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.3` - linux; ppc64le

```console
$ docker pull bonita@sha256:46d6fc034993706c65aad524e82d85f6bdbfd4c2c15917d3e1554dec02bc640c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215825876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606bc786c670f18228f10e5d9b8ca5ad0e8bc784e60032d1fc8f9419933cba49`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:57:19 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:01:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:01:10 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:01:19 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:01:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:01:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:01:42 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:01:45 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:01:48 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:01:51 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:04:15 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 11:04:19 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 11:04:23 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 11:04:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 11:05:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:05:33 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:05:44 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:05:48 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:05:50 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 11:05:52 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 11:05:56 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:06:00 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfbc12b06969d7b6f1da24cdb63c44de63ccc7691676e41c0e33e0dda5f5830`  
		Last Modified: Sat, 27 Apr 2019 11:06:43 GMT  
		Size: 77.3 MB (77290355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e9c001041610102db23ae3d1e3d0007433f0f71942f8564920a73c3ade7ad2`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5613c383fa244bc407cfe56e5dd302cbc750dde3deae58121a01ed438680b3`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316ac94565a2d92bc41bfbbe19a13fbdfd2f765c839d6ae320c29ac74aff057`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae36072b67aeddc3da2f1b0fd0562a8a7de105fe1687598a3643d3cd181e07f`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef0b01a7e41c4828ef33534efcd249f92d1d90bffd11ed90ff7a56866efb316`  
		Last Modified: Sat, 27 Apr 2019 11:07:07 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30868fe68d2f8598a4183b7cdcfeae90aa3ddf939d01c7199c248c41d5c5c185`  
		Last Modified: Sat, 27 Apr 2019 11:07:04 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9714cb1fe3c91d2db2211ccdd8465ef37d6c5fb6b008e49ec6633185b51b2e0`  
		Last Modified: Sat, 27 Apr 2019 11:07:04 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:d7f4d0303d8eabf78f7895c88ecc3249c3ed05c6939dcf2f1cf618240a1d8277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:e0d93e88e0ce17fa3488671cd37e2ed87364b3ebdc930f9d5a8a13d7e27e61c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219211375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a084edc81858e5c126e438eb9d60453d85349fd6ffa17ad93cf69c5aa541439`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:22:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 00:22:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:23:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 00:23:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 00:23:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 00:23:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 00:23:03 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 00:23:03 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 00:23:20 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 00:23:27 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 00:23:31 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 00:23:31 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 00:23:31 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3d372b5b1e0f15513f309f795bce52c03bd236afa8b07fd1925ace324ce3d9`  
		Last Modified: Sat, 27 Apr 2019 00:23:54 GMT  
		Size: 82.8 MB (82821283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357abc1d0a4de0ab0ec75b6240b2cc41faa561a8f4d0ebd575fbe2be9048d1b1`  
		Last Modified: Sat, 27 Apr 2019 00:23:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50e9b451808694c428ab22be4b506562f3068ec0b15e214c417b4529b160f2`  
		Last Modified: Sat, 27 Apr 2019 00:23:39 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fddeacdbebac494de0c931dec77b42a42ec8c2e27760c2bb2c617f3a4b911`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5901022eb25651cb5845ce3c07f402d1b7f08efbd58b42a131e0f800a5076`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd01c0be42a9984400e2408f50e21cf79d60c5c1315e03e8d3b1b1c1b08f3a`  
		Last Modified: Sat, 27 Apr 2019 00:24:04 GMT  
		Size: 92.0 MB (91984484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfc276dba61e6ef227ad4ec29fcf2a9de679b996aa052185e7e4521ab53b3ef`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e280ae7828de58488501aa696837af043a09c92cbec2d004daff8e1eae76dc77`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1098d853f7733b77ba6efaba5431e3f57dd9ded84a694e89b3886d2f9d07b4e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206120587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a7438524ac05fb826315e5dd25db4ef810bd0ded0f9223a7dce31010e319198`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:34:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:38:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:39:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:39:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:39:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:39:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:39:11 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:39:13 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:39:14 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:39:15 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:40:07 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 11:40:10 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 11:40:14 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 11:40:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 11:40:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:40:35 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:40:40 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:40:41 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:40:42 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 11:40:43 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 11:40:45 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:40:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0f603ee2b381586c67700d00b186a0e22912262df37959c653a2b3f6b4463`  
		Last Modified: Sat, 27 Apr 2019 11:41:27 GMT  
		Size: 73.8 MB (73785599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c76b4392c1fd7e305f6ebf8c3b2e0e60cf401a68858d99f5fea05694c11274`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ca360e0f2944a7935f3747c34bcfafbc18c72de44c76bb6829a91560db3b7`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711853d24742332454e3adf5970b565c60e6a3d608a8e957d117e7461aa4ba51`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907896896ff865d4cd23904321fa5098f44fff4f94a619c2d0ab91de42fa35f5`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a0892f71492ca2ff1f8190524e6faae813b66ddc4a86de96ebb62fb41a0794`  
		Last Modified: Sat, 27 Apr 2019 11:41:51 GMT  
		Size: 92.0 MB (91984481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0855dff64d71393b8d51d3525e7d91dbaa4f0abaf5e6032cbda1846d49e6f3c`  
		Last Modified: Sat, 27 Apr 2019 11:41:36 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8c9ed43e64ca6c824cc5606ea9b5446b7fbf92b605c64c9f8adbcb8b191deb`  
		Last Modified: Sat, 27 Apr 2019 11:41:36 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:46d6fc034993706c65aad524e82d85f6bdbfd4c2c15917d3e1554dec02bc640c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215825876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606bc786c670f18228f10e5d9b8ca5ad0e8bc784e60032d1fc8f9419933cba49`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:57:19 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:01:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:01:10 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:01:19 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:01:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:01:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:01:42 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:01:45 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:01:48 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:01:51 GMT
ARG BONITA_URL
# Sat, 27 Apr 2019 11:04:15 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 11:04:19 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 11:04:23 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 11:04:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 11:05:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:05:33 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 11:05:44 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 11:05:48 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 11:05:50 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 11:05:52 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 11:05:56 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 11:06:00 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfbc12b06969d7b6f1da24cdb63c44de63ccc7691676e41c0e33e0dda5f5830`  
		Last Modified: Sat, 27 Apr 2019 11:06:43 GMT  
		Size: 77.3 MB (77290355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e9c001041610102db23ae3d1e3d0007433f0f71942f8564920a73c3ade7ad2`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5613c383fa244bc407cfe56e5dd302cbc750dde3deae58121a01ed438680b3`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316ac94565a2d92bc41bfbbe19a13fbdfd2f765c839d6ae320c29ac74aff057`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae36072b67aeddc3da2f1b0fd0562a8a7de105fe1687598a3643d3cd181e07f`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef0b01a7e41c4828ef33534efcd249f92d1d90bffd11ed90ff7a56866efb316`  
		Last Modified: Sat, 27 Apr 2019 11:07:07 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30868fe68d2f8598a4183b7cdcfeae90aa3ddf939d01c7199c248c41d5c5c185`  
		Last Modified: Sat, 27 Apr 2019 11:07:04 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9714cb1fe3c91d2db2211ccdd8465ef37d6c5fb6b008e49ec6633185b51b2e0`  
		Last Modified: Sat, 27 Apr 2019 11:07:04 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
