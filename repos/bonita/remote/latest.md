## `bonita:latest`

```console
$ docker pull bonita@sha256:f0ed7e959974a5584274aa7ec3bae164b3e2b624e3d858d0467e7c32ae92d636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:e9b44df7077cbf7d81bf5d3e24709b0f1fb60725765147fdeb6300e889f6656f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.5 MB (214506683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04a370024a4f8c5f0b3fd39b8f866683bb7f1c9ed7d286fc0ee4dc4474bfe8a`
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
# Wed, 22 Aug 2018 17:21:20 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 22 Aug 2018 17:21:21 GMT
ARG BONITA_VERSION
# Wed, 22 Aug 2018 17:21:21 GMT
ARG TOMCAT_VERSION
# Wed, 22 Aug 2018 17:21:21 GMT
ARG BONITA_SHA256
# Wed, 22 Aug 2018 17:21:21 GMT
ARG BONITA_URL
# Wed, 22 Aug 2018 17:23:05 GMT
ENV BONITA_VERSION=7.7.3
# Wed, 22 Aug 2018 17:23:06 GMT
ENV TOMCAT_VERSION=8.5.31
# Wed, 22 Aug 2018 17:23:06 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Wed, 22 Aug 2018 17:23:06 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Wed, 22 Aug 2018 17:23:18 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:23:31 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 22 Aug 2018 17:23:33 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 22 Aug 2018 17:23:33 GMT
VOLUME [/opt/bonita]
# Wed, 22 Aug 2018 17:23:34 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Wed, 22 Aug 2018 17:23:51 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Wed, 22 Aug 2018 17:23:52 GMT
EXPOSE 8080/tcp
# Wed, 22 Aug 2018 17:23:52 GMT
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
	-	`sha256:6f6527719692a424e3f52a138874f1e1dab9d1e540c7fb84fa62a0d4ef8a2ab1`  
		Last Modified: Wed, 22 Aug 2018 17:24:41 GMT  
		Size: 500.7 KB (500743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356e8a2228b73038016f75eee557b968307b5821dafb1a81cc1c41d91191b0ef`  
		Last Modified: Wed, 22 Aug 2018 17:25:57 GMT  
		Size: 87.8 MB (87818928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981e3bbb7a3374bd062a614bcbd5bbebff36210fd819653a7a9e14bde8fb2ac1`  
		Last Modified: Wed, 22 Aug 2018 17:26:11 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16d2c276a218a4b900df1d034c3fc310b4bc43e85a18c9aa56f44fc06a11b55`  
		Last Modified: Wed, 22 Aug 2018 17:25:47 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `bonita:latest` - linux; arm64 variant v8

```console
$ docker pull bonita@sha256:e98e572b3acb1a85d1183e717880fce8da350b86544e6093953ce9f19bc90213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201336943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4d716e11cfddb4a6a279b03d7934994bc5adf7d1cfb558f308f674bbe34fad`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 27 Jul 2018 12:11:25 GMT
ADD file:245f919fbf2f9e8e80f0cf22884a2095e9f3ff0685bea98f2e8c5937553d2858 in / 
# Fri, 27 Jul 2018 12:11:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:11:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:11:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:11:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:11:33 GMT
CMD ["/bin/bash"]
# Fri, 10 Aug 2018 08:40:59 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 10 Aug 2018 08:43:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 10 Aug 2018 08:43:14 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 10 Aug 2018 08:43:17 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 10 Aug 2018 08:43:19 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 10 Aug 2018 08:43:25 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 10 Aug 2018 08:43:26 GMT
ARG BONITA_VERSION
# Fri, 10 Aug 2018 08:43:27 GMT
ARG TOMCAT_VERSION
# Fri, 10 Aug 2018 08:43:27 GMT
ARG BONITA_SHA256
# Fri, 10 Aug 2018 08:43:28 GMT
ARG BONITA_URL
# Fri, 10 Aug 2018 08:46:00 GMT
ENV BONITA_VERSION=7.7.3
# Fri, 10 Aug 2018 08:46:01 GMT
ENV TOMCAT_VERSION=8.5.31
# Fri, 10 Aug 2018 08:46:01 GMT
ENV BONITA_SHA256=a2c5c13359e90a99b143848b650be0cbee1b9bb6cfa9666904c123fc6d1e30a6
# Fri, 10 Aug 2018 08:46:02 GMT
ENV BONITA_URL=https://release.ow2.org/bonita/BonitaCommunity-7.7.3-Tomcat-8.5.31.zip
# Fri, 10 Aug 2018 08:47:47 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 10 Aug 2018 08:47:50 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 10 Aug 2018 08:47:53 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 10 Aug 2018 08:47:53 GMT
VOLUME [/opt/bonita]
# Fri, 10 Aug 2018 08:47:54 GMT
COPY dir:54e2aa3a901daf192e4916306de581c3b5abe3185f3c0ef0386107f80837ec74 in /opt/files 
# Fri, 10 Aug 2018 08:47:55 GMT
COPY dir:1549f33c9631f90a53a4bb891fea7f7da9a3032b4b950f47dd3d0f6bb486411c in /opt/templates 
# Fri, 10 Aug 2018 08:47:56 GMT
EXPOSE 8080/tcp
# Fri, 10 Aug 2018 08:47:57 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d84661bedcf328ca33c60337b0167cd51a34acd8ac083d03be2658e778e4a33`  
		Last Modified: Fri, 27 Jul 2018 12:15:26 GMT  
		Size: 39.4 MB (39361254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7952229f0c51008f9d2c699538f73c19313ff6adb1c7e774ff249ad90967e1b4`  
		Last Modified: Fri, 27 Jul 2018 12:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7c753d28831afc8b8b323117624887a02f818a6f7f76323b8573fa546e967f`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc39f7627e7eaa49ca5d50a7007d2e4f3187c797ac91e13e6560179ca5146d4d`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91ed830a826b5e867059f29069b2bf3f420c65fa8b0ded96ff077238b4f5810`  
		Last Modified: Fri, 27 Jul 2018 12:15:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1db55203a1be1bf276cd3d8d80d025fb0d502b2a20664e8cb036953ca10aed1`  
		Last Modified: Fri, 10 Aug 2018 08:49:13 GMT  
		Size: 73.5 MB (73534722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4a8f4d13dd8d193547fcecaa997a80822ed8bead62b43f22fcea2e0d29de1`  
		Last Modified: Fri, 10 Aug 2018 08:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5dc422935dc8c6a4d9ad8e159bed4b5a3a80f92e6e79ce3ec61731a0e87458`  
		Last Modified: Fri, 10 Aug 2018 08:48:37 GMT  
		Size: 2.1 KB (2052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423c1593cec9624efa0b738e7c8f3dd89813242220075139b0378099a7577425`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 140.6 KB (140584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdab2c7cbac28384132f09b22b31e1ea30bbdd9f8f9ceb0476542c92275d94b`  
		Last Modified: Fri, 10 Aug 2018 08:48:35 GMT  
		Size: 468.8 KB (468795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a27cd564954708676330b5c65796076b99e56a25f4d360047d1c48e305ccfd`  
		Last Modified: Fri, 10 Aug 2018 08:50:27 GMT  
		Size: 87.8 MB (87818925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01796eda8adf04d9662993d9f1505f441ba305428d5c1a279ffbe11fea49f476`  
		Last Modified: Fri, 10 Aug 2018 08:50:14 GMT  
		Size: 6.4 KB (6401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2085d091ed27db1587ada6e4fe98252735ab21f0a6fb8b63d48164a9d36157`  
		Last Modified: Fri, 10 Aug 2018 08:50:14 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
