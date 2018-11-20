## `bonita:latest`

```console
$ docker pull bonita@sha256:850d8372af438f0e05f743be86cda00f8a7578ab070a8a0b975c91a7d9c0aa0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:ff40ec0831a22a46f4aabb242c3d841d8e5c285b83f7ae15dfe106830bc37777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214730680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dec7549827f65d3fdf47f97ca951c79d1e38d7a2857536a1756a6f4c0831bf0`
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
# Mon, 19 Nov 2018 21:46:52 GMT
ENV BONITA_VERSION=7.7.4
# Mon, 19 Nov 2018 21:46:52 GMT
ENV TOMCAT_VERSION=8.5.31
# Mon, 19 Nov 2018 21:46:53 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Mon, 19 Nov 2018 21:46:53 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Mon, 19 Nov 2018 21:47:00 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 19 Nov 2018 21:47:01 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 19 Nov 2018 21:47:03 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 19 Nov 2018 21:47:03 GMT
VOLUME [/opt/bonita]
# Mon, 19 Nov 2018 21:47:03 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Mon, 19 Nov 2018 21:47:04 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Mon, 19 Nov 2018 21:47:04 GMT
EXPOSE 8080/tcp
# Mon, 19 Nov 2018 21:47:04 GMT
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
	-	`sha256:326f192701c73403c945a51bea6ab57c217ee5d9f848c75f6dc5e427830681ad`  
		Last Modified: Mon, 19 Nov 2018 21:48:35 GMT  
		Size: 87.8 MB (87823575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74816b6566811978b179aac61d6ada85d9c92219832c24ccd2671a8eb79fa86a`  
		Last Modified: Mon, 19 Nov 2018 21:48:29 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dcd84a4e3209c5d5933d47f2b39bfca83e9bcbd9cc2b56980c357673866bc2`  
		Last Modified: Mon, 19 Nov 2018 21:48:29 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:91bfe7b83d002e9d048d55c6fc0a14641d2fcd82acc07be1f7a9d86a22f1bb98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201416635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518b2c31c8de5a965ef26e27304b7c244783add11f690b824093d93ad422feec`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 12:39:10 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 12:41:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:41:36 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 12:41:38 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 12:41:41 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 12:41:48 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 12:41:49 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 12:41:50 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 12:41:52 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 12:41:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 12:43:21 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 12:43:21 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 12:43:22 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 12:43:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 12:44:44 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 12:44:51 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 12:45:03 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 12:45:12 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 12:45:13 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 12:45:13 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 12:45:23 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 12:45:23 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97959354ac538616a1d5847caa62e6cb9a572a600e59aee0f8f26ef0654da08c`  
		Last Modified: Fri, 19 Oct 2018 12:46:10 GMT  
		Size: 73.5 MB (73539458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28b803b92ae688bd93d6896e56541fe1b4f401eb922d6e2dccebc9920a4cfcc`  
		Last Modified: Fri, 19 Oct 2018 12:45:47 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc15fd0564e0fad6a4b7d84b7e355c7f8ebdb1fbb346b39e966aeb9f99727c31`  
		Last Modified: Fri, 19 Oct 2018 12:45:46 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b44e2c92fdbb118e48a217b90a7e657480c3522523022fb7466ff33999f3be`  
		Last Modified: Fri, 19 Oct 2018 12:45:44 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750bb0dbf40a79366741552b4e620033b884ff31810e2c56c479001e4cdb14a8`  
		Last Modified: Fri, 19 Oct 2018 12:45:44 GMT  
		Size: 468.8 KB (468798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57b533dbec84a361dfc4985de4cffd63afdcf5201f5a566ff7e9ad3cc89bac6`  
		Last Modified: Fri, 19 Oct 2018 12:46:53 GMT  
		Size: 87.8 MB (87823576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa08b1b87ef9d0d9ce2afe15324d93e57938678f3464082891e4e53efa24e1ff`  
		Last Modified: Fri, 19 Oct 2018 12:46:42 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c69ac7be939f43be8702354e866e6dbe0ec30a276fab8cc2794be1c3ad198b`  
		Last Modified: Fri, 19 Oct 2018 12:46:42 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:ec8270eaa7a87947d26cc5c5cf6f4e531bb3d2119a3f502d40683ee9e9a126da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211386843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df77efe61ed495ced5f3487da0d77d33b5d70fc2c5e4fea1d0b4f8457b56a03`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:15:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 10:18:19 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:18:26 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 10:18:33 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 10:18:39 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 10:18:47 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 10:18:48 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 10:18:48 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 10:18:50 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 10:18:50 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 10:20:36 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 10:20:37 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 10:20:37 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 10:20:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 10:21:35 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 10:21:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 10:22:09 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 10:22:12 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 10:22:15 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 10:22:18 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 10:22:21 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 10:22:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d65ba81be3d3da0e4069496d62eced8ff893a12bd1ac25bd5a55ec93dd9f78`  
		Last Modified: Fri, 19 Oct 2018 10:23:06 GMT  
		Size: 77.3 MB (77293882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff22ef9774aed8336d7b63e25158a3b85c126fdd6b6742951a2affbb24a012a5`  
		Last Modified: Fri, 19 Oct 2018 10:22:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a11bdbfad29c3989f2cc1a753f3ef61a195c9a26e3a9f233c0b073e2e4dd53f`  
		Last Modified: Fri, 19 Oct 2018 10:22:47 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b80b2a92ff349c0d51eff6ed20af3f0118d9ef5c2ac3dd7397ee698b624bc17`  
		Last Modified: Fri, 19 Oct 2018 10:22:45 GMT  
		Size: 140.6 KB (140616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61891ceefe45c8519864f45b068ffd1756358b1dbe59770cecfba44060446d2d`  
		Last Modified: Fri, 19 Oct 2018 10:22:45 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb8859d5a08c6e539f3a34b0155bda6d905364104503f958b08aff96e09797c`  
		Last Modified: Fri, 19 Oct 2018 10:23:37 GMT  
		Size: 87.8 MB (87823604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36177443d359d1f41eb600e9e26adb0a25caaf3cf9a034f0ec4fcbca2a27f47c`  
		Last Modified: Fri, 19 Oct 2018 10:23:30 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942198165d358947dbfc50f799a0d6c277e3108aee3288385d9ec104bdbc7fac`  
		Last Modified: Fri, 19 Oct 2018 10:23:29 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
