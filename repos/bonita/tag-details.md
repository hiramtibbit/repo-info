<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.6`](#bonita76)
-	[`bonita:7.6.3`](#bonita763)
-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.4`](#bonita774)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.6`

```console
$ docker pull bonita@sha256:c2d99fe61a35e1debe37e6a5c5dcf0a51e0b1a5d4f416e0c16f5917cf97551bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.6` - linux; amd64

```console
$ docker pull bonita@sha256:51f94ec611c5970e82aa7fde5295dd4ff4a1821faec7fed4e8f8f72e7f48b590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215164545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbf74209b34114167b37438b3673295206875c6d104a16fb01bf69e32145b31`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:23:55 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 01:24:50 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:24:51 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 01:24:51 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 01:24:52 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 01:24:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 01:24:55 GMT
ENV BONITA_VERSION=7.6.3
# Fri, 19 Oct 2018 01:24:55 GMT
ENV TOMCAT_VERSION=8.5.23
# Fri, 19 Oct 2018 01:24:55 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Fri, 19 Oct 2018 01:24:55 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Fri, 19 Oct 2018 01:25:14 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:17 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 01:25:17 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 01:25:17 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Fri, 19 Oct 2018 01:25:18 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 01:25:18 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 01:25:18 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3bf702c4ca1f45deb5679d08b2e5d89777c3620431377061e58cb1035b077f`  
		Last Modified: Fri, 19 Oct 2018 01:26:29 GMT  
		Size: 82.8 MB (82837789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da232b6698ca7cb87cc4584b508115640a1f19d59edbda8a2e5d6683911391`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5562f80c92bb1682f11d4b5f952fa2de264ac6e5dcfc33eff1509216570ba612`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1aeaebb61ab8039cefe92e34b92e6f15484ccebe86bbd60c464e0d3e936fe4`  
		Last Modified: Fri, 19 Oct 2018 01:26:06 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845378da8394d76498c90909fc131368276f6e773f295bde7f05c02058c7566f`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 500.7 KB (500739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3fef675ca85668a4871e1ac136851109419d152788c5620d7d4f0ecdcf79c`  
		Last Modified: Fri, 19 Oct 2018 01:26:12 GMT  
		Size: 88.3 MB (88320702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e341561986baf46a8172cdda88e198a2c6e24fc9d03e245578ff514ccbe3d09`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f3a5b7a69ee8ca9ca71c11d74301be256dbcf0dfe66211f24b75fe55aa9b1a`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:dc776c2fc7559bdbf91743cf885b9de34d12d386d15b8f2b6ed76ed3064b2cb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201861381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479cf98c7536a93e87a5ce45723521286b06f5d9f3ec3c2b88efcba75fc2b7c9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:18:57 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 22:21:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:21:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 22:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 22:21:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 22:21:53 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 22:22:09 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 22:22:11 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 22:22:12 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 23 Aug 2018 22:22:13 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 23 Aug 2018 22:22:14 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 23 Aug 2018 22:22:14 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 23 Aug 2018 22:22:42 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 22:22:45 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 22:23:06 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 22:23:06 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 22:23:27 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Thu, 23 Aug 2018 22:23:28 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 22:23:29 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 22:23:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccfb9f28b47f919b20dab3fe0f436a6a1bea3d91be3a0a4964989d3ce83fed2`  
		Last Modified: Thu, 23 Aug 2018 22:27:32 GMT  
		Size: 73.5 MB (73537277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d26be524bf12625935ae607440747a952773d61c8f038d31faa8b442ae064f`  
		Last Modified: Thu, 23 Aug 2018 22:27:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a65f40d10b47d7409c91f0c934d17b5faca150e8a4b3b66eb50268722efe3`  
		Last Modified: Thu, 23 Aug 2018 22:27:09 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c466ee9e085c26be745f4ab66f688b669ee0eac208c4f23f7c891e28ae5b17c`  
		Last Modified: Thu, 23 Aug 2018 22:27:06 GMT  
		Size: 140.6 KB (140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e2a88ed077d6ee1ffa243d1cff3121a5157b3606f2e781bad602dcf738eb81`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 468.8 KB (468794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c787ac7b1bf9c4935ac776ba8abbb135a538018c07a4b8002770236366575d3`  
		Last Modified: Thu, 23 Aug 2018 22:27:18 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b416a4fcf7b2c4f1fe1a651d829b27709f890769521aeac3e3fe3064401652b3`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364697cb03ba7ceeae317fab19868509ad7fd4bdbb15f098459329d911da784`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6` - linux; ppc64le

```console
$ docker pull bonita@sha256:9dcf6ee760d8053d95da53db2355e8df3aa6e628c0fa8044afcfdf6bacea7b42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211838674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f111003e89c39dee8f0da38d432740ff23b2549bfd8279bf9ae2c5dc1f9965`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:54:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 16:01:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:02:03 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 16:02:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 16:02:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 16:02:34 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 16:02:36 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 16:02:39 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 16:02:44 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 16:02:47 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 16:02:48 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 23 Aug 2018 16:02:59 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 23 Aug 2018 16:03:13 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 23 Aug 2018 16:03:31 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 23 Aug 2018 16:04:53 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 16:05:09 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 16:05:26 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 16:05:31 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 16:05:36 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Thu, 23 Aug 2018 16:05:39 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 16:05:42 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 16:05:43 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75e673f0cae40f078ff4c0bcfbca227aa9d334d42e80076c32c305d2ebb0440`  
		Last Modified: Thu, 23 Aug 2018 16:09:52 GMT  
		Size: 77.3 MB (77299108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9afea67a042db7e888ebbe0b4edb1e1af872e22ecadd4eea989f79546b5f8e1`  
		Last Modified: Thu, 23 Aug 2018 16:09:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae3f536d5e73d2c4a09b14f647aa3c6aeabaf4e319d36a6c990f53c612f346`  
		Last Modified: Thu, 23 Aug 2018 16:09:26 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73165c62a51426107c72136a92a5d65a1666fefa9bc816280d1b129a890e5ef`  
		Last Modified: Thu, 23 Aug 2018 16:09:09 GMT  
		Size: 140.6 KB (140608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6822e1a23a13369ff5ab3f4f09c1fd6a66f63b8182460410f568ddefb248c`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 469.9 KB (469926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179e71f0f435d5ed4be7beb29478d14df0d1e39f502dcaa223b4badf7f631b19`  
		Last Modified: Thu, 23 Aug 2018 16:09:16 GMT  
		Size: 88.3 MB (88320727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad75fc139ab279e859b5f35c238e31974324be424a625da5001ca9e5d7dc8d2`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 6.4 KB (6421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666fc070e46f37a96bfa0582a7ceacb7dcbf16076bc2544fe922cf14c26b1081`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.3`

```console
$ docker pull bonita@sha256:c2d99fe61a35e1debe37e6a5c5dcf0a51e0b1a5d4f416e0c16f5917cf97551bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.6.3` - linux; amd64

```console
$ docker pull bonita@sha256:51f94ec611c5970e82aa7fde5295dd4ff4a1821faec7fed4e8f8f72e7f48b590
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215164545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbf74209b34114167b37438b3673295206875c6d104a16fb01bf69e32145b31`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:23:55 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 01:24:50 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:24:51 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 01:24:51 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 01:24:52 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 01:24:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 01:24:55 GMT
ENV BONITA_VERSION=7.6.3
# Fri, 19 Oct 2018 01:24:55 GMT
ENV TOMCAT_VERSION=8.5.23
# Fri, 19 Oct 2018 01:24:55 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Fri, 19 Oct 2018 01:24:55 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Fri, 19 Oct 2018 01:25:14 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:17 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 01:25:17 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 01:25:17 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Fri, 19 Oct 2018 01:25:18 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 01:25:18 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 01:25:18 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3bf702c4ca1f45deb5679d08b2e5d89777c3620431377061e58cb1035b077f`  
		Last Modified: Fri, 19 Oct 2018 01:26:29 GMT  
		Size: 82.8 MB (82837789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da232b6698ca7cb87cc4584b508115640a1f19d59edbda8a2e5d6683911391`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5562f80c92bb1682f11d4b5f952fa2de264ac6e5dcfc33eff1509216570ba612`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1aeaebb61ab8039cefe92e34b92e6f15484ccebe86bbd60c464e0d3e936fe4`  
		Last Modified: Fri, 19 Oct 2018 01:26:06 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845378da8394d76498c90909fc131368276f6e773f295bde7f05c02058c7566f`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 500.7 KB (500739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3fef675ca85668a4871e1ac136851109419d152788c5620d7d4f0ecdcf79c`  
		Last Modified: Fri, 19 Oct 2018 01:26:12 GMT  
		Size: 88.3 MB (88320702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e341561986baf46a8172cdda88e198a2c6e24fc9d03e245578ff514ccbe3d09`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f3a5b7a69ee8ca9ca71c11d74301be256dbcf0dfe66211f24b75fe55aa9b1a`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6.3` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:dc776c2fc7559bdbf91743cf885b9de34d12d386d15b8f2b6ed76ed3064b2cb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201861381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:479cf98c7536a93e87a5ce45723521286b06f5d9f3ec3c2b88efcba75fc2b7c9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:18:57 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 22:21:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:21:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 22:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 22:21:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 22:21:53 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 22:22:09 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 22:22:11 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 22:22:12 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 23 Aug 2018 22:22:13 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 23 Aug 2018 22:22:14 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 23 Aug 2018 22:22:14 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 23 Aug 2018 22:22:42 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 22:22:45 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 22:23:06 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 22:23:06 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 22:23:27 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Thu, 23 Aug 2018 22:23:28 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 22:23:29 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 22:23:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccfb9f28b47f919b20dab3fe0f436a6a1bea3d91be3a0a4964989d3ce83fed2`  
		Last Modified: Thu, 23 Aug 2018 22:27:32 GMT  
		Size: 73.5 MB (73537277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d26be524bf12625935ae607440747a952773d61c8f038d31faa8b442ae064f`  
		Last Modified: Thu, 23 Aug 2018 22:27:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a65f40d10b47d7409c91f0c934d17b5faca150e8a4b3b66eb50268722efe3`  
		Last Modified: Thu, 23 Aug 2018 22:27:09 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c466ee9e085c26be745f4ab66f688b669ee0eac208c4f23f7c891e28ae5b17c`  
		Last Modified: Thu, 23 Aug 2018 22:27:06 GMT  
		Size: 140.6 KB (140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e2a88ed077d6ee1ffa243d1cff3121a5157b3606f2e781bad602dcf738eb81`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 468.8 KB (468794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c787ac7b1bf9c4935ac776ba8abbb135a538018c07a4b8002770236366575d3`  
		Last Modified: Thu, 23 Aug 2018 22:27:18 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b416a4fcf7b2c4f1fe1a651d829b27709f890769521aeac3e3fe3064401652b3`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364697cb03ba7ceeae317fab19868509ad7fd4bdbb15f098459329d911da784`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6.3` - linux; ppc64le

```console
$ docker pull bonita@sha256:9dcf6ee760d8053d95da53db2355e8df3aa6e628c0fa8044afcfdf6bacea7b42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211838674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f111003e89c39dee8f0da38d432740ff23b2549bfd8279bf9ae2c5dc1f9965`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:54:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 16:01:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:02:03 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 16:02:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 16:02:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 16:02:34 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 16:02:36 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 16:02:39 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 16:02:44 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 16:02:47 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 16:02:48 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 23 Aug 2018 16:02:59 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 23 Aug 2018 16:03:13 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 23 Aug 2018 16:03:31 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 23 Aug 2018 16:04:53 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 16:05:09 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 16:05:26 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 16:05:31 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 16:05:36 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Thu, 23 Aug 2018 16:05:39 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 16:05:42 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 16:05:43 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75e673f0cae40f078ff4c0bcfbca227aa9d334d42e80076c32c305d2ebb0440`  
		Last Modified: Thu, 23 Aug 2018 16:09:52 GMT  
		Size: 77.3 MB (77299108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9afea67a042db7e888ebbe0b4edb1e1af872e22ecadd4eea989f79546b5f8e1`  
		Last Modified: Thu, 23 Aug 2018 16:09:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae3f536d5e73d2c4a09b14f647aa3c6aeabaf4e319d36a6c990f53c612f346`  
		Last Modified: Thu, 23 Aug 2018 16:09:26 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73165c62a51426107c72136a92a5d65a1666fefa9bc816280d1b129a890e5ef`  
		Last Modified: Thu, 23 Aug 2018 16:09:09 GMT  
		Size: 140.6 KB (140608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6822e1a23a13369ff5ab3f4f09c1fd6a66f63b8182460410f568ddefb248c`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 469.9 KB (469926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179e71f0f435d5ed4be7beb29478d14df0d1e39f502dcaa223b4badf7f631b19`  
		Last Modified: Thu, 23 Aug 2018 16:09:16 GMT  
		Size: 88.3 MB (88320727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad75fc139ab279e859b5f35c238e31974324be424a625da5001ca9e5d7dc8d2`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 6.4 KB (6421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666fc070e46f37a96bfa0582a7ceacb7dcbf16076bc2544fe922cf14c26b1081`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7`

```console
$ docker pull bonita@sha256:c680f1bfa236008fa9e68ac43fa1e8f0ee0655d682f5fdf5dc235547699e6b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:9dfa061a35631da85bf18d88835cffcdc282b93e8eff3af259591e2a9e42f1eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214667424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7803d4d4a303b5378d47b4c0dcc29bd2b158fd0d2aaf56e36dcb49149907f40e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:23:55 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 01:24:50 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:24:51 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 01:24:51 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 01:24:52 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 01:24:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 01:25:30 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 01:25:47 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:48 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:49 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 01:25:49 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 01:25:50 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 01:25:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3bf702c4ca1f45deb5679d08b2e5d89777c3620431377061e58cb1035b077f`  
		Last Modified: Fri, 19 Oct 2018 01:26:29 GMT  
		Size: 82.8 MB (82837789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da232b6698ca7cb87cc4584b508115640a1f19d59edbda8a2e5d6683911391`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5562f80c92bb1682f11d4b5f952fa2de264ac6e5dcfc33eff1509216570ba612`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1aeaebb61ab8039cefe92e34b92e6f15484ccebe86bbd60c464e0d3e936fe4`  
		Last Modified: Fri, 19 Oct 2018 01:26:06 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845378da8394d76498c90909fc131368276f6e773f295bde7f05c02058c7566f`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 500.7 KB (500739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbcd2cf8f3c8f9138f5eb2adfe968db7307b47ce5af7aa7f5061ff1c137ea51`  
		Last Modified: Fri, 19 Oct 2018 01:26:59 GMT  
		Size: 87.8 MB (87823573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9622d5e9160d9bcc86ef4c4683b0e86bac207c0c6d94deaa6848d58a60600e9`  
		Last Modified: Fri, 19 Oct 2018 01:26:54 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d524e77efc2b7844a7e74d76e8a3dab555d5bcca7eacc4a11bd4a7727aff0ce`  
		Last Modified: Fri, 19 Oct 2018 01:26:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:4c55214458fa1b880a32e637cbf7cc37391e5d8ad6425d8bd7a3038bb634f360
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201364261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafdbad8cdb68626d3ede3cc7d1a2b70025433f1650f30a646f492b28aa4785`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:18:57 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 22:21:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:21:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 22:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 22:21:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 22:21:53 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 22:22:09 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 22:22:11 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:41:14 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:41:15 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:42:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:34 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:37 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:42:38 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:42:49 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:42:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:42:51 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:42:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccfb9f28b47f919b20dab3fe0f436a6a1bea3d91be3a0a4964989d3ce83fed2`  
		Last Modified: Thu, 23 Aug 2018 22:27:32 GMT  
		Size: 73.5 MB (73537277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d26be524bf12625935ae607440747a952773d61c8f038d31faa8b442ae064f`  
		Last Modified: Thu, 23 Aug 2018 22:27:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a65f40d10b47d7409c91f0c934d17b5faca150e8a4b3b66eb50268722efe3`  
		Last Modified: Thu, 23 Aug 2018 22:27:09 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c466ee9e085c26be745f4ab66f688b669ee0eac208c4f23f7c891e28ae5b17c`  
		Last Modified: Thu, 23 Aug 2018 22:27:06 GMT  
		Size: 140.6 KB (140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e2a88ed077d6ee1ffa243d1cff3121a5157b3606f2e781bad602dcf738eb81`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 468.8 KB (468794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bde336d5e6d0e056048ec5fcaae0863ec8ff61e21080c427dff7574f5501671`  
		Last Modified: Wed, 10 Oct 2018 08:43:24 GMT  
		Size: 87.8 MB (87823580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be6c0b8534a850a59e3b1331aeda0b90117ab17040000ebe2c5431e0d4cf5d7`  
		Last Modified: Wed, 10 Oct 2018 08:43:12 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d252b069f11a1895335526329acb5b824f8f2dc8e8a1b1c92b2be462f0e75cd6`  
		Last Modified: Wed, 10 Oct 2018 08:43:11 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:71eb8c55b23eb1224e63ecb201f40013aa126589f3dbdd5d845c4bd717ba904d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211341563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226df8c0d7699b8005c97f9c7f541d593e4f90057971b352879fcb06cf06af84`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:54:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 16:01:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:02:03 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 16:02:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 16:02:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 16:02:34 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 16:02:36 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 16:02:39 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 16:02:44 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 16:02:47 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:23:06 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:23:07 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:23:07 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:23:08 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:24:04 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:07 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:24:33 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:24:34 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:24:36 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:24:36 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:24:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75e673f0cae40f078ff4c0bcfbca227aa9d334d42e80076c32c305d2ebb0440`  
		Last Modified: Thu, 23 Aug 2018 16:09:52 GMT  
		Size: 77.3 MB (77299108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9afea67a042db7e888ebbe0b4edb1e1af872e22ecadd4eea989f79546b5f8e1`  
		Last Modified: Thu, 23 Aug 2018 16:09:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae3f536d5e73d2c4a09b14f647aa3c6aeabaf4e319d36a6c990f53c612f346`  
		Last Modified: Thu, 23 Aug 2018 16:09:26 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73165c62a51426107c72136a92a5d65a1666fefa9bc816280d1b129a890e5ef`  
		Last Modified: Thu, 23 Aug 2018 16:09:09 GMT  
		Size: 140.6 KB (140608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6822e1a23a13369ff5ab3f4f09c1fd6a66f63b8182460410f568ddefb248c`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 469.9 KB (469926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999f0006bbc4299a562a4747b24ade08f2cf75bbc921266e1ac27c892784dc7`  
		Last Modified: Wed, 10 Oct 2018 08:25:07 GMT  
		Size: 87.8 MB (87823606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b665ceb6e792e409d486a899e10eba442d12756fe4d66afa9fba6c21e7ebd1`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d6c004b67a2140b61f94695e2c9b15b566ec0ab8670e82387ec1def7b2126d`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.4`

```console
$ docker pull bonita@sha256:c680f1bfa236008fa9e68ac43fa1e8f0ee0655d682f5fdf5dc235547699e6b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7.4` - linux; amd64

```console
$ docker pull bonita@sha256:9dfa061a35631da85bf18d88835cffcdc282b93e8eff3af259591e2a9e42f1eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214667424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7803d4d4a303b5378d47b4c0dcc29bd2b158fd0d2aaf56e36dcb49149907f40e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:23:55 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 01:24:50 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:24:51 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 01:24:51 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 01:24:52 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 01:24:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 01:25:30 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 01:25:47 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:48 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:49 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 01:25:49 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 01:25:50 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 01:25:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3bf702c4ca1f45deb5679d08b2e5d89777c3620431377061e58cb1035b077f`  
		Last Modified: Fri, 19 Oct 2018 01:26:29 GMT  
		Size: 82.8 MB (82837789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da232b6698ca7cb87cc4584b508115640a1f19d59edbda8a2e5d6683911391`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5562f80c92bb1682f11d4b5f952fa2de264ac6e5dcfc33eff1509216570ba612`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1aeaebb61ab8039cefe92e34b92e6f15484ccebe86bbd60c464e0d3e936fe4`  
		Last Modified: Fri, 19 Oct 2018 01:26:06 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845378da8394d76498c90909fc131368276f6e773f295bde7f05c02058c7566f`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 500.7 KB (500739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbcd2cf8f3c8f9138f5eb2adfe968db7307b47ce5af7aa7f5061ff1c137ea51`  
		Last Modified: Fri, 19 Oct 2018 01:26:59 GMT  
		Size: 87.8 MB (87823573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9622d5e9160d9bcc86ef4c4683b0e86bac207c0c6d94deaa6848d58a60600e9`  
		Last Modified: Fri, 19 Oct 2018 01:26:54 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d524e77efc2b7844a7e74d76e8a3dab555d5bcca7eacc4a11bd4a7727aff0ce`  
		Last Modified: Fri, 19 Oct 2018 01:26:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.4` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:4c55214458fa1b880a32e637cbf7cc37391e5d8ad6425d8bd7a3038bb634f360
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201364261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafdbad8cdb68626d3ede3cc7d1a2b70025433f1650f30a646f492b28aa4785`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:18:57 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 22:21:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:21:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 22:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 22:21:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 22:21:53 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 22:22:09 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 22:22:11 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:41:14 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:41:15 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:42:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:34 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:37 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:42:38 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:42:49 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:42:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:42:51 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:42:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccfb9f28b47f919b20dab3fe0f436a6a1bea3d91be3a0a4964989d3ce83fed2`  
		Last Modified: Thu, 23 Aug 2018 22:27:32 GMT  
		Size: 73.5 MB (73537277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d26be524bf12625935ae607440747a952773d61c8f038d31faa8b442ae064f`  
		Last Modified: Thu, 23 Aug 2018 22:27:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a65f40d10b47d7409c91f0c934d17b5faca150e8a4b3b66eb50268722efe3`  
		Last Modified: Thu, 23 Aug 2018 22:27:09 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c466ee9e085c26be745f4ab66f688b669ee0eac208c4f23f7c891e28ae5b17c`  
		Last Modified: Thu, 23 Aug 2018 22:27:06 GMT  
		Size: 140.6 KB (140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e2a88ed077d6ee1ffa243d1cff3121a5157b3606f2e781bad602dcf738eb81`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 468.8 KB (468794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bde336d5e6d0e056048ec5fcaae0863ec8ff61e21080c427dff7574f5501671`  
		Last Modified: Wed, 10 Oct 2018 08:43:24 GMT  
		Size: 87.8 MB (87823580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be6c0b8534a850a59e3b1331aeda0b90117ab17040000ebe2c5431e0d4cf5d7`  
		Last Modified: Wed, 10 Oct 2018 08:43:12 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d252b069f11a1895335526329acb5b824f8f2dc8e8a1b1c92b2be462f0e75cd6`  
		Last Modified: Wed, 10 Oct 2018 08:43:11 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.4` - linux; ppc64le

```console
$ docker pull bonita@sha256:71eb8c55b23eb1224e63ecb201f40013aa126589f3dbdd5d845c4bd717ba904d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211341563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226df8c0d7699b8005c97f9c7f541d593e4f90057971b352879fcb06cf06af84`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:54:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 16:01:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:02:03 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 16:02:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 16:02:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 16:02:34 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 16:02:36 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 16:02:39 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 16:02:44 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 16:02:47 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:23:06 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:23:07 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:23:07 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:23:08 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:24:04 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:07 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:24:33 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:24:34 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:24:36 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:24:36 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:24:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75e673f0cae40f078ff4c0bcfbca227aa9d334d42e80076c32c305d2ebb0440`  
		Last Modified: Thu, 23 Aug 2018 16:09:52 GMT  
		Size: 77.3 MB (77299108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9afea67a042db7e888ebbe0b4edb1e1af872e22ecadd4eea989f79546b5f8e1`  
		Last Modified: Thu, 23 Aug 2018 16:09:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae3f536d5e73d2c4a09b14f647aa3c6aeabaf4e319d36a6c990f53c612f346`  
		Last Modified: Thu, 23 Aug 2018 16:09:26 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73165c62a51426107c72136a92a5d65a1666fefa9bc816280d1b129a890e5ef`  
		Last Modified: Thu, 23 Aug 2018 16:09:09 GMT  
		Size: 140.6 KB (140608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6822e1a23a13369ff5ab3f4f09c1fd6a66f63b8182460410f568ddefb248c`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 469.9 KB (469926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999f0006bbc4299a562a4747b24ade08f2cf75bbc921266e1ac27c892784dc7`  
		Last Modified: Wed, 10 Oct 2018 08:25:07 GMT  
		Size: 87.8 MB (87823606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b665ceb6e792e409d486a899e10eba442d12756fe4d66afa9fba6c21e7ebd1`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d6c004b67a2140b61f94695e2c9b15b566ec0ab8670e82387ec1def7b2126d`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:c680f1bfa236008fa9e68ac43fa1e8f0ee0655d682f5fdf5dc235547699e6b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:9dfa061a35631da85bf18d88835cffcdc282b93e8eff3af259591e2a9e42f1eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214667424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7803d4d4a303b5378d47b4c0dcc29bd2b158fd0d2aaf56e36dcb49149907f40e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:23:55 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 01:24:50 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:24:51 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 01:24:51 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 01:24:52 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 01:24:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 01:25:30 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 01:25:47 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:48 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:49 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 01:25:49 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 01:25:50 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 01:25:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3bf702c4ca1f45deb5679d08b2e5d89777c3620431377061e58cb1035b077f`  
		Last Modified: Fri, 19 Oct 2018 01:26:29 GMT  
		Size: 82.8 MB (82837789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da232b6698ca7cb87cc4584b508115640a1f19d59edbda8a2e5d6683911391`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5562f80c92bb1682f11d4b5f952fa2de264ac6e5dcfc33eff1509216570ba612`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1aeaebb61ab8039cefe92e34b92e6f15484ccebe86bbd60c464e0d3e936fe4`  
		Last Modified: Fri, 19 Oct 2018 01:26:06 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845378da8394d76498c90909fc131368276f6e773f295bde7f05c02058c7566f`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 500.7 KB (500739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbcd2cf8f3c8f9138f5eb2adfe968db7307b47ce5af7aa7f5061ff1c137ea51`  
		Last Modified: Fri, 19 Oct 2018 01:26:59 GMT  
		Size: 87.8 MB (87823573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9622d5e9160d9bcc86ef4c4683b0e86bac207c0c6d94deaa6848d58a60600e9`  
		Last Modified: Fri, 19 Oct 2018 01:26:54 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d524e77efc2b7844a7e74d76e8a3dab555d5bcca7eacc4a11bd4a7727aff0ce`  
		Last Modified: Fri, 19 Oct 2018 01:26:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:4c55214458fa1b880a32e637cbf7cc37391e5d8ad6425d8bd7a3038bb634f360
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201364261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafdbad8cdb68626d3ede3cc7d1a2b70025433f1650f30a646f492b28aa4785`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:18:57 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 22:21:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:21:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 22:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 22:21:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 22:21:53 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 22:22:09 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 22:22:11 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:41:14 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:41:15 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:42:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:34 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:37 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:42:38 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:42:49 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:42:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:42:51 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:42:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccfb9f28b47f919b20dab3fe0f436a6a1bea3d91be3a0a4964989d3ce83fed2`  
		Last Modified: Thu, 23 Aug 2018 22:27:32 GMT  
		Size: 73.5 MB (73537277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d26be524bf12625935ae607440747a952773d61c8f038d31faa8b442ae064f`  
		Last Modified: Thu, 23 Aug 2018 22:27:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a65f40d10b47d7409c91f0c934d17b5faca150e8a4b3b66eb50268722efe3`  
		Last Modified: Thu, 23 Aug 2018 22:27:09 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c466ee9e085c26be745f4ab66f688b669ee0eac208c4f23f7c891e28ae5b17c`  
		Last Modified: Thu, 23 Aug 2018 22:27:06 GMT  
		Size: 140.6 KB (140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e2a88ed077d6ee1ffa243d1cff3121a5157b3606f2e781bad602dcf738eb81`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 468.8 KB (468794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bde336d5e6d0e056048ec5fcaae0863ec8ff61e21080c427dff7574f5501671`  
		Last Modified: Wed, 10 Oct 2018 08:43:24 GMT  
		Size: 87.8 MB (87823580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be6c0b8534a850a59e3b1331aeda0b90117ab17040000ebe2c5431e0d4cf5d7`  
		Last Modified: Wed, 10 Oct 2018 08:43:12 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d252b069f11a1895335526329acb5b824f8f2dc8e8a1b1c92b2be462f0e75cd6`  
		Last Modified: Wed, 10 Oct 2018 08:43:11 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:71eb8c55b23eb1224e63ecb201f40013aa126589f3dbdd5d845c4bd717ba904d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211341563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226df8c0d7699b8005c97f9c7f541d593e4f90057971b352879fcb06cf06af84`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:54:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 16:01:33 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:02:03 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 16:02:14 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 16:02:24 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 16:02:34 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 16:02:36 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 16:02:39 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 16:02:44 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 16:02:47 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:23:06 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:23:07 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:23:07 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:23:08 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:24:04 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:07 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:24:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:24:33 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:24:34 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:24:36 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:24:36 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:24:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75e673f0cae40f078ff4c0bcfbca227aa9d334d42e80076c32c305d2ebb0440`  
		Last Modified: Thu, 23 Aug 2018 16:09:52 GMT  
		Size: 77.3 MB (77299108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9afea67a042db7e888ebbe0b4edb1e1af872e22ecadd4eea989f79546b5f8e1`  
		Last Modified: Thu, 23 Aug 2018 16:09:29 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae3f536d5e73d2c4a09b14f647aa3c6aeabaf4e319d36a6c990f53c612f346`  
		Last Modified: Thu, 23 Aug 2018 16:09:26 GMT  
		Size: 2.1 KB (2055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73165c62a51426107c72136a92a5d65a1666fefa9bc816280d1b129a890e5ef`  
		Last Modified: Thu, 23 Aug 2018 16:09:09 GMT  
		Size: 140.6 KB (140608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6822e1a23a13369ff5ab3f4f09c1fd6a66f63b8182460410f568ddefb248c`  
		Last Modified: Thu, 23 Aug 2018 16:09:08 GMT  
		Size: 469.9 KB (469926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999f0006bbc4299a562a4747b24ade08f2cf75bbc921266e1ac27c892784dc7`  
		Last Modified: Wed, 10 Oct 2018 08:25:07 GMT  
		Size: 87.8 MB (87823606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b665ceb6e792e409d486a899e10eba442d12756fe4d66afa9fba6c21e7ebd1`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d6c004b67a2140b61f94695e2c9b15b566ec0ab8670e82387ec1def7b2126d`  
		Last Modified: Wed, 10 Oct 2018 08:24:58 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
