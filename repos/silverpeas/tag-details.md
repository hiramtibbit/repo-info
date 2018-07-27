<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0`](#silverpeas60)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0`

```console
$ docker pull silverpeas@sha256:6738807c5d2f56c9155e30666114973be126c5bdfaa0062583638d4b9f9fabf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0` - linux; amd64

```console
$ docker pull silverpeas@sha256:23fc28f3d2422c32363f501bcffaf520aaf0b32244f6e45dca77e4ed06d977fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **989.6 MB (989628587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf958a0b75efd2ae07228becee4a6c8d4eb57e3c76d0d4c664e87c24c30e3d4c`
-	Default Command: `["\/opt\/run.sh"]`

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
# Thu, 26 Jul 2018 22:43:56 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Thu, 26 Jul 2018 22:43:56 GMT
ENV TERM=xterm
# Thu, 26 Jul 2018 22:47:44 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Thu, 26 Jul 2018 22:47:48 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Thu, 26 Jul 2018 22:47:53 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Thu, 26 Jul 2018 22:47:53 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:58 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Thu, 26 Jul 2018 22:47:58 GMT
ENV LANG=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:58 GMT
ENV LANGUAGE=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:58 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 26 Jul 2018 22:47:59 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Thu, 26 Jul 2018 22:47:59 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 26 Jul 2018 22:47:59 GMT
ENV SILVERPEAS_VERSION=6.0
# Thu, 26 Jul 2018 22:48:00 GMT
ENV WILDFLY_VERSION=10.1.0
# Thu, 26 Jul 2018 22:48:00 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0 build=1
# Thu, 26 Jul 2018 22:48:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Thu, 26 Jul 2018 22:48:17 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Thu, 26 Jul 2018 22:48:17 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 26 Jul 2018 22:48:17 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Thu, 26 Jul 2018 22:48:18 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Thu, 26 Jul 2018 22:52:55 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Thu, 26 Jul 2018 22:52:57 GMT
EXPOSE 8000/tcp 9990/tcp
# Thu, 26 Jul 2018 22:52:57 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Thu, 26 Jul 2018 22:52:58 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:388d19147bf1d6a5a71cac2fb3962caff4fcfa25b03faf1d73cbfb6f1460a918`  
		Last Modified: Thu, 26 Jul 2018 22:54:33 GMT  
		Size: 202.6 MB (202567652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddefe323543d0132d57ba57fc794b5ea44461a1a5e902aa89a82c1fe62cb614`  
		Last Modified: Thu, 26 Jul 2018 22:53:32 GMT  
		Size: 4.0 MB (3994027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd04d2aec480e1afe5f89100fc4cedd92f392592df8d9b848b89368aa79416cb`  
		Last Modified: Thu, 26 Jul 2018 22:53:32 GMT  
		Size: 7.1 MB (7146625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d981f3f4aa5e525b792c8a8486bf08b4601447f3a1c095b29c751ddb42ff02a`  
		Last Modified: Thu, 26 Jul 2018 22:53:29 GMT  
		Size: 845.4 KB (845413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09ebd614ed3aa332d9ac22e54a5d9b8c5f1038f2da3913c7bf0d7f79ffa898a`  
		Last Modified: Thu, 26 Jul 2018 22:53:46 GMT  
		Size: 144.3 MB (144294060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff55dbca3039d92ec63eda7e076a08c58cde39acc6c6420b682b1a92e8dddd59`  
		Last Modified: Thu, 26 Jul 2018 22:53:25 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c362147d6763e5629f3aa80111bd3e63f908774b88bb1c96fa7b1a238f8f2b0`  
		Last Modified: Thu, 26 Jul 2018 22:53:25 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3335285b092a60e6b2d4310de85e85600cfb270f3e0cc6c87eb98c38807b60a6`  
		Last Modified: Thu, 26 Jul 2018 22:53:25 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7ef58059b6c95ed11f28a91a08df563a2012a906571cb71b2f1189c724f47`  
		Last Modified: Thu, 26 Jul 2018 22:54:25 GMT  
		Size: 587.5 MB (587548077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:6738807c5d2f56c9155e30666114973be126c5bdfaa0062583638d4b9f9fabf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:23fc28f3d2422c32363f501bcffaf520aaf0b32244f6e45dca77e4ed06d977fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **989.6 MB (989628587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf958a0b75efd2ae07228becee4a6c8d4eb57e3c76d0d4c664e87c24c30e3d4c`
-	Default Command: `["\/opt\/run.sh"]`

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
# Thu, 26 Jul 2018 22:43:56 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Thu, 26 Jul 2018 22:43:56 GMT
ENV TERM=xterm
# Thu, 26 Jul 2018 22:47:44 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Thu, 26 Jul 2018 22:47:48 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Thu, 26 Jul 2018 22:47:53 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Thu, 26 Jul 2018 22:47:53 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:58 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Thu, 26 Jul 2018 22:47:58 GMT
ENV LANG=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:58 GMT
ENV LANGUAGE=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:58 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 26 Jul 2018 22:47:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 26 Jul 2018 22:47:59 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Thu, 26 Jul 2018 22:47:59 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 26 Jul 2018 22:47:59 GMT
ENV SILVERPEAS_VERSION=6.0
# Thu, 26 Jul 2018 22:48:00 GMT
ENV WILDFLY_VERSION=10.1.0
# Thu, 26 Jul 2018 22:48:00 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0 build=1
# Thu, 26 Jul 2018 22:48:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Thu, 26 Jul 2018 22:48:17 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Thu, 26 Jul 2018 22:48:17 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 26 Jul 2018 22:48:17 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Thu, 26 Jul 2018 22:48:18 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Thu, 26 Jul 2018 22:52:55 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Thu, 26 Jul 2018 22:52:57 GMT
EXPOSE 8000/tcp 9990/tcp
# Thu, 26 Jul 2018 22:52:57 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Thu, 26 Jul 2018 22:52:58 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:388d19147bf1d6a5a71cac2fb3962caff4fcfa25b03faf1d73cbfb6f1460a918`  
		Last Modified: Thu, 26 Jul 2018 22:54:33 GMT  
		Size: 202.6 MB (202567652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddefe323543d0132d57ba57fc794b5ea44461a1a5e902aa89a82c1fe62cb614`  
		Last Modified: Thu, 26 Jul 2018 22:53:32 GMT  
		Size: 4.0 MB (3994027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd04d2aec480e1afe5f89100fc4cedd92f392592df8d9b848b89368aa79416cb`  
		Last Modified: Thu, 26 Jul 2018 22:53:32 GMT  
		Size: 7.1 MB (7146625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d981f3f4aa5e525b792c8a8486bf08b4601447f3a1c095b29c751ddb42ff02a`  
		Last Modified: Thu, 26 Jul 2018 22:53:29 GMT  
		Size: 845.4 KB (845413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09ebd614ed3aa332d9ac22e54a5d9b8c5f1038f2da3913c7bf0d7f79ffa898a`  
		Last Modified: Thu, 26 Jul 2018 22:53:46 GMT  
		Size: 144.3 MB (144294060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff55dbca3039d92ec63eda7e076a08c58cde39acc6c6420b682b1a92e8dddd59`  
		Last Modified: Thu, 26 Jul 2018 22:53:25 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c362147d6763e5629f3aa80111bd3e63f908774b88bb1c96fa7b1a238f8f2b0`  
		Last Modified: Thu, 26 Jul 2018 22:53:25 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3335285b092a60e6b2d4310de85e85600cfb270f3e0cc6c87eb98c38807b60a6`  
		Last Modified: Thu, 26 Jul 2018 22:53:25 GMT  
		Size: 386.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7ef58059b6c95ed11f28a91a08df563a2012a906571cb71b2f1189c724f47`  
		Last Modified: Thu, 26 Jul 2018 22:54:25 GMT  
		Size: 587.5 MB (587548077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
