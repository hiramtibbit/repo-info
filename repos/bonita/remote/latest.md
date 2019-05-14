## `bonita:latest`

```console
$ docker pull bonita@sha256:65b7b9af9c9060a043d533c175a785fed3f7c5f765c7736e3f03125585fe1243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:ee6e4df4ac708fc0b4fc15e7e6f39917d290ebe52060f1cc04e027d006a0e1db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221255517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b635711eba332f05ce04b26a5a195e2fc7ee69d93d78a34a2239087375b82e7`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 00:22:17 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 00:22:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:23:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 00:23:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 00:23:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 00:23:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 00:23:03 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 00:23:03 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 00:23:04 GMT
ARG BONITA_URL
# Thu, 09 May 2019 21:19:56 GMT
ENV BONITA_VERSION=7.8.4
# Thu, 09 May 2019 21:19:58 GMT
ENV TOMCAT_VERSION=8.5.34
# Thu, 09 May 2019 21:19:58 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Thu, 09 May 2019 21:19:58 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Thu, 09 May 2019 21:20:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 09 May 2019 21:20:34 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 09 May 2019 21:20:52 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 09 May 2019 21:20:52 GMT
VOLUME [/opt/bonita]
# Thu, 09 May 2019 21:20:53 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Thu, 09 May 2019 21:20:54 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Thu, 09 May 2019 21:20:54 GMT
EXPOSE 8080
# Thu, 09 May 2019 21:20:55 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e3d372b5b1e0f15513f309f795bce52c03bd236afa8b07fd1925ace324ce3d9`  
		Last Modified: Sat, 27 Apr 2019 00:23:54 GMT  
		Size: 82.8 MB (82821283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357abc1d0a4de0ab0ec75b6240b2cc41faa561a8f4d0ebd575fbe2be9048d1b1`  
		Last Modified: Sat, 27 Apr 2019 00:23:40 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed50e9b451808694c428ab22be4b506562f3068ec0b15e214c417b4529b160f2`  
		Last Modified: Sat, 27 Apr 2019 00:23:39 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6fddeacdbebac494de0c931dec77b42a42ec8c2e27760c2bb2c617f3a4b911`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a5901022eb25651cb5845ce3c07f402d1b7f08efbd58b42a131e0f800a5076`  
		Last Modified: Sat, 27 Apr 2019 00:23:38 GMT  
		Size: 500.7 KB (500738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a14f644bbda278fdadc53746e61dee9bb52c1dc701fd7da8ae426f32c0a98e8`  
		Last Modified: Thu, 09 May 2019 21:21:24 GMT  
		Size: 94.0 MB (94028631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585eebbf85321ad94bc0d23b560caa408190549b6f5186349becda105ec06286`  
		Last Modified: Thu, 09 May 2019 21:21:16 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e83f64de14f330ed58972b57baa72d9db9564eb4152a6d3ce9b122cf352433`  
		Last Modified: Thu, 09 May 2019 21:21:16 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:e4b862291a0de851e425f3a6846066535325d160ad73581cc5edba95e1d52599
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208164739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:288dd128ab845768b0ae381e0f3e0c112daeead71f1dca654a6bcd33ced2c363`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:34:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:38:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:39:00 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:39:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:39:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:39:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:39:11 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:39:13 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:39:14 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:39:15 GMT
ARG BONITA_URL
# Fri, 10 May 2019 08:39:35 GMT
ENV BONITA_VERSION=7.8.4
# Fri, 10 May 2019 08:39:35 GMT
ENV TOMCAT_VERSION=8.5.34
# Fri, 10 May 2019 08:39:36 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Fri, 10 May 2019 08:39:37 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Fri, 10 May 2019 08:40:03 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 10 May 2019 08:40:06 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 10 May 2019 08:40:09 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 10 May 2019 08:40:10 GMT
VOLUME [/opt/bonita]
# Fri, 10 May 2019 08:40:10 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Fri, 10 May 2019 08:40:11 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Fri, 10 May 2019 08:40:11 GMT
EXPOSE 8080
# Fri, 10 May 2019 08:40:12 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d0f603ee2b381586c67700d00b186a0e22912262df37959c653a2b3f6b4463`  
		Last Modified: Sat, 27 Apr 2019 11:41:27 GMT  
		Size: 73.8 MB (73785599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c76b4392c1fd7e305f6ebf8c3b2e0e60cf401a68858d99f5fea05694c11274`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3ca360e0f2944a7935f3747c34bcfafbc18c72de44c76bb6829a91560db3b7`  
		Last Modified: Sat, 27 Apr 2019 11:41:03 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711853d24742332454e3adf5970b565c60e6a3d608a8e957d117e7461aa4ba51`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 140.6 KB (140585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907896896ff865d4cd23904321fa5098f44fff4f94a619c2d0ab91de42fa35f5`  
		Last Modified: Sat, 27 Apr 2019 11:41:00 GMT  
		Size: 468.8 KB (468791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23c321c5701f61a473d950efe660879f70472c93b14bc2b51cc209d8b950fcb`  
		Last Modified: Fri, 10 May 2019 08:40:42 GMT  
		Size: 94.0 MB (94028632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157963b1214ea967eaee47f2dece3e305d5f941467995da9514f2e53cec90126`  
		Last Modified: Fri, 10 May 2019 08:40:30 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b56a1a4bbb91c2eefa158486e98cd26de5e9146bc20de1270aaf5993cd1fa`  
		Last Modified: Fri, 10 May 2019 08:40:30 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:024403d08dd4527fb4890adba2c72122ecc36f5d8a69abeb093565905c66eef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217870012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28693cd1459965be1626daf140f5e31a869d39f05c25d866ca1f081d7e50d3b`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:57:19 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Sat, 27 Apr 2019 11:01:00 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:01:10 GMT
RUN mkdir /opt/custom-init.d/
# Sat, 27 Apr 2019 11:01:19 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Sat, 27 Apr 2019 11:01:27 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 27 Apr 2019 11:01:38 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Sat, 27 Apr 2019 11:01:42 GMT
ARG BONITA_VERSION
# Sat, 27 Apr 2019 11:01:45 GMT
ARG TOMCAT_VERSION
# Sat, 27 Apr 2019 11:01:48 GMT
ARG BONITA_SHA256
# Sat, 27 Apr 2019 11:01:51 GMT
ARG BONITA_URL
# Fri, 10 May 2019 08:19:33 GMT
ENV BONITA_VERSION=7.8.4
# Fri, 10 May 2019 08:34:46 GMT
ENV TOMCAT_VERSION=8.5.34
# Fri, 10 May 2019 08:34:48 GMT
ENV BONITA_SHA256=f7a838c7ae4a6c3e1945b1fb9739ebc0fd75b208309409e1fc5cd582f63f8d62
# Fri, 10 May 2019 08:34:51 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.4-Tomcat-8.5.34.zip
# Fri, 10 May 2019 08:36:08 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 10 May 2019 08:39:59 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 10 May 2019 08:40:07 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 10 May 2019 08:40:09 GMT
VOLUME [/opt/bonita]
# Fri, 10 May 2019 08:40:11 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Fri, 10 May 2019 08:40:13 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Fri, 10 May 2019 08:40:17 GMT
EXPOSE 8080
# Fri, 10 May 2019 08:40:21 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfbc12b06969d7b6f1da24cdb63c44de63ccc7691676e41c0e33e0dda5f5830`  
		Last Modified: Sat, 27 Apr 2019 11:06:43 GMT  
		Size: 77.3 MB (77290355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e9c001041610102db23ae3d1e3d0007433f0f71942f8564920a73c3ade7ad2`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5613c383fa244bc407cfe56e5dd302cbc750dde3deae58121a01ed438680b3`  
		Last Modified: Sat, 27 Apr 2019 11:06:22 GMT  
		Size: 2.1 KB (2051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5316ac94565a2d92bc41bfbbe19a13fbdfd2f765c839d6ae320c29ac74aff057`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 140.6 KB (140617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae36072b67aeddc3da2f1b0fd0562a8a7de105fe1687598a3643d3cd181e07f`  
		Last Modified: Sat, 27 Apr 2019 11:06:19 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f2da20b4954022ec1b4570ba360e0d7a492460156e8e2cd304326db302f48d`  
		Last Modified: Fri, 10 May 2019 08:40:54 GMT  
		Size: 94.0 MB (94028657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd62682717206dd24bc047a439092ca0c9b47b8c5798171c7ac9133ad9bfd200`  
		Last Modified: Fri, 10 May 2019 08:40:42 GMT  
		Size: 6.4 KB (6429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749202e48d944630911b13b73694e05e90f7dfb1519d9cdf9f7ea8b29259dd3`  
		Last Modified: Fri, 10 May 2019 08:40:42 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
