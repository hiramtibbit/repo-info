## `bonita:latest`

```console
$ docker pull bonita@sha256:b4a805e358e9f716faf360dfb9a44e56f9a13bd027b3565bcd168cfb36cd94c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:7ed8de0123aaeb0d9b3954b4ce64742d93d42f9b7e010f3876b5d0ad1c6e81a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214821285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a8edfa34af48ca5ff9063938ee98487cfbca7e56043e8297a880dafbe0ef2e`
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
# Mon, 05 Mar 2018 18:53:49 GMT
ENV BONITA_VERSION=7.6.3
# Mon, 05 Mar 2018 18:53:49 GMT
ENV TOMCAT_VERSION=8.5.23
# Mon, 05 Mar 2018 18:53:49 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Mon, 05 Mar 2018 18:53:49 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Mon, 05 Mar 2018 18:54:03 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 05 Mar 2018 18:54:05 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 05 Mar 2018 18:54:06 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 05 Mar 2018 18:54:06 GMT
VOLUME [/opt/bonita]
# Mon, 05 Mar 2018 18:54:06 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Mon, 05 Mar 2018 18:54:07 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Mon, 05 Mar 2018 18:54:07 GMT
EXPOSE 8080/tcp
# Mon, 05 Mar 2018 18:54:07 GMT
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
	-	`sha256:1fba356b9eb867134fa7ab477ec5b9858aac3a3dc67f2cdb7863e7521b8da351`  
		Last Modified: Mon, 05 Mar 2018 18:54:31 GMT  
		Size: 88.3 MB (88320708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c0917a5f12d405d1f2534fa4a8a2fb5b7b4629d7cc60ca70f734fd15818723`  
		Last Modified: Mon, 05 Mar 2018 18:54:26 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3756d779a9de1e2c1eae2a54fa8bdb50de4a57c5153de5bfbbd874ec518dc3a6`  
		Last Modified: Mon, 05 Mar 2018 18:54:26 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
