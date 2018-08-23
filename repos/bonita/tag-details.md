<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.6`](#bonita76)
-	[`bonita:7.6.3`](#bonita763)
-	[`bonita:7.7`](#bonita77)
-	[`bonita:7.7.3`](#bonita773)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.6`

```console
$ docker pull bonita@sha256:74e49ae8ba6b306a893dcd109a88102d5b2b1d5c81a31efc6dc98596e5197443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.6` - linux; amd64

```console
$ docker pull bonita@sha256:9bf4bcb0e87e97492910410e0404d3e0b3f7b86c9ad4403df50364f8a0e1aa77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215063958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e159d3b1790aaf740eb9de8a96646fef49544610a9ce9253cb80884e3e2da9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 17:54:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 17:55:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:55:59 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 17:56:00 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 17:56:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 17:56:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 17:56:07 GMT
ENV BONITA_VERSION=7.6.3
# Wed, 22 Aug 2018 17:56:07 GMT
ENV TOMCAT_VERSION=8.5.23
# Wed, 22 Aug 2018 17:56:07 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Wed, 22 Aug 2018 17:56:07 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Wed, 22 Aug 2018 17:56:21 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:56:23 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:56:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 17:56:25 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 17:56:25 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Wed, 22 Aug 2018 17:56:26 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 17:56:26 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 17:56:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3941d0e4d6787f54c318480d145352e50c6ea92bc99dcb0e4e79e6655dd5a4`  
		Last Modified: Wed, 22 Aug 2018 17:58:21 GMT  
		Size: 82.8 MB (82836684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ec4eedeb6664ea04f4d481f9c75e603b9154434f4458ce463d2deef59056b`  
		Last Modified: Wed, 22 Aug 2018 17:57:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d47462548fe72ddcc0eb86cadb04e6b8dd5d73922d68124949a8d32bf0996d`  
		Last Modified: Wed, 22 Aug 2018 17:57:53 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd34dc86fe233101d4f453ea9c76ce132a570be3421e074e91fd07780eb156c`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f5f5f4be43dd73397fbfe3740caebdb4d0c71d32ddcd20cc11677cf6c36f7`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0906ea599ce3d29bc452fa606052baeee71c9230d26d87551d13fc846210cdc`  
		Last Modified: Wed, 22 Aug 2018 17:58:00 GMT  
		Size: 88.3 MB (88320710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470ab4dfde3101770ed43abbb98728fdd1cbe5bdcb0c88d379df164e7f1c0b9d`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18c66d397bb884d524b714cd6dd25ed6e243d0da5f7c5762f64223ebb420d9b`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:78a6128a41a1daf268e4b0b0e5fa535be33facc35074efefd9294ee2b5c95407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201838716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89260f44fe615e38de0d7cd1a75c2a393be9aa6ccbdab3f8a5605cd07861d97c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 10 Aug 2018 08:40:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 10 Aug 2018 08:43:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 10 Aug 2018 08:43:14 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 10 Aug 2018 08:43:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 10 Aug 2018 08:43:19 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 08:40:06 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 08:40:06 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 08:40:07 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 08:40:09 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 23 Aug 2018 08:40:10 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 23 Aug 2018 08:40:11 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 23 Aug 2018 08:40:11 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 23 Aug 2018 08:41:51 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:41:56 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:41:58 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 08:41:59 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 08:42:00 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Thu, 23 Aug 2018 08:42:01 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 08:42:01 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 08:42:02 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db55203a1be1bf276cd3d8d80d025fb0d502b2a20664e8cb036953ca10aed1`  
		Last Modified: Fri, 10 Aug 2018 08:49:13 GMT  
		Size: 73.5 MB (73534722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a8f4d13dd8d193547fcecaa997a80822ed8bead62b43f22fcea2e0d29de1`  
		Last Modified: Fri, 10 Aug 2018 08:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5dc422935dc8c6a4d9ad8e159bed4b5a3a80f92e6e79ce3ec61731a0e87458`  
		Last Modified: Fri, 10 Aug 2018 08:48:37 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423c1593cec9624efa0b738e7c8f3dd89813242220075139b0378099a7577425`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3613044abfd1d26688f2b6fe79aaf69e37fcd48932e89f86201a01e7eb97bdfe`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 468.8 KB (468798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f949e33eb22493b4f2a8cec25e9cf678161dba409694f77411b60ed5af29ef76`  
		Last Modified: Thu, 23 Aug 2018 08:46:29 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0241bba5f1807cd6f85ded93f54975eaa589054195bb365e13d98494b36b84f9`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 6.4 KB (6391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7cc6bd97a7dd0599dec523d518541822452a6d76f46b0ba9bbf9aac1280b76`  
		Last Modified: Thu, 23 Aug 2018 08:46:17 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6` - linux; ppc64le

```console
$ docker pull bonita@sha256:3b77d0b130d1768028b24e556d7a23e92e88dcf090fea36dae48241e21659a6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211817474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dba00f647f74f4a6418b8a17e8976dca9b1411336522f5fe0185b2d4cd5edb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 16:12:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 16:18:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 16:18:22 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 16:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 16:18:42 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 16:18:59 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 16:19:26 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 16:19:42 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 16:19:50 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 16:20:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 16:20:14 GMT
ENV BONITA_VERSION=7.6.3
# Wed, 22 Aug 2018 16:20:20 GMT
ENV TOMCAT_VERSION=8.5.23
# Wed, 22 Aug 2018 16:20:21 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Wed, 22 Aug 2018 16:20:40 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Wed, 22 Aug 2018 16:21:53 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:22:12 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:22:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 16:22:31 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 16:22:43 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Wed, 22 Aug 2018 16:22:44 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 16:22:45 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 16:22:48 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ab673f7461fbd65c14978cd458b632cbed92549a16e58d46742335e132e87`  
		Last Modified: Thu, 23 Aug 2018 08:19:49 GMT  
		Size: 77.3 MB (77299023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b3163ac5faae47b0530fe24f45653a6ced08657ae2b951d305686c4b94c19`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb25a58184cbe8d0ae170d4768436134451874059628b9b9699d81a18d2e54`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c86508bac84e229cc6014f136573e6a146fab7a846d9c3b794a1b9388e1804`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dce5b4e989ec11a52bb7ffd72804faf5979396f4df28f952c97ed4917c6d3f`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 469.9 KB (469924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e98a6fc375ffcd3bf0623e8dcb42c1a052823fa941a834e618474d0ca9f2b`  
		Last Modified: Thu, 23 Aug 2018 08:19:06 GMT  
		Size: 88.3 MB (88320727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a8eb50395b9e8ce2561bbecf95ff649d9d300ae46e260a3d1f20a2956632b1`  
		Last Modified: Thu, 23 Aug 2018 08:18:57 GMT  
		Size: 6.4 KB (6421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0305e0de784716548bf508a646a949e58271d0d7ce865d604dfe1b4cf39fbfb9`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.3`

```console
$ docker pull bonita@sha256:74e49ae8ba6b306a893dcd109a88102d5b2b1d5c81a31efc6dc98596e5197443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.6.3` - linux; amd64

```console
$ docker pull bonita@sha256:9bf4bcb0e87e97492910410e0404d3e0b3f7b86c9ad4403df50364f8a0e1aa77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215063958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e159d3b1790aaf740eb9de8a96646fef49544610a9ce9253cb80884e3e2da9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 17:54:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 17:55:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:55:59 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 17:56:00 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 17:56:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 17:56:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 17:56:07 GMT
ENV BONITA_VERSION=7.6.3
# Wed, 22 Aug 2018 17:56:07 GMT
ENV TOMCAT_VERSION=8.5.23
# Wed, 22 Aug 2018 17:56:07 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Wed, 22 Aug 2018 17:56:07 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Wed, 22 Aug 2018 17:56:21 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:56:23 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:56:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 17:56:25 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 17:56:25 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Wed, 22 Aug 2018 17:56:26 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 17:56:26 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 17:56:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3941d0e4d6787f54c318480d145352e50c6ea92bc99dcb0e4e79e6655dd5a4`  
		Last Modified: Wed, 22 Aug 2018 17:58:21 GMT  
		Size: 82.8 MB (82836684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ec4eedeb6664ea04f4d481f9c75e603b9154434f4458ce463d2deef59056b`  
		Last Modified: Wed, 22 Aug 2018 17:57:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d47462548fe72ddcc0eb86cadb04e6b8dd5d73922d68124949a8d32bf0996d`  
		Last Modified: Wed, 22 Aug 2018 17:57:53 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd34dc86fe233101d4f453ea9c76ce132a570be3421e074e91fd07780eb156c`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f5f5f4be43dd73397fbfe3740caebdb4d0c71d32ddcd20cc11677cf6c36f7`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0906ea599ce3d29bc452fa606052baeee71c9230d26d87551d13fc846210cdc`  
		Last Modified: Wed, 22 Aug 2018 17:58:00 GMT  
		Size: 88.3 MB (88320710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470ab4dfde3101770ed43abbb98728fdd1cbe5bdcb0c88d379df164e7f1c0b9d`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18c66d397bb884d524b714cd6dd25ed6e243d0da5f7c5762f64223ebb420d9b`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6.3` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:78a6128a41a1daf268e4b0b0e5fa535be33facc35074efefd9294ee2b5c95407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201838716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89260f44fe615e38de0d7cd1a75c2a393be9aa6ccbdab3f8a5605cd07861d97c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 10 Aug 2018 08:40:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 10 Aug 2018 08:43:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 10 Aug 2018 08:43:14 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 10 Aug 2018 08:43:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 10 Aug 2018 08:43:19 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 08:40:06 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 08:40:06 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 08:40:07 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 08:40:09 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 23 Aug 2018 08:40:10 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 23 Aug 2018 08:40:11 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 23 Aug 2018 08:40:11 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 23 Aug 2018 08:41:51 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:41:56 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:41:58 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 08:41:59 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 08:42:00 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Thu, 23 Aug 2018 08:42:01 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 08:42:01 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 08:42:02 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db55203a1be1bf276cd3d8d80d025fb0d502b2a20664e8cb036953ca10aed1`  
		Last Modified: Fri, 10 Aug 2018 08:49:13 GMT  
		Size: 73.5 MB (73534722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a8f4d13dd8d193547fcecaa997a80822ed8bead62b43f22fcea2e0d29de1`  
		Last Modified: Fri, 10 Aug 2018 08:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5dc422935dc8c6a4d9ad8e159bed4b5a3a80f92e6e79ce3ec61731a0e87458`  
		Last Modified: Fri, 10 Aug 2018 08:48:37 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423c1593cec9624efa0b738e7c8f3dd89813242220075139b0378099a7577425`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3613044abfd1d26688f2b6fe79aaf69e37fcd48932e89f86201a01e7eb97bdfe`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 468.8 KB (468798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f949e33eb22493b4f2a8cec25e9cf678161dba409694f77411b60ed5af29ef76`  
		Last Modified: Thu, 23 Aug 2018 08:46:29 GMT  
		Size: 88.3 MB (88320706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0241bba5f1807cd6f85ded93f54975eaa589054195bb365e13d98494b36b84f9`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 6.4 KB (6391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7cc6bd97a7dd0599dec523d518541822452a6d76f46b0ba9bbf9aac1280b76`  
		Last Modified: Thu, 23 Aug 2018 08:46:17 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.6.3` - linux; ppc64le

```console
$ docker pull bonita@sha256:3b77d0b130d1768028b24e556d7a23e92e88dcf090fea36dae48241e21659a6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211817474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dba00f647f74f4a6418b8a17e8976dca9b1411336522f5fe0185b2d4cd5edb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 16:12:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 16:18:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 16:18:22 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 16:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 16:18:42 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 16:18:59 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 16:19:26 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 16:19:42 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 16:19:50 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 16:20:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 16:20:14 GMT
ENV BONITA_VERSION=7.6.3
# Wed, 22 Aug 2018 16:20:20 GMT
ENV TOMCAT_VERSION=8.5.23
# Wed, 22 Aug 2018 16:20:21 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Wed, 22 Aug 2018 16:20:40 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Wed, 22 Aug 2018 16:21:53 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:22:12 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:22:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 16:22:31 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 16:22:43 GMT
COPY dir:7d4489797b9c870351f0d813919cdacca2e45124e7f6a4a471b76d0b14b843d6 in /opt/files 
# Wed, 22 Aug 2018 16:22:44 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 16:22:45 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 16:22:48 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ab673f7461fbd65c14978cd458b632cbed92549a16e58d46742335e132e87`  
		Last Modified: Thu, 23 Aug 2018 08:19:49 GMT  
		Size: 77.3 MB (77299023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b3163ac5faae47b0530fe24f45653a6ced08657ae2b951d305686c4b94c19`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb25a58184cbe8d0ae170d4768436134451874059628b9b9699d81a18d2e54`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c86508bac84e229cc6014f136573e6a146fab7a846d9c3b794a1b9388e1804`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dce5b4e989ec11a52bb7ffd72804faf5979396f4df28f952c97ed4917c6d3f`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 469.9 KB (469924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3e98a6fc375ffcd3bf0623e8dcb42c1a052823fa941a834e618474d0ca9f2b`  
		Last Modified: Thu, 23 Aug 2018 08:19:06 GMT  
		Size: 88.3 MB (88320727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a8eb50395b9e8ce2561bbecf95ff649d9d300ae46e260a3d1f20a2956632b1`  
		Last Modified: Thu, 23 Aug 2018 08:18:57 GMT  
		Size: 6.4 KB (6421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0305e0de784716548bf508a646a949e58271d0d7ce865d604dfe1b4cf39fbfb9`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7`

```console
$ docker pull bonita@sha256:fc11406d348461085e7f0870c885e7d9957a262c79724a6ed233c5c28364d181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7` - linux; amd64

```console
$ docker pull bonita@sha256:3c9311b1a4c307e9a05a93ec4434314d2eff2b58a1b5839db59939b2b5b4445d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214562181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc41b54e564f3cc28de1f28be9df6d74c3797a77853baf04e29999f990858d74`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 17:54:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 17:55:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:55:59 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 17:56:00 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 17:56:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 17:56:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 17:56:48 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 17:57:00 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:57:23 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:57:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 17:57:25 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 17:57:26 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 17:57:26 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 17:57:26 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 17:57:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3941d0e4d6787f54c318480d145352e50c6ea92bc99dcb0e4e79e6655dd5a4`  
		Last Modified: Wed, 22 Aug 2018 17:58:21 GMT  
		Size: 82.8 MB (82836684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ec4eedeb6664ea04f4d481f9c75e603b9154434f4458ce463d2deef59056b`  
		Last Modified: Wed, 22 Aug 2018 17:57:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d47462548fe72ddcc0eb86cadb04e6b8dd5d73922d68124949a8d32bf0996d`  
		Last Modified: Wed, 22 Aug 2018 17:57:53 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd34dc86fe233101d4f453ea9c76ce132a570be3421e074e91fd07780eb156c`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f5f5f4be43dd73397fbfe3740caebdb4d0c71d32ddcd20cc11677cf6c36f7`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a629406ed63f4a700a32150869cf1e2c96b00386ce71fb64773fcb872c67b63`  
		Last Modified: Wed, 22 Aug 2018 17:59:17 GMT  
		Size: 87.8 MB (87818924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eab2437acd1fa1366fa7ddfbeed5a20d0638135f3e11337907b4d048a61d1d`  
		Last Modified: Wed, 22 Aug 2018 17:59:08 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725e7c4ac4c7cc0fa38e4a05c86c862f284e152e70088a2b4842ab76997310e`  
		Last Modified: Wed, 22 Aug 2018 17:59:07 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:27ec2e3162278242b3f5e7010d15ee559a79c785e97f89331ea6e1d610bf090f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201336945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28d3f8c9442bc352ca93debe17c954dc2b7796e76be689f15975dbaad00bda8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 10 Aug 2018 08:40:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 10 Aug 2018 08:43:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 10 Aug 2018 08:43:14 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 10 Aug 2018 08:43:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 10 Aug 2018 08:43:19 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 08:40:06 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 08:40:06 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 08:40:07 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 08:42:49 GMT
ENV BONITA_VERSION=7.7.3
# Thu, 23 Aug 2018 08:42:50 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 23 Aug 2018 08:42:50 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Thu, 23 Aug 2018 08:42:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Thu, 23 Aug 2018 08:45:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:45:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:45:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 08:45:16 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 08:45:17 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Thu, 23 Aug 2018 08:45:17 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 08:45:36 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 08:45:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db55203a1be1bf276cd3d8d80d025fb0d502b2a20664e8cb036953ca10aed1`  
		Last Modified: Fri, 10 Aug 2018 08:49:13 GMT  
		Size: 73.5 MB (73534722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a8f4d13dd8d193547fcecaa997a80822ed8bead62b43f22fcea2e0d29de1`  
		Last Modified: Fri, 10 Aug 2018 08:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5dc422935dc8c6a4d9ad8e159bed4b5a3a80f92e6e79ce3ec61731a0e87458`  
		Last Modified: Fri, 10 Aug 2018 08:48:37 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423c1593cec9624efa0b738e7c8f3dd89813242220075139b0378099a7577425`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3613044abfd1d26688f2b6fe79aaf69e37fcd48932e89f86201a01e7eb97bdfe`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 468.8 KB (468798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59d1b2b44a722c34150ad5ee5815dcfb14ee169ac71acad4166db8d8801e7c8`  
		Last Modified: Thu, 23 Aug 2018 08:47:40 GMT  
		Size: 87.8 MB (87818925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e80151f7864c2b6e8398deda44c55463fecb4a33100ee4ac719968fe8100fca`  
		Last Modified: Thu, 23 Aug 2018 08:47:30 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b815d2af6abc0bedb3cba7bdf8b41e12e35c6cfcf9227e857a51c568f596a`  
		Last Modified: Thu, 23 Aug 2018 08:47:29 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7` - linux; ppc64le

```console
$ docker pull bonita@sha256:c22aadec945755b429a6fa4256ff78207c4a298ce561c9c7dc3892f0dade9cdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211315709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:810ab640fb34912cc9448090056c6372fc2007e9161911d2bf8b6247b9666fb3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 16:12:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 16:18:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 16:18:22 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 16:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 16:18:42 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 16:18:59 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 16:19:26 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 16:19:42 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 16:19:50 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 16:20:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 16:25:45 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 16:25:46 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 16:25:55 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 16:25:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 16:27:08 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:27:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:28:27 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 16:28:49 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 16:29:13 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 16:29:38 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 16:29:48 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 16:29:50 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ab673f7461fbd65c14978cd458b632cbed92549a16e58d46742335e132e87`  
		Last Modified: Thu, 23 Aug 2018 08:19:49 GMT  
		Size: 77.3 MB (77299023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b3163ac5faae47b0530fe24f45653a6ced08657ae2b951d305686c4b94c19`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb25a58184cbe8d0ae170d4768436134451874059628b9b9699d81a18d2e54`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c86508bac84e229cc6014f136573e6a146fab7a846d9c3b794a1b9388e1804`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dce5b4e989ec11a52bb7ffd72804faf5979396f4df28f952c97ed4917c6d3f`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 469.9 KB (469924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6953f4f12212c8db140ef6ab7213bf764be8f75acc5fefea7b58e3a86db1af62`  
		Last Modified: Thu, 23 Aug 2018 08:20:26 GMT  
		Size: 87.8 MB (87818951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448e57ede37bd094656588f22bceb6eaa7b9e9f1c8bc5ce7539e9f2e100d8674`  
		Last Modified: Thu, 23 Aug 2018 08:20:08 GMT  
		Size: 6.4 KB (6432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bb0a4aafae5ba7ad0d2ba479613739664a73d9876d870fcc1a20f6ab4825cf`  
		Last Modified: Thu, 23 Aug 2018 08:20:09 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.7.3`

```console
$ docker pull bonita@sha256:fc11406d348461085e7f0870c885e7d9957a262c79724a6ed233c5c28364d181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:7.7.3` - linux; amd64

```console
$ docker pull bonita@sha256:3c9311b1a4c307e9a05a93ec4434314d2eff2b58a1b5839db59939b2b5b4445d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214562181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc41b54e564f3cc28de1f28be9df6d74c3797a77853baf04e29999f990858d74`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 17:54:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 17:55:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:55:59 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 17:56:00 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 17:56:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 17:56:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 17:56:48 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 17:57:00 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:57:23 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:57:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 17:57:25 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 17:57:26 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 17:57:26 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 17:57:26 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 17:57:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3941d0e4d6787f54c318480d145352e50c6ea92bc99dcb0e4e79e6655dd5a4`  
		Last Modified: Wed, 22 Aug 2018 17:58:21 GMT  
		Size: 82.8 MB (82836684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ec4eedeb6664ea04f4d481f9c75e603b9154434f4458ce463d2deef59056b`  
		Last Modified: Wed, 22 Aug 2018 17:57:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d47462548fe72ddcc0eb86cadb04e6b8dd5d73922d68124949a8d32bf0996d`  
		Last Modified: Wed, 22 Aug 2018 17:57:53 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd34dc86fe233101d4f453ea9c76ce132a570be3421e074e91fd07780eb156c`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f5f5f4be43dd73397fbfe3740caebdb4d0c71d32ddcd20cc11677cf6c36f7`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a629406ed63f4a700a32150869cf1e2c96b00386ce71fb64773fcb872c67b63`  
		Last Modified: Wed, 22 Aug 2018 17:59:17 GMT  
		Size: 87.8 MB (87818924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eab2437acd1fa1366fa7ddfbeed5a20d0638135f3e11337907b4d048a61d1d`  
		Last Modified: Wed, 22 Aug 2018 17:59:08 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725e7c4ac4c7cc0fa38e4a05c86c862f284e152e70088a2b4842ab76997310e`  
		Last Modified: Wed, 22 Aug 2018 17:59:07 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.3` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:27ec2e3162278242b3f5e7010d15ee559a79c785e97f89331ea6e1d610bf090f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201336945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28d3f8c9442bc352ca93debe17c954dc2b7796e76be689f15975dbaad00bda8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 10 Aug 2018 08:40:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 10 Aug 2018 08:43:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 10 Aug 2018 08:43:14 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 10 Aug 2018 08:43:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 10 Aug 2018 08:43:19 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 08:40:06 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 08:40:06 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 08:40:07 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 08:42:49 GMT
ENV BONITA_VERSION=7.7.3
# Thu, 23 Aug 2018 08:42:50 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 23 Aug 2018 08:42:50 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Thu, 23 Aug 2018 08:42:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Thu, 23 Aug 2018 08:45:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:45:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:45:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 08:45:16 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 08:45:17 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Thu, 23 Aug 2018 08:45:17 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 08:45:36 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 08:45:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db55203a1be1bf276cd3d8d80d025fb0d502b2a20664e8cb036953ca10aed1`  
		Last Modified: Fri, 10 Aug 2018 08:49:13 GMT  
		Size: 73.5 MB (73534722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a8f4d13dd8d193547fcecaa997a80822ed8bead62b43f22fcea2e0d29de1`  
		Last Modified: Fri, 10 Aug 2018 08:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5dc422935dc8c6a4d9ad8e159bed4b5a3a80f92e6e79ce3ec61731a0e87458`  
		Last Modified: Fri, 10 Aug 2018 08:48:37 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423c1593cec9624efa0b738e7c8f3dd89813242220075139b0378099a7577425`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3613044abfd1d26688f2b6fe79aaf69e37fcd48932e89f86201a01e7eb97bdfe`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 468.8 KB (468798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59d1b2b44a722c34150ad5ee5815dcfb14ee169ac71acad4166db8d8801e7c8`  
		Last Modified: Thu, 23 Aug 2018 08:47:40 GMT  
		Size: 87.8 MB (87818925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e80151f7864c2b6e8398deda44c55463fecb4a33100ee4ac719968fe8100fca`  
		Last Modified: Thu, 23 Aug 2018 08:47:30 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b815d2af6abc0bedb3cba7bdf8b41e12e35c6cfcf9227e857a51c568f596a`  
		Last Modified: Thu, 23 Aug 2018 08:47:29 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:7.7.3` - linux; ppc64le

```console
$ docker pull bonita@sha256:c22aadec945755b429a6fa4256ff78207c4a298ce561c9c7dc3892f0dade9cdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211315709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:810ab640fb34912cc9448090056c6372fc2007e9161911d2bf8b6247b9666fb3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 16:12:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 16:18:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 16:18:22 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 16:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 16:18:42 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 16:18:59 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 16:19:26 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 16:19:42 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 16:19:50 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 16:20:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 16:25:45 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 16:25:46 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 16:25:55 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 16:25:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 16:27:08 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:27:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:28:27 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 16:28:49 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 16:29:13 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 16:29:38 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 16:29:48 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 16:29:50 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ab673f7461fbd65c14978cd458b632cbed92549a16e58d46742335e132e87`  
		Last Modified: Thu, 23 Aug 2018 08:19:49 GMT  
		Size: 77.3 MB (77299023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b3163ac5faae47b0530fe24f45653a6ced08657ae2b951d305686c4b94c19`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb25a58184cbe8d0ae170d4768436134451874059628b9b9699d81a18d2e54`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c86508bac84e229cc6014f136573e6a146fab7a846d9c3b794a1b9388e1804`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dce5b4e989ec11a52bb7ffd72804faf5979396f4df28f952c97ed4917c6d3f`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 469.9 KB (469924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6953f4f12212c8db140ef6ab7213bf764be8f75acc5fefea7b58e3a86db1af62`  
		Last Modified: Thu, 23 Aug 2018 08:20:26 GMT  
		Size: 87.8 MB (87818951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448e57ede37bd094656588f22bceb6eaa7b9e9f1c8bc5ce7539e9f2e100d8674`  
		Last Modified: Thu, 23 Aug 2018 08:20:08 GMT  
		Size: 6.4 KB (6432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bb0a4aafae5ba7ad0d2ba479613739664a73d9876d870fcc1a20f6ab4825cf`  
		Last Modified: Thu, 23 Aug 2018 08:20:09 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:fc11406d348461085e7f0870c885e7d9957a262c79724a6ed233c5c28364d181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:3c9311b1a4c307e9a05a93ec4434314d2eff2b58a1b5839db59939b2b5b4445d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214562181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc41b54e564f3cc28de1f28be9df6d74c3797a77853baf04e29999f990858d74`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 17:54:06 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 17:55:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:55:59 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 17:56:00 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 17:56:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 17:56:05 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 17:56:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 17:56:48 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 17:56:48 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 17:57:00 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:57:23 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:57:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 17:57:25 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 17:57:26 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 17:57:26 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 17:57:26 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 17:57:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3941d0e4d6787f54c318480d145352e50c6ea92bc99dcb0e4e79e6655dd5a4`  
		Last Modified: Wed, 22 Aug 2018 17:58:21 GMT  
		Size: 82.8 MB (82836684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ec4eedeb6664ea04f4d481f9c75e603b9154434f4458ce463d2deef59056b`  
		Last Modified: Wed, 22 Aug 2018 17:57:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d47462548fe72ddcc0eb86cadb04e6b8dd5d73922d68124949a8d32bf0996d`  
		Last Modified: Wed, 22 Aug 2018 17:57:53 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd34dc86fe233101d4f453ea9c76ce132a570be3421e074e91fd07780eb156c`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493f5f5f4be43dd73397fbfe3740caebdb4d0c71d32ddcd20cc11677cf6c36f7`  
		Last Modified: Wed, 22 Aug 2018 17:57:51 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a629406ed63f4a700a32150869cf1e2c96b00386ce71fb64773fcb872c67b63`  
		Last Modified: Wed, 22 Aug 2018 17:59:17 GMT  
		Size: 87.8 MB (87818924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44eab2437acd1fa1366fa7ddfbeed5a20d0638135f3e11337907b4d048a61d1d`  
		Last Modified: Wed, 22 Aug 2018 17:59:08 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2725e7c4ac4c7cc0fa38e4a05c86c862f284e152e70088a2b4842ab76997310e`  
		Last Modified: Wed, 22 Aug 2018 17:59:07 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:27ec2e3162278242b3f5e7010d15ee559a79c785e97f89331ea6e1d610bf090f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201336945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28d3f8c9442bc352ca93debe17c954dc2b7796e76be689f15975dbaad00bda8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 10 Aug 2018 08:40:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 10 Aug 2018 08:43:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 10 Aug 2018 08:43:14 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 10 Aug 2018 08:43:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 10 Aug 2018 08:43:19 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 08:40:06 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 08:40:06 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 08:40:07 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 08:40:08 GMT
ARG BONITA_URL
# Thu, 23 Aug 2018 08:42:49 GMT
ENV BONITA_VERSION=7.7.3
# Thu, 23 Aug 2018 08:42:50 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 23 Aug 2018 08:42:50 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Thu, 23 Aug 2018 08:42:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Thu, 23 Aug 2018 08:45:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:45:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 23 Aug 2018 08:45:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 23 Aug 2018 08:45:16 GMT
VOLUME [/opt/bonita]
# Thu, 23 Aug 2018 08:45:17 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Thu, 23 Aug 2018 08:45:17 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 23 Aug 2018 08:45:36 GMT
EXPOSE 8080/tcp
# Thu, 23 Aug 2018 08:45:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db55203a1be1bf276cd3d8d80d025fb0d502b2a20664e8cb036953ca10aed1`  
		Last Modified: Fri, 10 Aug 2018 08:49:13 GMT  
		Size: 73.5 MB (73534722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a8f4d13dd8d193547fcecaa997a80822ed8bead62b43f22fcea2e0d29de1`  
		Last Modified: Fri, 10 Aug 2018 08:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5dc422935dc8c6a4d9ad8e159bed4b5a3a80f92e6e79ce3ec61731a0e87458`  
		Last Modified: Fri, 10 Aug 2018 08:48:37 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423c1593cec9624efa0b738e7c8f3dd89813242220075139b0378099a7577425`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3613044abfd1d26688f2b6fe79aaf69e37fcd48932e89f86201a01e7eb97bdfe`  
		Last Modified: Thu, 23 Aug 2018 08:46:18 GMT  
		Size: 468.8 KB (468798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59d1b2b44a722c34150ad5ee5815dcfb14ee169ac71acad4166db8d8801e7c8`  
		Last Modified: Thu, 23 Aug 2018 08:47:40 GMT  
		Size: 87.8 MB (87818925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e80151f7864c2b6e8398deda44c55463fecb4a33100ee4ac719968fe8100fca`  
		Last Modified: Thu, 23 Aug 2018 08:47:30 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80b815d2af6abc0bedb3cba7bdf8b41e12e35c6cfcf9227e857a51c568f596a`  
		Last Modified: Thu, 23 Aug 2018 08:47:29 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:c22aadec945755b429a6fa4256ff78207c4a298ce561c9c7dc3892f0dade9cdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211315709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:810ab640fb34912cc9448090056c6372fc2007e9161911d2bf8b6247b9666fb3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 21 Aug 2018 18:05:28 GMT
ADD file:9b4fe2a37936425ff1c2483bfa0ff02ada7e549481bd7d0377a94850e5152510 in / 
# Tue, 21 Aug 2018 18:05:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 21 Aug 2018 18:05:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 21 Aug 2018 18:06:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 21 Aug 2018 18:06:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 21 Aug 2018 18:06:12 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 16:12:34 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 22 Aug 2018 16:18:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 16:18:22 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 22 Aug 2018 16:18:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 22 Aug 2018 16:18:42 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 22 Aug 2018 16:18:59 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 16:19:26 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 16:19:42 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 16:19:50 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 16:20:06 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 16:25:45 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 16:25:46 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 16:25:55 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 16:25:57 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 16:27:08 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:27:36 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 16:28:27 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 16:28:49 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 16:29:13 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 16:29:38 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 16:29:48 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 16:29:50 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c49a7289cd353210d298ff1a94ed78172275dc2b56d017327da7ff28811d329c`  
		Last Modified: Tue, 21 Aug 2018 18:08:49 GMT  
		Size: 45.6 MB (45574399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7d965d16a8d691cee58762e03a8c962c909fb1d0d5e9a119c4090682496a7`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0c0736f8ab57b9c4640b9c7d527e33d818bedc6810943802c7e2d9519ef48f`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1139f0572be9041270b915e4d26c2bacce14cbf6170aed13fdc2576eb3a375`  
		Last Modified: Tue, 21 Aug 2018 18:08:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6e36fdb9e0e77331c1077fc18ac38bbe372020753346fe4bb763e36cb51aec`  
		Last Modified: Tue, 21 Aug 2018 18:08:30 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818ab673f7461fbd65c14978cd458b632cbed92549a16e58d46742335e132e87`  
		Last Modified: Thu, 23 Aug 2018 08:19:49 GMT  
		Size: 77.3 MB (77299023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b3163ac5faae47b0530fe24f45653a6ced08657ae2b951d305686c4b94c19`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb25a58184cbe8d0ae170d4768436134451874059628b9b9699d81a18d2e54`  
		Last Modified: Thu, 23 Aug 2018 08:19:02 GMT  
		Size: 2.0 KB (2050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c86508bac84e229cc6014f136573e6a146fab7a846d9c3b794a1b9388e1804`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 140.6 KB (140614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dce5b4e989ec11a52bb7ffd72804faf5979396f4df28f952c97ed4917c6d3f`  
		Last Modified: Thu, 23 Aug 2018 08:18:56 GMT  
		Size: 469.9 KB (469924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6953f4f12212c8db140ef6ab7213bf764be8f75acc5fefea7b58e3a86db1af62`  
		Last Modified: Thu, 23 Aug 2018 08:20:26 GMT  
		Size: 87.8 MB (87818951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448e57ede37bd094656588f22bceb6eaa7b9e9f1c8bc5ce7539e9f2e100d8674`  
		Last Modified: Thu, 23 Aug 2018 08:20:08 GMT  
		Size: 6.4 KB (6432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40bb0a4aafae5ba7ad0d2ba479613739664a73d9876d870fcc1a20f6ab4825cf`  
		Last Modified: Thu, 23 Aug 2018 08:20:09 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
