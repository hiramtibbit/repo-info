## `bonita:latest`

```console
$ docker pull bonita@sha256:56442d5d6c94813ff4c2c68bd813dc22879969cf9ec7ab013f11a27965a7085b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:cc934662b68f123ac26e9ec0ae52b864f65624eb672d6b649e2d8089bf6d42e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219016496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a296bd65864ef073d8a29a3081ee04875e1bfb77fe431557acd62c7d1b05cf2d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:13:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 09:14:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:14:19 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 09:14:20 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 09:14:22 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 09:14:24 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 09:14:24 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 09:14:24 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 09:14:25 GMT
ARG BONITA_URL
# Sat, 09 Mar 2019 00:19:25 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 09 Mar 2019 00:19:25 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 09 Mar 2019 00:19:26 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 09 Mar 2019 00:19:26 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 09 Mar 2019 00:19:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 09 Mar 2019 00:19:34 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 09 Mar 2019 00:19:36 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 09 Mar 2019 00:19:36 GMT
VOLUME [/opt/bonita]
# Sat, 09 Mar 2019 00:19:36 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 09 Mar 2019 00:19:36 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 09 Mar 2019 00:19:37 GMT
EXPOSE 8080
# Sat, 09 Mar 2019 00:19:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79f26df5825808198c401b1eb9ff338c8bd41c4850a5052915a9b2710195d76`  
		Last Modified: Wed, 23 Jan 2019 09:15:59 GMT  
		Size: 82.9 MB (82857468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f930042edac20f54322554e1bb0ae02885efa4e2ca1ecf865a658057f94063`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ff6b6f39338184f0f25c59b95f9cf1110dabfe9c6db70367e016d6107aa9`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fb1b09ad7514f3209e3e23f3f5cdc3c364a160995ed949939ff5b7e03a81`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1348911fbee3497586e055bf9c39856d0c570c728f1bc12bfd6849ae13fa3`  
		Last Modified: Wed, 23 Jan 2019 09:15:38 GMT  
		Size: 500.7 KB (500741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d734a4fe7899f409530645e178c62bc6cb2289466c0b025efa296bffd8dc183d`  
		Last Modified: Sat, 09 Mar 2019 00:19:51 GMT  
		Size: 92.0 MB (91984485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beabdbb305d1e0773f3898224add048df47a6ee170877d468e8f113ae3d7cf6f`  
		Last Modified: Sat, 09 Mar 2019 00:19:45 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:007789239dd0e6307839554c3dd581e7d33a76451b0869391d1dc8df343497ac`  
		Last Modified: Sat, 09 Mar 2019 00:19:45 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
