## `bonita:latest`

```console
$ docker pull bonita@sha256:6f832b8bde060cd17fcfd04743c1aebb6d6c0f4de4c60d2da42427ff18c6ab32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:0b71895a49a79be05168f667edfdf00fefdb341e6d891723f3a6e886a13dd4a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219018569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de6cfd1cbbd6cdb6cbb624f084071a96b5c6626a9fea659d9202bec47aab17e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:12:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 01:13:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:05 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 01:13:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 01:13:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 01:13:09 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 01:13:09 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 01:13:24 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 01:13:24 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 01:13:35 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:37 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 01:13:38 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 01:13:39 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 01:13:39 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 01:13:39 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 01:13:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ec73bccff4570968e300863cbb9e644a554e2463888fc832cb2ec072147503`  
		Last Modified: Tue, 12 Mar 2019 01:14:04 GMT  
		Size: 82.8 MB (82819497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f3917618e8d89892db741b66f063293c151b22b30f3cbbaed2aeb2bc52994a`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d0acbf15d1fa25fbc8805bc642868506156d6a1e039894b22208dc815cb05`  
		Last Modified: Tue, 12 Mar 2019 01:13:49 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452bc7e8ea3008eb0f1f9111ba97de40b67d96c56e216e30bf63254742e24f3`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 140.6 KB (140590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd5fc0222c86ed911ff4bd61b730ad97a5a00d06bc884839eeaf0ad9062ca02`  
		Last Modified: Tue, 12 Mar 2019 01:13:48 GMT  
		Size: 500.7 KB (500740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a33b9f93d66a443eb8c7c3c92d9822d72f415dcc3e5ceec79e7e7479e72952cb`  
		Last Modified: Tue, 12 Mar 2019 01:14:13 GMT  
		Size: 92.0 MB (91984478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548ae50cd133cbfa6803fc14194a74fe012e8ef37d0eab0559c9b04976d7a9bc`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857cdc0f436dd95ace6de15c62b84aca39c3fb38d42913aec6743e41fc70159`  
		Last Modified: Tue, 12 Mar 2019 01:14:08 GMT  
		Size: 1.7 KB (1662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:c4d9fabce56cb094ac3f6c5f325dcc113717d1e2613ad4ffc8917c2921f6eae3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205983229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4202ead4cc76e52ede1cadf2672b8496762f3eac619183458e26e5a799ef1f4a`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:27:16 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 23 Jan 2019 10:29:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:29:55 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 23 Jan 2019 10:29:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 23 Jan 2019 10:30:00 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 10:30:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 23 Jan 2019 10:30:10 GMT
ARG BONITA_VERSION
# Wed, 23 Jan 2019 10:30:11 GMT
ARG TOMCAT_VERSION
# Wed, 23 Jan 2019 10:30:12 GMT
ARG BONITA_SHA256
# Wed, 23 Jan 2019 10:30:13 GMT
ARG BONITA_URL
# Sat, 09 Mar 2019 09:40:35 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 09 Mar 2019 09:40:36 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 09 Mar 2019 09:40:37 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 09 Mar 2019 09:40:38 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 09 Mar 2019 09:40:58 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 09 Mar 2019 09:41:02 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 09 Mar 2019 09:41:05 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 09 Mar 2019 09:41:06 GMT
VOLUME [/opt/bonita]
# Sat, 09 Mar 2019 09:41:06 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 09 Mar 2019 09:41:07 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 09 Mar 2019 09:41:07 GMT
EXPOSE 8080
# Sat, 09 Mar 2019 09:41:08 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36014e03f5eddb2d46fe689cf3daae150cf547e0c72d737c80a014459a8342`  
		Last Modified: Wed, 23 Jan 2019 10:33:08 GMT  
		Size: 73.8 MB (73819434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0916dd319efd2279b07f948bfb6e8226c973e379d3bb2fbad7c6489eb16ba8`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bf2c7b23f95541695e5dd8440e32fccc66edc7bfefa46434e98f31206446cf`  
		Last Modified: Wed, 23 Jan 2019 10:32:43 GMT  
		Size: 2.1 KB (2054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe1670b9ef4c018a1a808fac58176158ba4fe888eb3209f59c470ce2144edd3`  
		Last Modified: Wed, 23 Jan 2019 10:32:42 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47610b1f343f9f256ece2ba443b94400f9be4ce6c160f2556e5050e5a28a41cd`  
		Last Modified: Wed, 23 Jan 2019 10:32:40 GMT  
		Size: 468.8 KB (468797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e293f4a0ad1c2084e5507aac68af85fbaf623f1ee0390849d45a3b75cf503a17`  
		Last Modified: Sat, 09 Mar 2019 09:41:58 GMT  
		Size: 92.0 MB (91984485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68cd25c279364212bf4c21ef39cc6a7c11a4a336a7aa0362c445d11216c662e`  
		Last Modified: Sat, 09 Mar 2019 09:41:26 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af9882d293b4ca5e948b905ae4d66a77a48d93d5f587c141803e13526d87226`  
		Last Modified: Sat, 09 Mar 2019 09:41:26 GMT  
		Size: 1.7 KB (1661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:8be18bcf8cb0ca741f832e115997312f1dfa86764b41320d0f97092e42c2cdc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215672313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02583376e8cd4151b4339d1f0b5c7f7a3613d9c318d4887492b1947c5f142322`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:45:56 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 12 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:50:10 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 12 Mar 2019 09:50:22 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 12 Mar 2019 09:50:35 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Mar 2019 09:50:49 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 12 Mar 2019 09:50:56 GMT
ARG BONITA_VERSION
# Tue, 12 Mar 2019 09:51:00 GMT
ARG TOMCAT_VERSION
# Tue, 12 Mar 2019 09:51:03 GMT
ARG BONITA_SHA256
# Tue, 12 Mar 2019 09:51:05 GMT
ARG BONITA_URL
# Tue, 12 Mar 2019 09:52:52 GMT
ENV BONITA_VERSION=7.8.3
# Tue, 12 Mar 2019 09:52:55 GMT
ENV TOMCAT_VERSION=8.5.34
# Tue, 12 Mar 2019 09:52:58 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Tue, 12 Mar 2019 09:53:00 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Tue, 12 Mar 2019 09:54:01 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:10 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 12 Mar 2019 09:54:20 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 12 Mar 2019 09:54:22 GMT
VOLUME [/opt/bonita]
# Tue, 12 Mar 2019 09:54:25 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Tue, 12 Mar 2019 09:54:26 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Tue, 12 Mar 2019 09:54:28 GMT
EXPOSE 8080
# Tue, 12 Mar 2019 09:54:34 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c086ce01eaf2427a864dd03d8ca7be4d6af7508dd1531ca8afe96357483f69`  
		Last Modified: Tue, 12 Mar 2019 09:55:13 GMT  
		Size: 77.3 MB (77290386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7f530a7e01f7871a5b863aee13f625711b5068b5762e1748f3c2c7b4efb6d`  
		Last Modified: Tue, 12 Mar 2019 09:54:55 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c71c4d894477cf828c5a4006b780010b4b8f991c2bce5230ed3ab13c7b5f8d`  
		Last Modified: Tue, 12 Mar 2019 09:54:56 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d78e2b7c8d887acf423caaa34cc30dc820303ab1a89c9136c3b5f0ba934399`  
		Last Modified: Tue, 12 Mar 2019 09:54:54 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05213e2042ec5ebd259d4fde23141419d5c542a5baf97df493c44a6702557c12`  
		Last Modified: Tue, 12 Mar 2019 09:54:53 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7b8c1abf46aaa188f62efb74ed68894a896347a5b3acd87e5edf7464adcf27`  
		Last Modified: Tue, 12 Mar 2019 09:55:31 GMT  
		Size: 92.0 MB (91984522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98466bae79544ad77a31a01d74118f364f7aa9edb762e1ffbd1cc6bbfcddde62`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 6.4 KB (6430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9fa3766deb9c3bb339c5507e36899fd7dbb2dba44a8bec040362c5b2c7bebf`  
		Last Modified: Tue, 12 Mar 2019 09:55:24 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
