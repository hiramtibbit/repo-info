## `bonita:latest`

```console
$ docker pull bonita@sha256:e5f33ad6e8c06543ac89ba98dc12ac9a542f7aedb6b40cf6f0ed230ea5830d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:27e3f7c67defe068144a98fdb462c53c34bc0e63db818bfad7f2b3fbadcf8633
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215121438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:677ef91035592e77c7411f1e094da79aef77d8b7d4c86413f15ac0860274f970`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 23:28:28 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 28 Apr 2018 23:30:12 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 23:30:13 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 28 Apr 2018 23:30:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 28 Apr 2018 23:30:15 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 28 Apr 2018 23:30:19 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 28 Apr 2018 23:30:19 GMT
ARG BONITA_VERSION
# Sat, 28 Apr 2018 23:30:19 GMT
ARG TOMCAT_VERSION
# Sat, 28 Apr 2018 23:30:20 GMT
ARG BONITA_SHA256
# Sat, 28 Apr 2018 23:30:20 GMT
ARG BONITA_URL
# Sat, 28 Apr 2018 23:38:13 GMT
ENV BONITA_VERSION=7.6.3
# Sat, 28 Apr 2018 23:38:13 GMT
ENV TOMCAT_VERSION=8.5.23
# Sat, 28 Apr 2018 23:38:13 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Sat, 28 Apr 2018 23:38:14 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Sat, 28 Apr 2018 23:38:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 28 Apr 2018 23:38:25 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 28 Apr 2018 23:38:26 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 28 Apr 2018 23:38:27 GMT
VOLUME [/opt/bonita]
# Sat, 28 Apr 2018 23:38:27 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Sat, 28 Apr 2018 23:38:28 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Sat, 28 Apr 2018 23:38:28 GMT
EXPOSE 8080/tcp
# Sat, 28 Apr 2018 23:38:28 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541ad78844886b779d3e3f4a1121444128d5c5548f7abbd694e03a4c2d79de25`  
		Last Modified: Sat, 28 Apr 2018 23:42:45 GMT  
		Size: 82.8 MB (82802043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049a365e99b195a4f0b2dd22c7b26ee07a4600e3e25610872161d970f2e5890`  
		Last Modified: Sat, 28 Apr 2018 23:42:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5112253cb8c5a68116e4bf5a6e46a7ef4f77569c6cb28949451354fc0d85f0f`  
		Last Modified: Sat, 28 Apr 2018 23:42:31 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ca90062bf444142e63c6d85d83dec79f10cf2adf19ce0626e114c9e3dc06c7`  
		Last Modified: Sat, 28 Apr 2018 23:42:28 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731187bf37791e9d52fd8c61ba103f21f847e7de11a30b44fcde1980907f9ed0`  
		Last Modified: Sat, 28 Apr 2018 23:42:28 GMT  
		Size: 818.6 KB (818554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc17ed1a6176ee68421d7a5e62ff755ef93a995017c94b2020e5e5d7ef6eb8fc`  
		Last Modified: Sun, 29 Apr 2018 00:03:07 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f927e074fa6b78a4440e023160f07b4f3808db138f6392aa09cc5a28da52c063`  
		Last Modified: Sun, 29 Apr 2018 00:03:01 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b72cfcc5e05d7740ed7eab12fe1be3a624c99df2c3a4aed0a10d93d769b61`  
		Last Modified: Sun, 29 Apr 2018 00:03:01 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
