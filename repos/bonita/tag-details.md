<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:7.6.3`](#bonita763)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:3f2a318f4258156ba733f2d9f3bd641acf84f216d8f1bd5abab9fa6ce1b6fdd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:7bab6c95dcd60ded50c20518006a58d23ecdcc2ba7033c6832b5e21dce10242d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214150891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adff7a8e7686ba7520ef5105f359be62f621b9a33c50e4bc68f9f7fc5266af8`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:51:39 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 06 Mar 2018 23:52:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 23:52:12 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 06 Mar 2018 23:52:12 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 06 Mar 2018 23:52:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 06 Mar 2018 23:52:18 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_VERSION
# Tue, 06 Mar 2018 23:52:19 GMT
ARG TOMCAT_VERSION
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_SHA256
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_URL
# Tue, 06 Mar 2018 23:52:19 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 06 Mar 2018 23:52:20 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 06 Mar 2018 23:52:20 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 06 Mar 2018 23:52:20 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 06 Mar 2018 23:52:33 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Mar 2018 23:52:34 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Mar 2018 23:52:36 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 06 Mar 2018 23:52:36 GMT
VOLUME [/opt/bonita]
# Tue, 06 Mar 2018 23:52:36 GMT
COPY dir:67158d50f6a23f242c6ece683aa22b62bf43e8403082c8a4b4c012ca3a3a0ac5 in /opt/files 
# Tue, 06 Mar 2018 23:52:37 GMT
COPY dir:9c7efc1f1052334e3fa2155bf4baf6140b0737b2a90d312707da88cd5f7679da in /opt/templates 
# Tue, 06 Mar 2018 23:52:37 GMT
EXPOSE 8080/tcp
# Tue, 06 Mar 2018 23:52:37 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bc5b22db56d952039389c2972608596995b0a16d0241b297c4fa22220e5f5a`  
		Last Modified: Tue, 06 Mar 2018 23:53:50 GMT  
		Size: 82.7 MB (82719050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4596f9fd244cad6d93e9ccdc20743060a829f59eac2fd5eb0f44ebe605373f05`  
		Last Modified: Tue, 06 Mar 2018 23:53:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18847fe59ed03794d8cd222c99742cea4fd20361a0b617b4fb4c97f713b2bdec`  
		Last Modified: Tue, 06 Mar 2018 23:53:38 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8141427b8b9759993142e35c848620afceef74c836a6ee37865c1826564b1a`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889754cd4ac1ccc8f6ea8a08dc934d2e6b4a2c911a120f54ede95e108bee5ce0`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d71b0741f06ebf0b1da58569494959a24c09bdc255f461e4b6f33ca0594e127`  
		Last Modified: Tue, 06 Mar 2018 23:53:41 GMT  
		Size: 87.5 MB (87503860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc44b1147d068b772b8d336086bf972f4ca6bd8fe7a92412cca80436ca7fc17c`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 6.2 KB (6179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b26cf21a88b2333405f1104c07fcccec36f7ad97c388249c44f9e5ee588309`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 1.6 KB (1628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.6.3`

```console
$ docker pull bonita@sha256:cd28287c1dd6f0af9469d68c98a5d28753ccc95fa5239f3ed113544a6d9ef16a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.6.3` - linux; amd64

```console
$ docker pull bonita@sha256:27da58999269534efe343ebf9921d409c2c96f7ea07702a73b6a65320feec4f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (214967969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d8e86c3f7ab6a3334001d25a2399266462d1cfb0b4d496937939103d5a40b6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:51:39 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 06 Mar 2018 23:52:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 23:52:12 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 06 Mar 2018 23:52:12 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 06 Mar 2018 23:52:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 06 Mar 2018 23:52:18 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_VERSION
# Tue, 06 Mar 2018 23:52:19 GMT
ARG TOMCAT_VERSION
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_SHA256
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_URL
# Tue, 06 Mar 2018 23:53:02 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 06 Mar 2018 23:53:02 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 06 Mar 2018 23:53:02 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 06 Mar 2018 23:53:03 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 06 Mar 2018 23:53:12 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Mar 2018 23:53:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Mar 2018 23:53:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 06 Mar 2018 23:53:15 GMT
VOLUME [/opt/bonita]
# Tue, 06 Mar 2018 23:53:15 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Tue, 06 Mar 2018 23:53:16 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Tue, 06 Mar 2018 23:53:16 GMT
EXPOSE 8080/tcp
# Tue, 06 Mar 2018 23:53:16 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bc5b22db56d952039389c2972608596995b0a16d0241b297c4fa22220e5f5a`  
		Last Modified: Tue, 06 Mar 2018 23:53:50 GMT  
		Size: 82.7 MB (82719050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4596f9fd244cad6d93e9ccdc20743060a829f59eac2fd5eb0f44ebe605373f05`  
		Last Modified: Tue, 06 Mar 2018 23:53:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18847fe59ed03794d8cd222c99742cea4fd20361a0b617b4fb4c97f713b2bdec`  
		Last Modified: Tue, 06 Mar 2018 23:53:38 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8141427b8b9759993142e35c848620afceef74c836a6ee37865c1826564b1a`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889754cd4ac1ccc8f6ea8a08dc934d2e6b4a2c911a120f54ede95e108bee5ce0`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be27fd1805361aa6b55a519a3130cf292badb40fa7930febc134a60b9c28ac8b`  
		Last Modified: Tue, 06 Mar 2018 23:54:15 GMT  
		Size: 88.3 MB (88320705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c33a83fd3dd8b670e4962b3a13e5bb73a676a4aa1f33ff81f9f02c754ecf90`  
		Last Modified: Tue, 06 Mar 2018 23:54:11 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f71dffd2b04cf03fbc0665d726eab920353d2677a5d4642f6aabfca4d7630ea`  
		Last Modified: Tue, 06 Mar 2018 23:54:11 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:cd28287c1dd6f0af9469d68c98a5d28753ccc95fa5239f3ed113544a6d9ef16a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:27da58999269534efe343ebf9921d409c2c96f7ea07702a73b6a65320feec4f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.0 MB (214967969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d8e86c3f7ab6a3334001d25a2399266462d1cfb0b4d496937939103d5a40b6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:51:39 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 06 Mar 2018 23:52:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 23:52:12 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 06 Mar 2018 23:52:12 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 06 Mar 2018 23:52:14 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 06 Mar 2018 23:52:18 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_VERSION
# Tue, 06 Mar 2018 23:52:19 GMT
ARG TOMCAT_VERSION
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_SHA256
# Tue, 06 Mar 2018 23:52:19 GMT
ARG BONITA_URL
# Tue, 06 Mar 2018 23:53:02 GMT
ENV BONITA_VERSION=7.6.3
# Tue, 06 Mar 2018 23:53:02 GMT
ENV TOMCAT_VERSION=8.5.23
# Tue, 06 Mar 2018 23:53:02 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Tue, 06 Mar 2018 23:53:03 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Tue, 06 Mar 2018 23:53:12 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Mar 2018 23:53:13 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 06 Mar 2018 23:53:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 06 Mar 2018 23:53:15 GMT
VOLUME [/opt/bonita]
# Tue, 06 Mar 2018 23:53:15 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Tue, 06 Mar 2018 23:53:16 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Tue, 06 Mar 2018 23:53:16 GMT
EXPOSE 8080/tcp
# Tue, 06 Mar 2018 23:53:16 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bc5b22db56d952039389c2972608596995b0a16d0241b297c4fa22220e5f5a`  
		Last Modified: Tue, 06 Mar 2018 23:53:50 GMT  
		Size: 82.7 MB (82719050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4596f9fd244cad6d93e9ccdc20743060a829f59eac2fd5eb0f44ebe605373f05`  
		Last Modified: Tue, 06 Mar 2018 23:53:39 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18847fe59ed03794d8cd222c99742cea4fd20361a0b617b4fb4c97f713b2bdec`  
		Last Modified: Tue, 06 Mar 2018 23:53:38 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8141427b8b9759993142e35c848620afceef74c836a6ee37865c1826564b1a`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889754cd4ac1ccc8f6ea8a08dc934d2e6b4a2c911a120f54ede95e108bee5ce0`  
		Last Modified: Tue, 06 Mar 2018 23:53:36 GMT  
		Size: 818.6 KB (818566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be27fd1805361aa6b55a519a3130cf292badb40fa7930febc134a60b9c28ac8b`  
		Last Modified: Tue, 06 Mar 2018 23:54:15 GMT  
		Size: 88.3 MB (88320705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c33a83fd3dd8b670e4962b3a13e5bb73a676a4aa1f33ff81f9f02c754ecf90`  
		Last Modified: Tue, 06 Mar 2018 23:54:11 GMT  
		Size: 6.4 KB (6368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f71dffd2b04cf03fbc0665d726eab920353d2677a5d4642f6aabfca4d7630ea`  
		Last Modified: Tue, 06 Mar 2018 23:54:11 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
