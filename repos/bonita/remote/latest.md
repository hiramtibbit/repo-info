## `bonita:latest`

```console
$ docker pull bonita@sha256:3940654753006c671c1f87b58cb4b40aad7c163d029726d865526f1efab85971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:becb4206e490f7fa0e1997371dbc46ee39b558a84704bde396b36722b8602256
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214785992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ee70c7a6b3ff4c35040cb9c2983902c964b28bcb562034e1258c9ab408ea7b`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 09:53:58 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 17 Jul 2018 09:55:51 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 09:55:52 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 17 Jul 2018 09:55:53 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 17 Jul 2018 09:55:55 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 09:56:00 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 17 Jul 2018 09:56:00 GMT
ARG BONITA_VERSION
# Tue, 17 Jul 2018 09:56:01 GMT
ARG TOMCAT_VERSION
# Tue, 17 Jul 2018 09:56:01 GMT
ARG BONITA_SHA256
# Tue, 17 Jul 2018 09:56:01 GMT
ARG BONITA_URL
# Tue, 17 Jul 2018 09:57:08 GMT
ENV BONITA_VERSION=7.7.2
# Tue, 17 Jul 2018 09:57:08 GMT
ENV TOMCAT_VERSION=8.5.31
# Tue, 17 Jul 2018 09:57:09 GMT
ENV BONITA_SHA256=a69daaa4b12b78434306a35d1d74de63220033edafdb9eb36f9d12b73ee293ef
# Tue, 17 Jul 2018 09:57:09 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.2-Tomcat-8.5.31.zip
# Tue, 17 Jul 2018 09:57:21 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 17 Jul 2018 09:57:23 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 17 Jul 2018 09:57:25 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 17 Jul 2018 09:57:25 GMT
VOLUME [/opt/bonita]
# Tue, 17 Jul 2018 09:57:25 GMT
COPY dir:b5d46d6b7ddf9362130dfe5bee154643bc8c21fb732a8d2f8efa74e842aa95ea in /opt/files 
# Tue, 17 Jul 2018 09:57:26 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Tue, 17 Jul 2018 09:57:26 GMT
EXPOSE 8080/tcp
# Tue, 17 Jul 2018 09:57:27 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7038ddadab1538c2ad41d3491624b0954167a64075939e863f673e21bda2da5f`  
		Last Modified: Tue, 17 Jul 2018 09:58:14 GMT  
		Size: 82.8 MB (82804710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a67e161f13546186e3d0d58e9ab3e8e3e79dbecee66e89e6f1c83bd450724`  
		Last Modified: Tue, 17 Jul 2018 09:57:48 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb15801d86d5eb73015f87ffc793670cc6cf1262e256e358c4cdaa1bd79d9fb`  
		Last Modified: Tue, 17 Jul 2018 09:57:48 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b762299becb1769b15402c53b240a4737fc3f2d5c9ff307cec9e67b79c6dcfd`  
		Last Modified: Tue, 17 Jul 2018 09:57:46 GMT  
		Size: 140.6 KB (140588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb0f25c4a81a9455d20671c753e7b0fbea6cd856d9a57bcb785465e82bd7f26`  
		Last Modified: Tue, 17 Jul 2018 09:57:46 GMT  
		Size: 818.6 KB (818567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19a53da4ad0bf41913d09067d98017b0df7a21f73d3d503e2584a6455497c9e`  
		Last Modified: Tue, 17 Jul 2018 09:58:47 GMT  
		Size: 87.8 MB (87819319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8591ec33985f74cdaa9acfc1ee66a5f906ef2599b53bf0c78e63c4ff21636abe`  
		Last Modified: Tue, 17 Jul 2018 09:58:38 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d677be7bc46da6cd6890feed6363f709c5a2dd5115c3fc337477e1f479acfbd`  
		Last Modified: Tue, 17 Jul 2018 09:58:38 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
