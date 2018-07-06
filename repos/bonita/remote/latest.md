## `bonita:latest`

```console
$ docker pull bonita@sha256:92ba94e7a4a4eed9b1681790bd4d22dac4f56a1162d18edb430a410acf26a384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:9787fb3529904ae54f616a070e3c1761308a1ad1ca94cda9d576083069791ffd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214711964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675afd92beffe93a9674647fe059022335e757c9ddf66dc2cf57636013a4a6e5`
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
# Thu, 21 Jun 2018 19:19:40 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 21 Jun 2018 19:21:26 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 21 Jun 2018 19:21:27 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 21 Jun 2018 19:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 21 Jun 2018 19:21:29 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 21 Jun 2018 19:21:33 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 21 Jun 2018 19:21:33 GMT
ARG BONITA_VERSION
# Thu, 21 Jun 2018 19:21:33 GMT
ARG TOMCAT_VERSION
# Thu, 21 Jun 2018 19:21:34 GMT
ARG BONITA_SHA256
# Thu, 21 Jun 2018 19:21:34 GMT
ARG BONITA_URL
# Fri, 06 Jul 2018 00:19:38 GMT
ENV BONITA_VERSION=7.7.1
# Fri, 06 Jul 2018 00:19:39 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 06 Jul 2018 00:19:39 GMT
ENV BONITA_SHA256=bd9efcda5b98cd3a2744994fb1560ed4bc3f3a0bfb489a72c5466b474ca254cc
# Fri, 06 Jul 2018 00:19:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.1-Tomcat-8.5.31.zip
# Fri, 06 Jul 2018 00:19:52 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 06 Jul 2018 00:19:54 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 06 Jul 2018 00:19:55 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 06 Jul 2018 00:19:55 GMT
VOLUME [/opt/bonita]
# Fri, 06 Jul 2018 00:19:55 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Fri, 06 Jul 2018 00:19:56 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 06 Jul 2018 00:19:56 GMT
EXPOSE 8080/tcp
# Fri, 06 Jul 2018 00:19:56 GMT
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
	-	`sha256:42fbaac9c694b17aac76b98f37b59c7cc33083280f146329127ff82e08629ae3`  
		Last Modified: Thu, 21 Jun 2018 19:22:54 GMT  
		Size: 82.8 MB (82804132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d19c91fc28016f5688a7fccc6a79404888e0f9993820f0b02bc5f8058b4a66`  
		Last Modified: Thu, 21 Jun 2018 19:22:43 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dfb07ab27cfb9b9c9fd6be4710dd7877efdd0cbcb297776c8e5ff73a6a048b`  
		Last Modified: Thu, 21 Jun 2018 19:22:43 GMT  
		Size: 2.0 KB (2039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd0d224f93252e8ed7b2b6f960d26a92969a8c72512f6875816bbe2ac786c4e`  
		Last Modified: Thu, 21 Jun 2018 19:22:41 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299a3aeb9defd2e7bc8490dea9726778cc424a6351ff8573fdc76de2b7785ce`  
		Last Modified: Thu, 21 Jun 2018 19:22:41 GMT  
		Size: 818.6 KB (818567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c62b9ca81a7d4f6ca45fd9d4cdb2c7077490de88cdca2f7479aacc54427adb0`  
		Last Modified: Fri, 06 Jul 2018 00:20:16 GMT  
		Size: 87.8 MB (87813494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eea31b1d3c1b4021dd0cc1f6b2e5e6e87b33faddb72dcb3e7ea71cbe78dc912`  
		Last Modified: Fri, 06 Jul 2018 00:20:11 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f292bb5e44bfb6998dc354187c44e224ae3a97dd267e38247af20af327f5ae`  
		Last Modified: Fri, 06 Jul 2018 00:20:11 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
