## `bonita:latest`

```console
$ docker pull bonita@sha256:e19db706a3d96c58bcb6443fe0d8ba44778efd4b0ad03aea28c56ae06e8f590d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:d4b4b6e409d1a899aeee1646c8b0ecb92e98dec43500180ebef4aedd460fb7e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.7 MB (227710173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db5c89320f50556bbf8975982fbb65ace071d652ba7887268e8115de9910ef4`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:46:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 02:47:40 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:47:41 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 02:47:42 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 02:47:48 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 02:47:48 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 02:47:49 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 02:47:49 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 02:47:57 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:47:59 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 02:48:00 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 02:48:00 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 02:48:00 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 02:48:01 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 02:48:01 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 02:48:01 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cded6615a931a18469f818c43ec639d39ca1710b637cbaa30c8b23411127f5`  
		Last Modified: Wed, 19 Jun 2019 02:49:01 GMT  
		Size: 101.9 MB (101905089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223bbc80d694ca9312ba5400659d8889892a060f95c01f41b29c353795373f97`  
		Last Modified: Wed, 19 Jun 2019 02:48:41 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c69adecf4827978f0c64cd895d6db17b27f73278f58c6cb206614ebc84a5aa2`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113851937c3f4b9354fe336aa237bbfffec478618625edd1dd0f188fce03f4bf`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 569.1 KB (569107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78effd3049d0bd1947d809e6ec15843af93c114e8bd66eba19d17c0813239e8e`  
		Last Modified: Wed, 19 Jun 2019 02:48:45 GMT  
		Size: 98.5 MB (98503891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464290b79cf6c5ac8002186ae39c7033a857f540390abb447021bc5d493f8f16`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 7.6 KB (7559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3414feb676ccb848a108bd7e8249a46e95b36ff7f72efd1bea9225870b7f17`  
		Last Modified: Wed, 19 Jun 2019 02:48:40 GMT  
		Size: 1.6 KB (1623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:1cab4e50e33633a0bd58cd358ed00b99d9017d1acf088f13cdc431dd09b3fc05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215631318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b547cc6dbf0e061f591144318a0e4bce9814a12c8a4677ec556c7ad6f2c00f96`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:01:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 18 Jun 2019 22:02:11 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:02:14 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 18 Jun 2019 22:02:16 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 18 Jun 2019 22:02:25 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_VERSION
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_SHA256
# Tue, 18 Jun 2019 22:02:26 GMT
ARG BONITA_URL
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_VERSION=7.9.0
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Tue, 18 Jun 2019 22:02:27 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Tue, 18 Jun 2019 22:03:29 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:32 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Tue, 18 Jun 2019 22:03:35 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Tue, 18 Jun 2019 22:03:35 GMT
VOLUME [/opt/bonita]
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Tue, 18 Jun 2019 22:03:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Tue, 18 Jun 2019 22:03:37 GMT
EXPOSE 8080
# Tue, 18 Jun 2019 22:03:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc92279742e94523473d4ebc6b845814d605b2f40963c731e8349f57a49a6d5a`  
		Last Modified: Tue, 18 Jun 2019 22:09:58 GMT  
		Size: 92.8 MB (92838464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4a63e7d6af3165babba8d5d65a44b926484803cae594ba717d54e54313bf9`  
		Last Modified: Tue, 18 Jun 2019 22:09:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f233dfb933d3876fc753a6e30462c4d6917e9faf26728fa365598491b7ac637`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd8567053211cc3307f31922a2ae2d08196146ca3ef69be8e87a3b626b0336`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 537.1 KB (537065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afdf4819853fe7c07402ee4015980c31b855cc14cdfde3201d0d7b37885ca5d`  
		Last Modified: Tue, 18 Jun 2019 22:10:26 GMT  
		Size: 98.5 MB (98503922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44e5190f41a8f646aa59673c37acf37183bf37989c5bafeeef9347dcf7f74d4`  
		Last Modified: Tue, 18 Jun 2019 22:09:27 GMT  
		Size: 7.6 KB (7585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628ab76957ade8c80d479673bcbda644d0b50133ba49db46c121a135958cf1d5`  
		Last Modified: Tue, 18 Jun 2019 22:09:31 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:7b3a071a29e16730ea0c90aac59b8aaeac58d6fadf58cc5bad26be3ab7649706
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224417679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8dc078fe76ca4ba1456867c932298f577e0cf4ee5794da95e8d1ea0014192cb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 00:09:41 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 19 Jun 2019 00:12:24 GMT
RUN apt-get update && apt-get install -y   curl   gnupg2   mysql-client-core-5.7   openjdk-11-jre-headless   postgresql-client   unzip   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 00:12:33 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 19 Jun 2019 00:12:40 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 19 Jun 2019 00:12:47 GMT
RUN (gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4   || gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4)   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 19 Jun 2019 00:12:50 GMT
ARG BONITA_VERSION
# Wed, 19 Jun 2019 00:12:56 GMT
ARG BONITA_SHA256
# Wed, 19 Jun 2019 00:13:01 GMT
ARG BONITA_URL
# Wed, 19 Jun 2019 00:13:03 GMT
ENV BONITA_VERSION=7.9.0
# Wed, 19 Jun 2019 00:13:04 GMT
ENV BONITA_SHA256=1e2ca16722af086715841b747c738df383018dd29ceaeb5e230e1ee2b33446ee
# Wed, 19 Jun 2019 00:13:06 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.9.0-tomcat.zip
# Wed, 19 Jun 2019 00:14:06 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:15 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip
# Wed, 19 Jun 2019 00:14:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-tomcat.zip | sha256sum -c -
# Wed, 19 Jun 2019 00:14:30 GMT
VOLUME [/opt/bonita]
# Wed, 19 Jun 2019 00:14:34 GMT
COPY dir:ef58daa6df201fe2eac6b87ad183ec81a5dbb212d47f61a3244b65faca8cb3c6 in /opt/files 
# Wed, 19 Jun 2019 00:14:36 GMT
COPY dir:157c135edc1215565cc6815861e1a1728bdf09f6cfceca03c1639b2262f1cd65 in /opt/templates 
# Wed, 19 Jun 2019 00:14:39 GMT
EXPOSE 8080
# Wed, 19 Jun 2019 00:14:43 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ecbf18ae29b0db5165c6deb40f2fdbbb41cd079e36d08ef5a2ecf2cec5bcc`  
		Last Modified: Wed, 19 Jun 2019 00:16:04 GMT  
		Size: 94.9 MB (94938627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1c9c5069e45760053accf3353de74d7424a579dd00b3e72bcda408a86ee385`  
		Last Modified: Wed, 19 Jun 2019 00:15:40 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6242bfaac5c2f07be660a72563a347e9a9578fc894583d223eea52f6c57da02`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.9 KB (1908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c619e9c6138790a6c24627f0c816cd010a33e2df985c0d803a4b9b8f8c0e3273`  
		Last Modified: Wed, 19 Jun 2019 00:15:37 GMT  
		Size: 537.9 KB (537894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df06d49b668f6b04dec9edc781144cc7a15c586974e724c3576ec9f4bc9ca6`  
		Last Modified: Wed, 19 Jun 2019 00:15:46 GMT  
		Size: 98.5 MB (98503924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4e838a0573a42746de494c4ccdc5ca1b2e26b8d8add6a292d95e2238811027`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 7.6 KB (7590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64d3756fe0b10d3e42545e74336832aaa497bd8161f510a41f0a75a2f9b53c2`  
		Last Modified: Wed, 19 Jun 2019 00:15:36 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
