## `bonita:latest`

```console
$ docker pull bonita@sha256:8538f8ee03b96deffb64b59340213362834284f926d0ccb9fa33728e077826cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:cc2394916bd4adbf0680ae6f9aaea8f84c670aea87194e9275930333874f193d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214816477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94df180826287a2d9781f235d2230e9120c4e97754f229e83d18d2031709acc`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 22:31:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 25 Jan 2018 22:32:12 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 22:32:13 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 25 Jan 2018 22:32:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 25 Jan 2018 22:32:16 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Jan 2018 22:32:20 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 25 Jan 2018 22:32:20 GMT
ARG BONITA_VERSION
# Thu, 25 Jan 2018 22:32:20 GMT
ARG TOMCAT_VERSION
# Thu, 25 Jan 2018 22:32:20 GMT
ARG BONITA_SHA256
# Thu, 25 Jan 2018 22:32:21 GMT
ARG BONITA_URL
# Tue, 06 Feb 2018 17:53:53 GMT
ENV BONITA_VERSION=7.6.2
# Tue, 06 Feb 2018 17:53:53 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 06 Feb 2018 17:53:54 GMT
ENV BONITA_SHA256=6719983159afcb9324673fe426e53f5f45092dff68fc77930dd226e7528fe3cf
# Tue, 06 Feb 2018 17:53:54 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.2-Tomcat-8.5.23.zip
# Tue, 06 Feb 2018 17:54:08 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Feb 2018 17:54:09 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Feb 2018 17:54:10 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 06 Feb 2018 17:54:11 GMT
VOLUME [/opt/bonita]
# Tue, 06 Feb 2018 17:54:11 GMT
COPY dir:922ea6ebf17819d868d6aee25bb5f7606ee9d4422a9d433bf71ce223d52a3f98 in /opt/files 
# Tue, 06 Feb 2018 17:54:11 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Tue, 06 Feb 2018 17:54:12 GMT
EXPOSE 8080/tcp
# Tue, 06 Feb 2018 17:54:12 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469603e16fe27e6e5fc24bbff10e1217eec4133c63a0e2c23b2aec319e39fbe`  
		Last Modified: Thu, 25 Jan 2018 22:34:32 GMT  
		Size: 82.7 MB (82672632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a7dba7664510641efa1b8673baaf2d1163a69d7d7720760bfcba951061cc7`  
		Last Modified: Thu, 25 Jan 2018 22:34:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c7a42083acfd867256b71f2924e56baa201e6288041cee66394016d562820f`  
		Last Modified: Thu, 25 Jan 2018 22:34:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7db4a73d21ba9839984bad6b36ca3a9a1c26c132ce5fd655b9b22c269f1a4d`  
		Last Modified: Thu, 25 Jan 2018 22:34:19 GMT  
		Size: 133.2 KB (133183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3c9892cf6dc9ee30933d529cc723caf21b6e400ad1e5ff18195c58812201bc`  
		Last Modified: Thu, 25 Jan 2018 22:34:17 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befea7809af5e9b34e6edc705938ac58778ac1e111d25e182220bc793bd2b9de`  
		Last Modified: Tue, 06 Feb 2018 17:54:52 GMT  
		Size: 88.3 MB (88315889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e651f94b76536121d70a894491daa934b53477601ab6b2cca53254510e72a1b`  
		Last Modified: Tue, 06 Feb 2018 17:54:47 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce71c68bd945d9dfd485a7a2ba6e8826d6bfe96ccd0c7186b474e6b2f4708e1`  
		Last Modified: Tue, 06 Feb 2018 17:54:47 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
