## `bonita:latest`

```console
$ docker pull bonita@sha256:4bcf5b0efeb954ef616316e1ed1a11c7b58c2aa938089a6c37e354823e4a6925
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:e0d93e88e0ce17fa3488671cd37e2ed87364b3ebdc930f9d5a8a13d7e27e61c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219211375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a084edc81858e5c126e438eb9d60453d85349fd6ffa17ad93cf69c5aa541439`
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
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_VERSION=7.8.3
# Sat, 27 Apr 2019 00:23:20 GMT
ENV TOMCAT_VERSION=8.5.34
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Sat, 27 Apr 2019 00:23:20 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Sat, 27 Apr 2019 00:23:27 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:28 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Sat, 27 Apr 2019 00:23:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Sat, 27 Apr 2019 00:23:31 GMT
VOLUME [/opt/bonita]
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Sat, 27 Apr 2019 00:23:31 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Sat, 27 Apr 2019 00:23:31 GMT
EXPOSE 8080
# Sat, 27 Apr 2019 00:23:31 GMT
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
	-	`sha256:9ccd01c0be42a9984400e2408f50e21cf79d60c5c1315e03e8d3b1b1c1b08f3a`  
		Last Modified: Sat, 27 Apr 2019 00:24:04 GMT  
		Size: 92.0 MB (91984484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfc276dba61e6ef227ad4ec29fcf2a9de679b996aa052185e7e4521ab53b3ef`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e280ae7828de58488501aa696837af043a09c92cbec2d004daff8e1eae76dc77`  
		Last Modified: Sat, 27 Apr 2019 00:23:58 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:2a0aaf3f66e83089fec28d3ad4398ff4bd5b747639047169adfc8af761db3ec8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.0 MB (205971346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f75019280d9a4918094025c894b3a8c9bb45a21f20f27754894cda46f163daa`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 10:54:38 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Mar 2019 10:58:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:58:53 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Mar 2019 10:58:57 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Mar 2019 10:59:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Mar 2019 10:59:08 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Mar 2019 10:59:09 GMT
ARG BONITA_VERSION
# Thu, 14 Mar 2019 10:59:11 GMT
ARG TOMCAT_VERSION
# Thu, 14 Mar 2019 10:59:13 GMT
ARG BONITA_SHA256
# Thu, 14 Mar 2019 10:59:14 GMT
ARG BONITA_URL
# Thu, 14 Mar 2019 11:00:08 GMT
ENV BONITA_VERSION=7.8.3
# Thu, 14 Mar 2019 11:00:09 GMT
ENV TOMCAT_VERSION=8.5.34
# Thu, 14 Mar 2019 11:00:10 GMT
ENV BONITA_SHA256=cf47a56446d0d7ad93dc1a85988d220315f2200602871a6b1b93f64b9a989705
# Thu, 14 Mar 2019 11:00:12 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.8.3-Tomcat-8.5.34.zip
# Thu, 14 Mar 2019 11:00:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:38 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Mar 2019 11:00:43 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Mar 2019 11:00:44 GMT
VOLUME [/opt/bonita]
# Thu, 14 Mar 2019 11:00:45 GMT
COPY dir:c6d7e9629a42c861bb0856b3a1835982731a180d7086c81fa15a9be006778db5 in /opt/files 
# Thu, 14 Mar 2019 11:00:46 GMT
COPY dir:f57d2aaca06a0902547835779dc4dcfee6861e7250f9cec6d0d5c032f6bf35d5 in /opt/templates 
# Thu, 14 Mar 2019 11:00:48 GMT
EXPOSE 8080
# Thu, 14 Mar 2019 11:00:49 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5687d25bc03e08481ab9e29dab4e76c96f93f009cef8da8567c7af4ddcaa51a`  
		Last Modified: Thu, 14 Mar 2019 11:01:35 GMT  
		Size: 73.8 MB (73782779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbd0a15c7b02787373f566564c7a4b6cab9ca026be7a308f468edf4a0716e97`  
		Last Modified: Thu, 14 Mar 2019 11:01:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac5e2f94b4c37d3a2d739c2209bb293997e8473d1c4f1e718d0f6a3c0cd01c5`  
		Last Modified: Thu, 14 Mar 2019 11:01:10 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63f86354aabbaa35b1d5b28bf4b0cc80bce417565d45d4fdbf300e174d4fc2b`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7cc040f15e5c59c0d32df0ee11141946f7d06948865db3c53ae5cf0c74b9f0`  
		Last Modified: Thu, 14 Mar 2019 11:01:08 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485a8950bdcaf19a1f9ca25ff8cce14eef6a028a021ec0816fac9843d660bd9d`  
		Last Modified: Thu, 14 Mar 2019 11:01:55 GMT  
		Size: 92.0 MB (91984483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddccde26445188f5e4d488c19b53f984c10c1292486239db0c62a39d544bab4`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa180081b8a94e365628318a7742fe3babe1095b899583eda8719b0619bfc91e`  
		Last Modified: Thu, 14 Mar 2019 11:01:44 GMT  
		Size: 1.7 KB (1668 bytes)  
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
