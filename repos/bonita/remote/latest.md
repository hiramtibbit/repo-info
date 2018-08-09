## `bonita:latest`

```console
$ docker pull bonita@sha256:26d52765409d0b61fb95c0a07ada5ece5d52bc347ebe2976cff8818cc20d741f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:36d0a3c33114447e02a56674251ea527287c74c6cfec4d6511c7a0400edab158
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.5 MB (214506670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ee53ecb906d69eaf5e38a633ecc526950d0cbde94fa5b34d7bc81a06cf0097`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:01:26 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 26 Jul 2018 23:02:15 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 23:02:17 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 26 Jul 2018 23:02:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 26 Jul 2018 23:02:18 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 09 Aug 2018 18:20:42 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 09 Aug 2018 18:20:42 GMT
ARG BONITA_VERSION
# Thu, 09 Aug 2018 18:20:42 GMT
ARG TOMCAT_VERSION
# Thu, 09 Aug 2018 18:20:42 GMT
ARG BONITA_SHA256
# Thu, 09 Aug 2018 18:20:43 GMT
ARG BONITA_URL
# Thu, 09 Aug 2018 18:21:23 GMT
ENV BONITA_VERSION=7.7.3
# Thu, 09 Aug 2018 18:21:23 GMT
ENV TOMCAT_VERSION=8.5.31
# Thu, 09 Aug 2018 18:21:23 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Thu, 09 Aug 2018 18:21:23 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Thu, 09 Aug 2018 18:21:41 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 09 Aug 2018 18:21:43 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 09 Aug 2018 18:21:45 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 09 Aug 2018 18:21:45 GMT
VOLUME [/opt/bonita]
# Thu, 09 Aug 2018 18:21:45 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Thu, 09 Aug 2018 18:21:46 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Thu, 09 Aug 2018 18:21:46 GMT
EXPOSE 8080/tcp
# Thu, 09 Aug 2018 18:21:46 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc023c9e5502c6c65120b705e58fbd9397b9824ccf99457e548c52fbbe7dd9be`  
		Last Modified: Thu, 26 Jul 2018 23:04:37 GMT  
		Size: 82.8 MB (82805047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b100a5f484185d5458f0136770488f12ae2650932848fb9bce972582f986f94`  
		Last Modified: Thu, 26 Jul 2018 23:04:11 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed352bb297e827bd4e8514ed823e05b44f8b265dbfc1460abe36f7d837e199`  
		Last Modified: Thu, 26 Jul 2018 23:04:11 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab02339e6cd0d364efdbee96b9f4879ff5cf7399802623613a34c7fa6d2e4cb`  
		Last Modified: Thu, 26 Jul 2018 23:04:05 GMT  
		Size: 140.6 KB (140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edceebe52f4271b9e17c5688a44b84e212ad9d9fc1775ac1588e764ea728bb2c`  
		Last Modified: Thu, 09 Aug 2018 18:22:13 GMT  
		Size: 500.7 KB (500742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac735dcd0b5c4007386999b30fc29115dd3e910bb0c6105cbf66813959f624d`  
		Last Modified: Thu, 09 Aug 2018 18:23:18 GMT  
		Size: 87.8 MB (87818921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d2890f1fb34007311069c7da5e904ec35e82d720c8e866ca3fb0851ce84dab`  
		Last Modified: Thu, 09 Aug 2018 18:23:09 GMT  
		Size: 6.4 KB (6398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838f08367a66b304bae9bff14ea81d4b57e572b164f6f4458f095720b07b8e95`  
		Last Modified: Thu, 09 Aug 2018 18:23:09 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
