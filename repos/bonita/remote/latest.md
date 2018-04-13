## `bonita:latest`

```console
$ docker pull bonita@sha256:0591b31c840fb6a1f21e3178238bb2d92e96c5d495f0dc6c6febd3b4d519409c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:ecad20dc9b2fa9447ffa0a3647e904e43138afbc1ffa8eb0eaf32b19c041d24f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.1 MB (215110864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5606859b66868130ac6e15d358f368d7ac221e6c9f5c471bda842ab33eef96ab`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:10:36 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 12 Apr 2018 23:11:08 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 23:11:09 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 12 Apr 2018 23:11:10 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 12 Apr 2018 23:11:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 12 Apr 2018 23:11:15 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 12 Apr 2018 23:11:16 GMT
ARG BONITA_VERSION
# Thu, 12 Apr 2018 23:11:16 GMT
ARG TOMCAT_VERSION
# Thu, 12 Apr 2018 23:11:16 GMT
ARG BONITA_SHA256
# Thu, 12 Apr 2018 23:11:16 GMT
ARG BONITA_URL
# Thu, 12 Apr 2018 23:11:53 GMT
ENV BONITA_VERSION=7.6.3
# Thu, 12 Apr 2018 23:11:54 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 12 Apr 2018 23:11:54 GMT
ENV BONITA_SHA256=54c6ed105b31a216a7db513bc16abc06f8c003ea9223329285a410158e8c52fc
# Thu, 12 Apr 2018 23:11:54 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.3-Tomcat-8.5.23.zip
# Thu, 12 Apr 2018 23:12:04 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 12 Apr 2018 23:12:05 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 12 Apr 2018 23:12:06 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 12 Apr 2018 23:12:07 GMT
VOLUME [/opt/bonita]
# Thu, 12 Apr 2018 23:12:07 GMT
COPY dir:36f18251c733cafd736036b6a4f7f80f2a2dfd07ceed967905b6d6c664092a7e in /opt/files 
# Thu, 12 Apr 2018 23:12:08 GMT
COPY dir:edb11ffdd81263f8c4bfb9747b50eeeecc257be99fa2b17a47d8de747cd29e32 in /opt/templates 
# Thu, 12 Apr 2018 23:12:08 GMT
EXPOSE 8080/tcp
# Thu, 12 Apr 2018 23:12:08 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c57e8993c77feb08fff9bc6b4ecbde218f392803b37eb3ec872b3370306731`  
		Last Modified: Thu, 12 Apr 2018 23:15:38 GMT  
		Size: 82.8 MB (82802773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab13933ce173f50ee13e80d2aacbdc137a8a8ee72e16a1e6960d761f3164b9c2`  
		Last Modified: Thu, 12 Apr 2018 23:15:20 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde05bd7f4b6d536f5b55817d9c2a56b9ac019a8c6a23562308f59fa2b5382f0`  
		Last Modified: Thu, 12 Apr 2018 23:15:20 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ae29255e25c9eb06858b06978fecb61b348ca8d76d98b3fc940e5644716b01`  
		Last Modified: Thu, 12 Apr 2018 23:15:18 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e9726b72f854d9761f8ca5417a4bd8ade52b943d04201e8c6aeea38856271e`  
		Last Modified: Thu, 12 Apr 2018 23:15:18 GMT  
		Size: 818.6 KB (818565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22116b3adf31b28a84012e2ecc335b7e2a47b316e3e93413412eb1c3475f235e`  
		Last Modified: Thu, 12 Apr 2018 23:19:49 GMT  
		Size: 88.3 MB (88320709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a06f775743fd1311a5b62b9c354b7f1ee3139de2cc77e0547fd2ad681dac4e`  
		Last Modified: Thu, 12 Apr 2018 23:19:39 GMT  
		Size: 6.4 KB (6369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e45d01703cc82502768c5fb8b86aa2eb3fd1ff83288b26e371531015c263dea`  
		Last Modified: Thu, 12 Apr 2018 23:19:39 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
