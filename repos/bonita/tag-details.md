<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.8`](#bonita78)
-	[`bonita:7.8.4`](#bonita784)
-	[`bonita:7.9`](#bonita79)
-	[`bonita:7.9.0`](#bonita790)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.8`

```console
$ docker pull bonita@sha256:1a43a469fe1d143f1e9ada3455457cfc69c21d4be41ae5604c025cbc19065349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8` - linux; amd64

```console
$ docker pull bonita@sha256:0f352d6462d28b375bf58e7672e82403f64fdb8454e5aae6b1da44b0510f01a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221275581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c762ca5db48df9165e2c3af93c288e96c4b83760cc2c2ac86ad637b0eb354d0c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:38:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 15 May 2019 21:39:09 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:12 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 15 May 2019 21:39:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 15 May 2019 21:39:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 15 May 2019 21:39:16 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG TOMCAT_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_SHA256
# Wed, 15 May 2019 21:39:17 GMT
ARG BONITA_URL
# Wed, 15 May 2019 21:39:33 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 15 May 2019 21:39:34 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 15 May 2019 21:39:42 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:46 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 15 May 2019 21:39:48 GMT
VOLUME [/opt/bonita]
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 15 May 2019 21:39:48 GMT
EXPOSE 8080
# Wed, 15 May 2019 21:39:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2054ffe6918ee14a5656783f4e7e00c518a854c42d68ab4438d102178c7e2460`  
		Last Modified: Wed, 15 May 2019 21:40:16 GMT  
		Size: 82.8 MB (82825868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b0e75dcea0a1bfb203f09f320478f14ab32887119659c45593af54edd49356`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f4a16446c587dfada2a11484f9c2ade5e35899b44fd8a2ff8af99ab8872923`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126df4570c8d50706efbba124d49d85c50c8040ae85ecfd95525b5cb9fad419f`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c7e85d000ec3bab408f31ae4e2327eaf58e1e6ba74cb476cfa02df4deab2`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9f50ae09160103f2b69489313fce9b26e2ec67b2ff2ddc9790b097533a8`  
		Last Modified: Wed, 15 May 2019 21:40:28 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5290f11ca4c3cd1b18d7e98c72e07d8b9868165666b1db3d8d55ca8cbc4e6ebb`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f18745fc4ec1fcc83a8bfe21ba7062c4cd80d9ef5eb3a74520cc3cfe0ce2b`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:7491b23861fc52c41afda73227c8f7cc62e860c6000b755e38a12f79ddb188b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208222000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b123cdbb8808616ff962a038a04acd3e55d588f496c2029a2f1df0f9b104d00`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:02:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:03:26 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:03:31 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:03:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:03:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 17 Jun 2019 23:03:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:03:39 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:03:40 GMT
ARG TOMCAT_VERSION
# Mon, 17 Jun 2019 23:03:40 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:03:41 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:03:42 GMT
ENV BONITA_VERSION=7.8.4
# Mon, 17 Jun 2019 23:03:42 GMT
ENV TOMCAT_VERSION=8.5.34
# Mon, 17 Jun 2019 23:03:43 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Mon, 17 Jun 2019 23:03:43 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Mon, 17 Jun 2019 23:04:32 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:04:35 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:04:37 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:04:38 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:04:38 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Mon, 17 Jun 2019 23:04:39 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Mon, 17 Jun 2019 23:04:39 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:04:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27959de3d9e6a143c02658b2cef52cd8b4b6ce1f01f0deee81a9446085b2d2f3`  
		Last Modified: Mon, 17 Jun 2019 23:08:00 GMT  
		Size: 73.8 MB (73836518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b89887e03055e70f571d578e9e87a896fa340ed60c4262aaa779bc15ec12a8`  
		Last Modified: Mon, 17 Jun 2019 23:07:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50e587e704f6a37783bd2ef2dd7325713c69b7763f598c268a99be586d6ac55`  
		Last Modified: Mon, 17 Jun 2019 23:07:41 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7722a5998511d74001faa6056334f56b2d2f531d4e59163cb32d8ea083787e7`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ad7933630d4865d13a35b59b8e602c4029a2e4295eb03d9b50d507247d477`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf34ea67bba7f9b62cd9962b864d822945da404c092c73d5181574d1296045a`  
		Last Modified: Mon, 17 Jun 2019 23:07:50 GMT  
		Size: 94.0 MB (94028659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054db7b8cb7e3a24cea0afd4bd320e04b05784149753468c4385ccdb10cbeff6`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dee1068a89623dfb3b317a33109ded55d60844a3f61ee9c2c13942d329e3f5`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8` - linux; ppc64le

```console
$ docker pull bonita@sha256:a936c32be77c4f5e78a7435bb7e14ba130e94ae59091d51c0fff8e8bf7c1c1fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217937478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d2944f8e47eac630fc7d62ac2aac9f08a68e35954525221f03cc463e11d874`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:43:20 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:45:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:45:55 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:46:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:46:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 17 Jun 2019 23:46:14 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:46:15 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:46:17 GMT
ARG TOMCAT_VERSION
# Mon, 17 Jun 2019 23:46:19 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:46:21 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:46:23 GMT
ENV BONITA_VERSION=7.8.4
# Mon, 17 Jun 2019 23:46:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Mon, 17 Jun 2019 23:46:26 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Mon, 17 Jun 2019 23:46:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Mon, 17 Jun 2019 23:47:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:29 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:34 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:47:36 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Mon, 17 Jun 2019 23:47:40 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:47:42 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e43c3c9d823219865b554a8d2f209dac7b7ca48fa0c259ddb6aac39919748`  
		Last Modified: Mon, 17 Jun 2019 23:52:28 GMT  
		Size: 77.4 MB (77350432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c3d17fab22ccd6fed19a42911c4cda4a08c6524c21b589b98c8c4704487b`  
		Last Modified: Mon, 17 Jun 2019 23:52:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0496f8946ed23eb653faa1d526ff15d8bf443b72980575b4d633468def5d72`  
		Last Modified: Mon, 17 Jun 2019 23:52:08 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322c92e2555a71c32328ab0a27c0cbd6cf4da0b97413a657c37b6ab002f869c0`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 140.6 KB (140612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91f27e2814771b13559494b4fd5d190eb38eadd8ff80d41cf74546104761add`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029de702f318aac3c132e3c1b8b0b2a38ea82b073b5a0874a85233c14c4b35e4`  
		Last Modified: Mon, 17 Jun 2019 23:52:17 GMT  
		Size: 94.0 MB (94028663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b4638911640af7713dc16932df9fdb9bf06a562adf3473e9ca87b7f555e61`  
		Last Modified: Mon, 17 Jun 2019 23:52:05 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e3740441d3be84c6915146e5b8879ae68a7c719af3f0279a826db3c128a7fb`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.8.4`

```console
$ docker pull bonita@sha256:1a43a469fe1d143f1e9ada3455457cfc69c21d4be41ae5604c025cbc19065349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.8.4` - linux; amd64

```console
$ docker pull bonita@sha256:0f352d6462d28b375bf58e7672e82403f64fdb8454e5aae6b1da44b0510f01a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221275581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c762ca5db48df9165e2c3af93c288e96c4b83760cc2c2ac86ad637b0eb354d0c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:38:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 15 May 2019 21:39:09 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:12 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 15 May 2019 21:39:13 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 15 May 2019 21:39:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 15 May 2019 21:39:16 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG TOMCAT_VERSION
# Wed, 15 May 2019 21:39:16 GMT
ARG BONITA_SHA256
# Wed, 15 May 2019 21:39:17 GMT
ARG BONITA_URL
# Wed, 15 May 2019 21:39:33 GMT
ENV BONITA_VERSION=7.8.4
# Wed, 15 May 2019 21:39:34 GMT
ENV TOMCAT_VERSION=8.5.34
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Wed, 15 May 2019 21:39:34 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Wed, 15 May 2019 21:39:42 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:46 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 15 May 2019 21:39:48 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 15 May 2019 21:39:48 GMT
VOLUME [/opt/bonita]
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Wed, 15 May 2019 21:39:48 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Wed, 15 May 2019 21:39:48 GMT
EXPOSE 8080
# Wed, 15 May 2019 21:39:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2054ffe6918ee14a5656783f4e7e00c518a854c42d68ab4438d102178c7e2460`  
		Last Modified: Wed, 15 May 2019 21:40:16 GMT  
		Size: 82.8 MB (82825868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b0e75dcea0a1bfb203f09f320478f14ab32887119659c45593af54edd49356`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f4a16446c587dfada2a11484f9c2ade5e35899b44fd8a2ff8af99ab8872923`  
		Last Modified: Wed, 15 May 2019 21:39:59 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126df4570c8d50706efbba124d49d85c50c8040ae85ecfd95525b5cb9fad419f`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300c7e85d000ec3bab408f31ae4e2327eaf58e1e6ba74cb476cfa02df4deab2`  
		Last Modified: Wed, 15 May 2019 21:39:58 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9f50ae09160103f2b69489313fce9b26e2ec67b2ff2ddc9790b097533a8`  
		Last Modified: Wed, 15 May 2019 21:40:28 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5290f11ca4c3cd1b18d7e98c72e07d8b9868165666b1db3d8d55ca8cbc4e6ebb`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f18745fc4ec1fcc83a8bfe21ba7062c4cd80d9ef5eb3a74520cc3cfe0ce2b`  
		Last Modified: Wed, 15 May 2019 21:40:23 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.4` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:7491b23861fc52c41afda73227c8f7cc62e860c6000b755e38a12f79ddb188b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208222000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b123cdbb8808616ff962a038a04acd3e55d588f496c2029a2f1df0f9b104d00`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:02:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:03:26 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:03:31 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:03:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:03:36 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 17 Jun 2019 23:03:39 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:03:39 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:03:40 GMT
ARG TOMCAT_VERSION
# Mon, 17 Jun 2019 23:03:40 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:03:41 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:03:42 GMT
ENV BONITA_VERSION=7.8.4
# Mon, 17 Jun 2019 23:03:42 GMT
ENV TOMCAT_VERSION=8.5.34
# Mon, 17 Jun 2019 23:03:43 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Mon, 17 Jun 2019 23:03:43 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Mon, 17 Jun 2019 23:04:32 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:04:35 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:04:37 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:04:38 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:04:38 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Mon, 17 Jun 2019 23:04:39 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Mon, 17 Jun 2019 23:04:39 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:04:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27959de3d9e6a143c02658b2cef52cd8b4b6ce1f01f0deee81a9446085b2d2f3`  
		Last Modified: Mon, 17 Jun 2019 23:08:00 GMT  
		Size: 73.8 MB (73836518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b89887e03055e70f571d578e9e87a896fa340ed60c4262aaa779bc15ec12a8`  
		Last Modified: Mon, 17 Jun 2019 23:07:41 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50e587e704f6a37783bd2ef2dd7325713c69b7763f598c268a99be586d6ac55`  
		Last Modified: Mon, 17 Jun 2019 23:07:41 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7722a5998511d74001faa6056334f56b2d2f531d4e59163cb32d8ea083787e7`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37ad7933630d4865d13a35b59b8e602c4029a2e4295eb03d9b50d507247d477`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf34ea67bba7f9b62cd9962b864d822945da404c092c73d5181574d1296045a`  
		Last Modified: Mon, 17 Jun 2019 23:07:50 GMT  
		Size: 94.0 MB (94028659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054db7b8cb7e3a24cea0afd4bd320e04b05784149753468c4385ccdb10cbeff6`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dee1068a89623dfb3b317a33109ded55d60844a3f61ee9c2c13942d329e3f5`  
		Last Modified: Mon, 17 Jun 2019 23:07:39 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.8.4` - linux; ppc64le

```console
$ docker pull bonita@sha256:a936c32be77c4f5e78a7435bb7e14ba130e94ae59091d51c0fff8e8bf7c1c1fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217937478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d2944f8e47eac630fc7d62ac2aac9f08a68e35954525221f03cc463e11d874`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:43:20 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:45:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:45:55 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:46:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:46:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 17 Jun 2019 23:46:14 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:46:15 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:46:17 GMT
ARG TOMCAT_VERSION
# Mon, 17 Jun 2019 23:46:19 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:46:21 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:46:23 GMT
ENV BONITA_VERSION=7.8.4
# Mon, 17 Jun 2019 23:46:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Mon, 17 Jun 2019 23:46:26 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Mon, 17 Jun 2019 23:46:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Mon, 17 Jun 2019 23:47:24 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:29 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 17 Jun 2019 23:47:34 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:47:36 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Mon, 17 Jun 2019 23:47:38 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Mon, 17 Jun 2019 23:47:40 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:47:42 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e43c3c9d823219865b554a8d2f209dac7b7ca48fa0c259ddb6aac39919748`  
		Last Modified: Mon, 17 Jun 2019 23:52:28 GMT  
		Size: 77.4 MB (77350432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7057c3d17fab22ccd6fed19a42911c4cda4a08c6524c21b589b98c8c4704487b`  
		Last Modified: Mon, 17 Jun 2019 23:52:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0496f8946ed23eb653faa1d526ff15d8bf443b72980575b4d633468def5d72`  
		Last Modified: Mon, 17 Jun 2019 23:52:08 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322c92e2555a71c32328ab0a27c0cbd6cf4da0b97413a657c37b6ab002f869c0`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 140.6 KB (140612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91f27e2814771b13559494b4fd5d190eb38eadd8ff80d41cf74546104761add`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029de702f318aac3c132e3c1b8b0b2a38ea82b073b5a0874a85233c14c4b35e4`  
		Last Modified: Mon, 17 Jun 2019 23:52:17 GMT  
		Size: 94.0 MB (94028663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b4638911640af7713dc16932df9fdb9bf06a562adf3473e9ca87b7f555e61`  
		Last Modified: Mon, 17 Jun 2019 23:52:05 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e3740441d3be84c6915146e5b8879ae68a7c719af3f0279a826db3c128a7fb`  
		Last Modified: Mon, 17 Jun 2019 23:52:06 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.9`

```console
$ docker pull bonita@sha256:4e1c1689cf79fd9c89d2bf379cce814204674ca34bdbc31ed4bcaefc281d7a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.9` - linux; amd64

```console
$ docker pull bonita@sha256:19af15ca3dff56ba22697c2a10c0d555af9cefef92cc05f767fe38c3e4bfa635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229845308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45337405c4b1fec9b86c0e51640381f167a2b52374d7e5cc01fbcd18338695`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 01:29:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 01:30:18 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:30:20 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 01:30:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 01:30:23 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 01:30:24 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 01:30:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 01:30:38 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 01:30:39 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 01:30:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab04e3c3c62bf8cf07ba3916ff59e606844ca4ac48599a4d4c66b143ba9e7ff`  
		Last Modified: Tue, 18 Jun 2019 01:31:20 GMT  
		Size: 101.9 MB (101905041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0106b7c9b768e7a3971d120ceeeef1da525193df539cedebc129ff8ed38843`  
		Last Modified: Tue, 18 Jun 2019 01:30:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd180994c3c40cd7bba9b483fe377ce93b3aed5c1d7c3cd0c3d3e611c1fabf4`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce10142e6f3c8cc5f0ec3292acfedcf65324390b92ffaf9a90f3b3637b5cd9e`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 569.1 KB (569081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50eb4e47e1234fbd1921d497755f8da190ba764c27b3627a4c4f2f1d29f62e1`  
		Last Modified: Tue, 18 Jun 2019 01:31:03 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039838d002136b49b8c8fe8f92f5ad54b1735ba353aa7366d8b31e72dabcb94`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 7.6 KB (7560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcb9f8e7a89e7d3602cac0ab76e5ce6ab0a913f81a7c0d0da639f9c7f249e3`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:c4a813c019fda62cae154076b3cfe34021dbac7d4dd723a1dc72f8e0cdf1c5d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217766705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6734fe666fa855102a973002ccb04eff1e154802ae9d4a98c9cd95f5837f7d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:04:49 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:05:59 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:06:04 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:06:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:06:09 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:06:10 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:06:10 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:06:11 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:06:12 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:06:13 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:06:14 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:07:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:07:20 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:07:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:07:22 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:07:23 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:07:24 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:07:24 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:07:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c1f69c04a3021ba14c8758c58eabe8d1dfa1f1ffcdd5b1a70112127e06a009`  
		Last Modified: Mon, 17 Jun 2019 23:08:37 GMT  
		Size: 92.8 MB (92838569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fba2d8cd818b3affcf2219956dbbf4ee96971cc5f8ccc56fab6856d4b7a24f`  
		Last Modified: Mon, 17 Jun 2019 23:08:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99aedd105c9d45945b5b21b71328cb9cb4572603bc72e7445fd10dad1116a55`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 1.9 KB (1917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2686368a1e851f78512f433bfd41b75dbada04ceb19ff7f245cdf86e01ba31`  
		Last Modified: Mon, 17 Jun 2019 23:08:07 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f4fcd0100cbc1508f16072c2a868bfbd541c9b28125796fe49d61e3e1928a9`  
		Last Modified: Mon, 17 Jun 2019 23:08:19 GMT  
		Size: 98.5 MB (98503920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937a49c443bc71bb13aaae62df7bc230ab909575f9eee4195b1caca47699c24d`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 7.6 KB (7587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9391f548a0195168377ee752de7a2124f0b9e4a8ee95345c95aab03db46526cf`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9` - linux; ppc64le

```console
$ docker pull bonita@sha256:5215e887de3d84fa959949bbf3c0762f62dac940a10b129f487d6bbca35b099f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226551665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68103550ce599e10e8c279c6d3b6849c03a812440e12bf5dfc5809be898d63a9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:47:46 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:50:13 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:50:18 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:50:28 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:50:30 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:50:32 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:50:34 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:50:36 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:50:37 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:50:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:51:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:51:47 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:51:47 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:51:48 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:51:50 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:51:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53507aa91c369cbc0acedaaa960bc139d1797a805e01dfb2d32ab1916f9231fd`  
		Last Modified: Mon, 17 Jun 2019 23:53:13 GMT  
		Size: 94.9 MB (94938228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf033f0b5e52fb35fb70f7f332bd4b8d188fbf452b4b08b60f597ba56445720`  
		Last Modified: Mon, 17 Jun 2019 23:52:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50633185561df55ffe2032b93183210e007dce454d7e74d0dddf0c1fffb857cf`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48d24f130e5cebac121df0b0ff33bfa70251ef2e52a927414c12ca30fe50693`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 537.9 KB (537895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f86cc875b17faca4d5c6f1ddcc85deeba9fc5bbaee6bda5052c8befafdb064`  
		Last Modified: Mon, 17 Jun 2019 23:52:53 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda0594ad860f771357e0d598a069d1a4593b5fb8bf0d45813631faba4d8f6`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5c5228074e04cd8c4dc4ba6a473f1c66c1842e1afd76fcfc75e59440852b`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.9.0`

```console
$ docker pull bonita@sha256:4e1c1689cf79fd9c89d2bf379cce814204674ca34bdbc31ed4bcaefc281d7a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.9.0` - linux; amd64

```console
$ docker pull bonita@sha256:19af15ca3dff56ba22697c2a10c0d555af9cefef92cc05f767fe38c3e4bfa635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229845308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45337405c4b1fec9b86c0e51640381f167a2b52374d7e5cc01fbcd18338695`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 01:29:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 01:30:18 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:30:20 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 01:30:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 01:30:23 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 01:30:24 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 01:30:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 01:30:38 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 01:30:39 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 01:30:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab04e3c3c62bf8cf07ba3916ff59e606844ca4ac48599a4d4c66b143ba9e7ff`  
		Last Modified: Tue, 18 Jun 2019 01:31:20 GMT  
		Size: 101.9 MB (101905041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0106b7c9b768e7a3971d120ceeeef1da525193df539cedebc129ff8ed38843`  
		Last Modified: Tue, 18 Jun 2019 01:30:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd180994c3c40cd7bba9b483fe377ce93b3aed5c1d7c3cd0c3d3e611c1fabf4`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce10142e6f3c8cc5f0ec3292acfedcf65324390b92ffaf9a90f3b3637b5cd9e`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 569.1 KB (569081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50eb4e47e1234fbd1921d497755f8da190ba764c27b3627a4c4f2f1d29f62e1`  
		Last Modified: Tue, 18 Jun 2019 01:31:03 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039838d002136b49b8c8fe8f92f5ad54b1735ba353aa7366d8b31e72dabcb94`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 7.6 KB (7560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcb9f8e7a89e7d3602cac0ab76e5ce6ab0a913f81a7c0d0da639f9c7f249e3`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9.0` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:c4a813c019fda62cae154076b3cfe34021dbac7d4dd723a1dc72f8e0cdf1c5d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217766705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6734fe666fa855102a973002ccb04eff1e154802ae9d4a98c9cd95f5837f7d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:04:49 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:05:59 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:06:04 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:06:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:06:09 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:06:10 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:06:10 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:06:11 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:06:12 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:06:13 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:06:14 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:07:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:07:20 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:07:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:07:22 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:07:23 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:07:24 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:07:24 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:07:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c1f69c04a3021ba14c8758c58eabe8d1dfa1f1ffcdd5b1a70112127e06a009`  
		Last Modified: Mon, 17 Jun 2019 23:08:37 GMT  
		Size: 92.8 MB (92838569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fba2d8cd818b3affcf2219956dbbf4ee96971cc5f8ccc56fab6856d4b7a24f`  
		Last Modified: Mon, 17 Jun 2019 23:08:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99aedd105c9d45945b5b21b71328cb9cb4572603bc72e7445fd10dad1116a55`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 1.9 KB (1917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2686368a1e851f78512f433bfd41b75dbada04ceb19ff7f245cdf86e01ba31`  
		Last Modified: Mon, 17 Jun 2019 23:08:07 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f4fcd0100cbc1508f16072c2a868bfbd541c9b28125796fe49d61e3e1928a9`  
		Last Modified: Mon, 17 Jun 2019 23:08:19 GMT  
		Size: 98.5 MB (98503920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937a49c443bc71bb13aaae62df7bc230ab909575f9eee4195b1caca47699c24d`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 7.6 KB (7587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9391f548a0195168377ee752de7a2124f0b9e4a8ee95345c95aab03db46526cf`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.9.0` - linux; ppc64le

```console
$ docker pull bonita@sha256:5215e887de3d84fa959949bbf3c0762f62dac940a10b129f487d6bbca35b099f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226551665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68103550ce599e10e8c279c6d3b6849c03a812440e12bf5dfc5809be898d63a9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:47:46 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:50:13 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:50:18 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:50:28 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:50:30 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:50:32 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:50:34 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:50:36 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:50:37 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:50:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:51:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:51:47 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:51:47 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:51:48 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:51:50 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:51:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53507aa91c369cbc0acedaaa960bc139d1797a805e01dfb2d32ab1916f9231fd`  
		Last Modified: Mon, 17 Jun 2019 23:53:13 GMT  
		Size: 94.9 MB (94938228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf033f0b5e52fb35fb70f7f332bd4b8d188fbf452b4b08b60f597ba56445720`  
		Last Modified: Mon, 17 Jun 2019 23:52:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50633185561df55ffe2032b93183210e007dce454d7e74d0dddf0c1fffb857cf`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48d24f130e5cebac121df0b0ff33bfa70251ef2e52a927414c12ca30fe50693`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 537.9 KB (537895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f86cc875b17faca4d5c6f1ddcc85deeba9fc5bbaee6bda5052c8befafdb064`  
		Last Modified: Mon, 17 Jun 2019 23:52:53 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda0594ad860f771357e0d598a069d1a4593b5fb8bf0d45813631faba4d8f6`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5c5228074e04cd8c4dc4ba6a473f1c66c1842e1afd76fcfc75e59440852b`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:4e1c1689cf79fd9c89d2bf379cce814204674ca34bdbc31ed4bcaefc281d7a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:19af15ca3dff56ba22697c2a10c0d555af9cefef92cc05f767fe38c3e4bfa635
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229845308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a45337405c4b1fec9b86c0e51640381f167a2b52374d7e5cc01fbcd18338695`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 01:29:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 01:30:18 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:30:20 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 01:30:21 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 01:30:23 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 01:30:23 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 01:30:24 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 01:30:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 01:30:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 01:30:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 01:30:38 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 01:30:39 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 01:30:39 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 01:30:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab04e3c3c62bf8cf07ba3916ff59e606844ca4ac48599a4d4c66b143ba9e7ff`  
		Last Modified: Tue, 18 Jun 2019 01:31:20 GMT  
		Size: 101.9 MB (101905041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0106b7c9b768e7a3971d120ceeeef1da525193df539cedebc129ff8ed38843`  
		Last Modified: Tue, 18 Jun 2019 01:30:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd180994c3c40cd7bba9b483fe377ce93b3aed5c1d7c3cd0c3d3e611c1fabf4`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce10142e6f3c8cc5f0ec3292acfedcf65324390b92ffaf9a90f3b3637b5cd9e`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 569.1 KB (569081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50eb4e47e1234fbd1921d497755f8da190ba764c27b3627a4c4f2f1d29f62e1`  
		Last Modified: Tue, 18 Jun 2019 01:31:03 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039838d002136b49b8c8fe8f92f5ad54b1735ba353aa7366d8b31e72dabcb94`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 7.6 KB (7560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbcb9f8e7a89e7d3602cac0ab76e5ce6ab0a913f81a7c0d0da639f9c7f249e3`  
		Last Modified: Tue, 18 Jun 2019 01:30:53 GMT  
		Size: 1.6 KB (1625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:c4a813c019fda62cae154076b3cfe34021dbac7d4dd723a1dc72f8e0cdf1c5d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217766705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6734fe666fa855102a973002ccb04eff1e154802ae9d4a98c9cd95f5837f7d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:04:49 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:05:59 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:06:04 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:06:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:06:09 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:06:10 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:06:10 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:06:11 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:06:12 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:06:13 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:06:14 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:07:17 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:07:20 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:07:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:07:22 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:07:23 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:07:24 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:07:24 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:07:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c1f69c04a3021ba14c8758c58eabe8d1dfa1f1ffcdd5b1a70112127e06a009`  
		Last Modified: Mon, 17 Jun 2019 23:08:37 GMT  
		Size: 92.8 MB (92838569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fba2d8cd818b3affcf2219956dbbf4ee96971cc5f8ccc56fab6856d4b7a24f`  
		Last Modified: Mon, 17 Jun 2019 23:08:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99aedd105c9d45945b5b21b71328cb9cb4572603bc72e7445fd10dad1116a55`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 1.9 KB (1917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2686368a1e851f78512f433bfd41b75dbada04ceb19ff7f245cdf86e01ba31`  
		Last Modified: Mon, 17 Jun 2019 23:08:07 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f4fcd0100cbc1508f16072c2a868bfbd541c9b28125796fe49d61e3e1928a9`  
		Last Modified: Mon, 17 Jun 2019 23:08:19 GMT  
		Size: 98.5 MB (98503920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937a49c443bc71bb13aaae62df7bc230ab909575f9eee4195b1caca47699c24d`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 7.6 KB (7587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9391f548a0195168377ee752de7a2124f0b9e4a8ee95345c95aab03db46526cf`  
		Last Modified: Mon, 17 Jun 2019 23:08:06 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:5215e887de3d84fa959949bbf3c0762f62dac940a10b129f487d6bbca35b099f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.6 MB (226551665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68103550ce599e10e8c279c6d3b6849c03a812440e12bf5dfc5809be898d63a9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Mon, 17 Jun 2019 23:47:46 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 17 Jun 2019 23:50:13 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:50:18 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 17 Jun 2019 23:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 17 Jun 2019 23:50:28 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 17 Jun 2019 23:50:30 GMT
ARG BONITA_VERSION
# Mon, 17 Jun 2019 23:50:32 GMT
ARG BONITA_SHA256
# Mon, 17 Jun 2019 23:50:34 GMT
ARG BONITA_URL
# Mon, 17 Jun 2019 23:50:36 GMT
ENV BONITA_VERSION=7.9.0
# Mon, 17 Jun 2019 23:50:37 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Mon, 17 Jun 2019 23:50:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Mon, 17 Jun 2019 23:51:36 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:41 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Mon, 17 Jun 2019 23:51:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Mon, 17 Jun 2019 23:51:47 GMT
VOLUME [/opt/bonita]
# Mon, 17 Jun 2019 23:51:47 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Mon, 17 Jun 2019 23:51:48 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Mon, 17 Jun 2019 23:51:50 GMT
EXPOSE 8080
# Mon, 17 Jun 2019 23:51:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53507aa91c369cbc0acedaaa960bc139d1797a805e01dfb2d32ab1916f9231fd`  
		Last Modified: Mon, 17 Jun 2019 23:53:13 GMT  
		Size: 94.9 MB (94938228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf033f0b5e52fb35fb70f7f332bd4b8d188fbf452b4b08b60f597ba56445720`  
		Last Modified: Mon, 17 Jun 2019 23:52:46 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50633185561df55ffe2032b93183210e007dce454d7e74d0dddf0c1fffb857cf`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.9 KB (1913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48d24f130e5cebac121df0b0ff33bfa70251ef2e52a927414c12ca30fe50693`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 537.9 KB (537895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f86cc875b17faca4d5c6f1ddcc85deeba9fc5bbaee6bda5052c8befafdb064`  
		Last Modified: Mon, 17 Jun 2019 23:52:53 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bda0594ad860f771357e0d598a069d1a4593b5fb8bf0d45813631faba4d8f6`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 7.6 KB (7588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854e5c5228074e04cd8c4dc4ba6a473f1c66c1842e1afd76fcfc75e59440852b`  
		Last Modified: Mon, 17 Jun 2019 23:52:43 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
