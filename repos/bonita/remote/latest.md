## `bonita:latest`

```console
$ docker pull bonita@sha256:3470ec5f6fa0b8b62dd8108d534037aeca6943c9ca21bb0839862fa0c0ee82e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:9dfa061a35631da85bf18d88835cffcdc282b93e8eff3af259591e2a9e42f1eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214667424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7803d4d4a303b5378d47b4c0dcc29bd2b158fd0d2aaf56e36dcb49149907f40e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:23:55 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 01:24:50 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:24:51 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 01:24:51 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 01:24:52 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 01:24:54 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 01:24:54 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 01:25:30 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 01:25:30 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 01:25:47 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:48 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 01:25:49 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 01:25:49 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 01:25:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 01:25:50 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 01:25:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3bf702c4ca1f45deb5679d08b2e5d89777c3620431377061e58cb1035b077f`  
		Last Modified: Fri, 19 Oct 2018 01:26:29 GMT  
		Size: 82.8 MB (82837789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da232b6698ca7cb87cc4584b508115640a1f19d59edbda8a2e5d6683911391`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5562f80c92bb1682f11d4b5f952fa2de264ac6e5dcfc33eff1509216570ba612`  
		Last Modified: Fri, 19 Oct 2018 01:26:08 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1aeaebb61ab8039cefe92e34b92e6f15484ccebe86bbd60c464e0d3e936fe4`  
		Last Modified: Fri, 19 Oct 2018 01:26:06 GMT  
		Size: 140.6 KB (140582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845378da8394d76498c90909fc131368276f6e773f295bde7f05c02058c7566f`  
		Last Modified: Fri, 19 Oct 2018 01:26:07 GMT  
		Size: 500.7 KB (500739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbcd2cf8f3c8f9138f5eb2adfe968db7307b47ce5af7aa7f5061ff1c137ea51`  
		Last Modified: Fri, 19 Oct 2018 01:26:59 GMT  
		Size: 87.8 MB (87823573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9622d5e9160d9bcc86ef4c4683b0e86bac207c0c6d94deaa6848d58a60600e9`  
		Last Modified: Fri, 19 Oct 2018 01:26:54 GMT  
		Size: 6.4 KB (6400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d524e77efc2b7844a7e74d76e8a3dab555d5bcca7eacc4a11bd4a7727aff0ce`  
		Last Modified: Fri, 19 Oct 2018 01:26:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:4c55214458fa1b880a32e637cbf7cc37391e5d8ad6425d8bd7a3038bb634f360
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201364261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aafdbad8cdb68626d3ede3cc7d1a2b70025433f1650f30a646f492b28aa4785`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 23 Aug 2018 18:00:02 GMT
ADD file:e5010797ac02efecbf22dd21592880fd5283c01d177c3f0d1274c6397683f8f0 in / 
# Thu, 23 Aug 2018 18:00:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 18:00:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:00:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 18:00:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 18:00:11 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:18:57 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 23 Aug 2018 22:21:18 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:21:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 23 Aug 2018 22:21:28 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 23 Aug 2018 22:21:48 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 23 Aug 2018 22:21:53 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 23 Aug 2018 22:22:09 GMT
ARG BONITA_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG TOMCAT_VERSION
# Thu, 23 Aug 2018 22:22:10 GMT
ARG BONITA_SHA256
# Thu, 23 Aug 2018 22:22:11 GMT
ARG BONITA_URL
# Wed, 10 Oct 2018 08:41:14 GMT
ENV BONITA_VERSION=7.7.4
# Wed, 10 Oct 2018 08:41:15 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Wed, 10 Oct 2018 08:41:16 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Wed, 10 Oct 2018 08:42:31 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:34 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 10 Oct 2018 08:42:37 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 10 Oct 2018 08:42:38 GMT
VOLUME [/opt/bonita]
# Wed, 10 Oct 2018 08:42:49 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 10 Oct 2018 08:42:50 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 10 Oct 2018 08:42:51 GMT
EXPOSE 8080/tcp
# Wed, 10 Oct 2018 08:42:51 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:672a69505838a80ab1d16038f6268944bf913e2b9df67785f4f560145b243625`  
		Last Modified: Fri, 10 Aug 2018 22:12:34 GMT  
		Size: 39.4 MB (39381352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958416e5b29b0395ebf84d5442b4a440207871d06ab7b5b475bbfcbc64625d16`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b2df41f722dc826e75f4e3fadac77f1487ed4e1254e92645e664d785662036`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea051153c5ecf9f78bc0528c6f4917ae8a6bb1910be9c1e23926fa80704160a`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdeb5fe2e665aecb71278bdb333b15048b051370afe97929d4abf456e456a22`  
		Last Modified: Thu, 23 Aug 2018 18:06:04 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccfb9f28b47f919b20dab3fe0f436a6a1bea3d91be3a0a4964989d3ce83fed2`  
		Last Modified: Thu, 23 Aug 2018 22:27:32 GMT  
		Size: 73.5 MB (73537277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d26be524bf12625935ae607440747a952773d61c8f038d31faa8b442ae064f`  
		Last Modified: Thu, 23 Aug 2018 22:27:10 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6a65f40d10b47d7409c91f0c934d17b5faca150e8a4b3b66eb50268722efe3`  
		Last Modified: Thu, 23 Aug 2018 22:27:09 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c466ee9e085c26be745f4ab66f688b669ee0eac208c4f23f7c891e28ae5b17c`  
		Last Modified: Thu, 23 Aug 2018 22:27:06 GMT  
		Size: 140.6 KB (140587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e2a88ed077d6ee1ffa243d1cff3121a5157b3606f2e781bad602dcf738eb81`  
		Last Modified: Thu, 23 Aug 2018 22:27:07 GMT  
		Size: 468.8 KB (468794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bde336d5e6d0e056048ec5fcaae0863ec8ff61e21080c427dff7574f5501671`  
		Last Modified: Wed, 10 Oct 2018 08:43:24 GMT  
		Size: 87.8 MB (87823580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be6c0b8534a850a59e3b1331aeda0b90117ab17040000ebe2c5431e0d4cf5d7`  
		Last Modified: Wed, 10 Oct 2018 08:43:12 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d252b069f11a1895335526329acb5b824f8f2dc8e8a1b1c92b2be462f0e75cd6`  
		Last Modified: Wed, 10 Oct 2018 08:43:11 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; ppc64le

```console
$ docker pull bonita@sha256:ec8270eaa7a87947d26cc5c5cf6f4e531bb3d2119a3f502d40683ee9e9a126da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211386843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df77efe61ed495ced5f3487da0d77d33b5d70fc2c5e4fea1d0b4f8457b56a03`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:15:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 19 Oct 2018 10:18:19 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:18:26 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 19 Oct 2018 10:18:33 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 19 Oct 2018 10:18:39 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 19 Oct 2018 10:18:47 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 19 Oct 2018 10:18:48 GMT
ARG BONITA_VERSION
# Fri, 19 Oct 2018 10:18:48 GMT
ARG TOMCAT_VERSION
# Fri, 19 Oct 2018 10:18:50 GMT
ARG BONITA_SHA256
# Fri, 19 Oct 2018 10:18:50 GMT
ARG BONITA_URL
# Fri, 19 Oct 2018 10:20:36 GMT
ENV BONITA_VERSION=7.7.4
# Fri, 19 Oct 2018 10:20:37 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 19 Oct 2018 10:20:37 GMT
ENV BONITA_SHA256=eff9030475c01e5493f66683fbf7beecfde4c618d82f9911f1a3aa21c0294671
# Fri, 19 Oct 2018 10:20:39 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.4-Tomcat-8.5.31.zip
# Fri, 19 Oct 2018 10:21:35 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 10:21:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 19 Oct 2018 10:22:09 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 19 Oct 2018 10:22:12 GMT
VOLUME [/opt/bonita]
# Fri, 19 Oct 2018 10:22:15 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 19 Oct 2018 10:22:18 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 19 Oct 2018 10:22:21 GMT
EXPOSE 8080/tcp
# Fri, 19 Oct 2018 10:22:25 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d65ba81be3d3da0e4069496d62eced8ff893a12bd1ac25bd5a55ec93dd9f78`  
		Last Modified: Fri, 19 Oct 2018 10:23:06 GMT  
		Size: 77.3 MB (77293882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff22ef9774aed8336d7b63e25158a3b85c126fdd6b6742951a2affbb24a012a5`  
		Last Modified: Fri, 19 Oct 2018 10:22:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a11bdbfad29c3989f2cc1a753f3ef61a195c9a26e3a9f233c0b073e2e4dd53f`  
		Last Modified: Fri, 19 Oct 2018 10:22:47 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b80b2a92ff349c0d51eff6ed20af3f0118d9ef5c2ac3dd7397ee698b624bc17`  
		Last Modified: Fri, 19 Oct 2018 10:22:45 GMT  
		Size: 140.6 KB (140616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61891ceefe45c8519864f45b068ffd1756358b1dbe59770cecfba44060446d2d`  
		Last Modified: Fri, 19 Oct 2018 10:22:45 GMT  
		Size: 469.9 KB (469925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb8859d5a08c6e539f3a34b0155bda6d905364104503f958b08aff96e09797c`  
		Last Modified: Fri, 19 Oct 2018 10:23:37 GMT  
		Size: 87.8 MB (87823604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36177443d359d1f41eb600e9e26adb0a25caaf3cf9a034f0ec4fcbca2a27f47c`  
		Last Modified: Fri, 19 Oct 2018 10:23:30 GMT  
		Size: 6.4 KB (6428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942198165d358947dbfc50f799a0d6c277e3108aee3288385d9ec104bdbc7fac`  
		Last Modified: Fri, 19 Oct 2018 10:23:29 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
