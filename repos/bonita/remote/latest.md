## `bonita:latest`

```console
$ docker pull bonita@sha256:e5666d9cea2d937b4cebfa3e438073010cb2632f1d408c1cd6a99504427d7150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:595bd1fbe00c9010e6319a4be50052a86023d37728a5f79da230dd88d7ece638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217924545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce410f1f02cb5824c5baeaadbf269d694dc73bad22624cfa7ac84e4a548d8b2c`
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
# Fri, 07 Dec 2018 17:19:48 GMT
ENV BONITA_VERSION=7.8.0
# Fri, 07 Dec 2018 17:19:48 GMT
ENV TOMCAT_VERSION=8.5.34
# Fri, 07 Dec 2018 17:19:48 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Fri, 07 Dec 2018 17:19:48 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Fri, 07 Dec 2018 17:19:56 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 07 Dec 2018 17:19:57 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 07 Dec 2018 17:19:58 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 07 Dec 2018 17:19:58 GMT
VOLUME [/opt/bonita]
# Fri, 07 Dec 2018 17:19:59 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Fri, 07 Dec 2018 17:19:59 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Fri, 07 Dec 2018 17:19:59 GMT
EXPOSE 8080/tcp
# Fri, 07 Dec 2018 17:19:59 GMT
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
	-	`sha256:b96f0120875988654c0cf16453e5c5c24c888c9249c5f7770205654f0b69872c`  
		Last Modified: Fri, 07 Dec 2018 17:20:26 GMT  
		Size: 91.0 MB (91017458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42252a895322880c702f582ed73093bc4627f8d87bd9a7e38eaf5e39faf4b66`  
		Last Modified: Fri, 07 Dec 2018 17:20:21 GMT  
		Size: 6.4 KB (6399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2572353ec780ed798299797089e0c66a966bc79ec696a7c2231f3e4a8b1a1b`  
		Last Modified: Fri, 07 Dec 2018 17:20:21 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:71b2ae973fede2251eba9a72b4707624e4cf0c74d3efe68124c8969c410c25e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204685595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2266a2fc95dcf29c41acb8207bd904c5d4ec4f762a2356d2c41e9eff84763ba`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:14:33 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:16:58 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:17:00 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:17:03 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:17:05 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:17:10 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:17:11 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:17:12 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:17:13 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:17:14 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:39:47 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:39:48 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:39:49 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:39:50 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:40:16 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:40:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:40:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:40:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:40:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:40:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:40:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5855b12f835836ed7af3d3a80f961f99b95ab133ee69cbbbee13a19d38e2e30`  
		Last Modified: Tue, 20 Nov 2018 10:19:51 GMT  
		Size: 73.6 MB (73564494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc0c15ebad64b83ce2d190e4a665d7fa9a9defc394c999df5aa108189c55528`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe1f35dce8778ebf382a30708dcf4b7e6743b9b54c54cd17057ae1408e1b5c`  
		Last Modified: Tue, 20 Nov 2018 10:19:11 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d5f908df6d49536a53ceacb4f9c7df54212567b5cb7a272678f16e2185451`  
		Last Modified: Tue, 20 Nov 2018 10:19:07 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca0ca394adcc9a97256b22bfac7c2ca0449d6e50f871bcfbcaf2d614bb390ff`  
		Last Modified: Tue, 20 Nov 2018 10:19:08 GMT  
		Size: 468.8 KB (468790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bef3e988cde5f07302b8971bf357bbbe955fff827784b0230bab11ab0dce05`  
		Last Modified: Sat, 08 Dec 2018 09:41:07 GMT  
		Size: 91.0 MB (91017458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9445031e5169539d938be717700973a1e5d8cee744ef20a79e173d9fa8f920a8`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b683a15600409411c8db38769f5112b33c20875d8b31e27fcd86b8a1ec78165`  
		Last Modified: Sat, 08 Dec 2018 09:40:52 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:e82ecb1e0d8093ab9a112fa574ddec2a933eb21446bba6848460d3da5c3f4511
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214616431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573abd0ea96b7a8aa38234e00db74ec6db8710e23b2ef2408245eb89149c1e70`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:09:29 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 20 Nov 2018 10:12:41 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:12:48 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 20 Nov 2018 10:12:54 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 20 Nov 2018 10:13:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 20 Nov 2018 10:13:17 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 20 Nov 2018 10:13:18 GMT
ARG BONITA_VERSION
# Tue, 20 Nov 2018 10:13:18 GMT
ARG TOMCAT_VERSION
# Tue, 20 Nov 2018 10:13:19 GMT
ARG BONITA_SHA256
# Tue, 20 Nov 2018 10:13:20 GMT
ARG BONITA_URL
# Sat, 08 Dec 2018 09:26:26 GMT
ENV BONITA_VERSION=7.8.0
# Sat, 08 Dec 2018 09:26:27 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 08 Dec 2018 09:26:28 GMT
ENV BONITA_SHA256=953d0eea3afb60b67edc023a46ae7f4018ef2531597fda134840077c7feb01fd
# Sat, 08 Dec 2018 09:26:29 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.0-Tomcat-8.5.34.zip
# Sat, 08 Dec 2018 09:27:15 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:19 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 08 Dec 2018 09:27:22 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 08 Dec 2018 09:27:23 GMT
VOLUME [/opt/bonita]
# Sat, 08 Dec 2018 09:27:24 GMT
COPY dir:0b6f92f685dd0f2bed4912a171510f1c9295c0471f948013ae17b4217f042e04 in /opt/files 
# Sat, 08 Dec 2018 09:27:25 GMT
COPY dir:e1435081b0e7c52394dcbfa274961e239c0c4c5f96be8126ff246383943fb64b in /opt/templates 
# Sat, 08 Dec 2018 09:27:26 GMT
EXPOSE 8080/tcp
# Sat, 08 Dec 2018 09:27:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902a461f7fc602332f11f46d7665980a19a346af3972df63ea5bbc3cfca22bd`  
		Last Modified: Tue, 20 Nov 2018 10:17:18 GMT  
		Size: 77.3 MB (77281563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b18c8d90fcafdd3a89fa3ffddfa5b58bc618b3e9dd819c309470e4a756a501`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68167b1ab25c82518198a336ece838e6ed68884232303956b45e14cbe9aa2d5e`  
		Last Modified: Tue, 20 Nov 2018 10:16:58 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d29a4443d19bcb0a35a53e1773ac3d17f0253bf78a7f26c487d58ccf31ca5a`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 140.6 KB (140611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d70d844737f6c656a849e0f08b77dd834a2b80672c10f6d7338a127fef2663`  
		Last Modified: Tue, 20 Nov 2018 10:16:56 GMT  
		Size: 469.9 KB (469922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df1f5afb7681ea9a070367113f8cd47d48c0872750cf3bc46013d96656dc6ec`  
		Last Modified: Sat, 08 Dec 2018 09:28:29 GMT  
		Size: 91.0 MB (91017497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23b814871233aa05022d7274f4fd732c089ab90435c63a516a337b04df1a823`  
		Last Modified: Sat, 08 Dec 2018 09:28:21 GMT  
		Size: 6.4 KB (6429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6ca1c79a3e5c04e9e7f6255d0954cdd2f4420cb9decd138ee61a0fb17fe9db`  
		Last Modified: Sat, 08 Dec 2018 09:28:20 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
