## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:5ca4df868aa962ee2e9e0dce0cedb402e813e13736d06727b0b3750491ac137c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:267a4d63f0e684be73fefaee803d3bacf4bce2851c7faa2487f473637325b742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1009314055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44bd5e8a6255d3404e74ab44ba2b4c3b95213cfc6e6e2b8beefeb674d0fdb3`
-	Default Command: `["\/opt\/run.sh"]`

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
# Mon, 19 Nov 2018 22:58:57 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Mon, 19 Nov 2018 22:58:58 GMT
ENV TERM=xterm
# Mon, 19 Nov 2018 23:01:20 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Mon, 19 Nov 2018 23:01:23 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Mon, 19 Nov 2018 23:01:25 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Mon, 19 Nov 2018 23:01:26 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Mon, 19 Nov 2018 23:01:29 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Mon, 19 Nov 2018 23:01:29 GMT
ENV LANG=en_US.UTF-8
# Mon, 19 Nov 2018 23:01:29 GMT
ENV LANGUAGE=en_US.UTF-8
# Mon, 19 Nov 2018 23:01:30 GMT
ENV LC_ALL=en_US.UTF-8
# Mon, 19 Nov 2018 23:01:30 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Nov 2018 23:01:31 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 19 Nov 2018 23:01:32 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Nov 2018 23:01:32 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Mon, 19 Nov 2018 23:01:32 GMT
ENV JBOSS_HOME=/opt/wildfly
# Mon, 19 Nov 2018 23:01:32 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Mon, 19 Nov 2018 23:01:33 GMT
ENV WILDFLY_VERSION=10.1.0
# Mon, 19 Nov 2018 23:01:33 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Mon, 19 Nov 2018 23:01:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Mon, 19 Nov 2018 23:01:42 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Mon, 19 Nov 2018 23:01:42 GMT
WORKDIR /opt/silverpeas/bin
# Mon, 19 Nov 2018 23:01:43 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Mon, 19 Nov 2018 23:01:43 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Mon, 19 Nov 2018 23:04:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Mon, 19 Nov 2018 23:04:41 GMT
EXPOSE 8000/tcp 9990/tcp
# Mon, 19 Nov 2018 23:04:42 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Mon, 19 Nov 2018 23:04:42 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:730ef20bb4502ce166a42edf2f366d42f1ad2ac512602f45fe330de2f8141218`  
		Last Modified: Mon, 19 Nov 2018 23:06:46 GMT  
		Size: 205.0 MB (204976242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853a7ed408774366b268cbb4dd731f47e51e7c683af3e01178373253f7fc97f`  
		Last Modified: Mon, 19 Nov 2018 23:05:21 GMT  
		Size: 4.0 MB (3994024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10adb391237d5ef8ae00bfcb6a967353697bbc9d3f3005ae98cd8998d4ea29f0`  
		Last Modified: Mon, 19 Nov 2018 23:05:21 GMT  
		Size: 7.1 MB (7146612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a4b056904abb1e23345570c01e1acc7c5be2f036998ac7bbd0ac90445bc75b`  
		Last Modified: Mon, 19 Nov 2018 23:05:19 GMT  
		Size: 845.4 KB (845410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fdf2c2225034756ea69ccb38067a26dec14833e1e91a7a3a62f225ba2d8197`  
		Last Modified: Mon, 19 Nov 2018 23:05:18 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d13f7be143aadb29e516f66fe1b7d4c71e6b5babeaf6c78eba3bb67adef97df`  
		Last Modified: Mon, 19 Nov 2018 23:05:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051102f6ddcb478cf20c70ccb64096ab139e0dc5ec80cac531c3967beb22e59e`  
		Last Modified: Mon, 19 Nov 2018 23:05:45 GMT  
		Size: 144.3 MB (144294345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141783fac2b7f2cb6e3324a057bd8918543ebf79a7254d67a75671f284a9c631`  
		Last Modified: Mon, 19 Nov 2018 23:05:18 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602ba54686f02a6d2fd785c6c5551066fdb0991cfb13fdc824f5f36b08abb0ac`  
		Last Modified: Mon, 19 Nov 2018 23:05:17 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b9735c18ac69e4070e56f238c80e95d6cc4425592b0d6206b50e65acc7b42b`  
		Last Modified: Mon, 19 Nov 2018 23:05:17 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36ce4ac6f726e28cb66cc4abf017b87ae188c2566ac32b420c4d95a020811`  
		Last Modified: Mon, 19 Nov 2018 23:06:28 GMT  
		Size: 604.6 MB (604641641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `silverpeas:latest` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:26fa65ca4a7bd2ad774dd3dcb7372cfde750245cd41b4c950aed2c644eb3bcef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.4 MB (984418250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f867f4313b5ea2fad4c16ad2b6d5f661bd4c57e8c12d9b2b570b050804e3315`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:51:15 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 19 Oct 2018 13:51:16 GMT
ENV TERM=xterm
# Fri, 19 Oct 2018 14:00:59 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 19 Oct 2018 14:01:11 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 19 Oct 2018 14:01:19 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 19 Oct 2018 14:01:20 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 19 Oct 2018 14:01:30 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 19 Oct 2018 14:01:31 GMT
ENV LANG=en_US.UTF-8
# Fri, 19 Oct 2018 14:01:32 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 19 Oct 2018 14:01:33 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 19 Oct 2018 14:01:36 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 19 Oct 2018 14:01:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 19 Oct 2018 14:01:41 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 19 Oct 2018 14:01:42 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 19 Oct 2018 14:01:44 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 19 Oct 2018 14:01:44 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Fri, 19 Oct 2018 14:01:45 GMT
ENV WILDFLY_VERSION=10.1.0
# Fri, 19 Oct 2018 14:01:46 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Fri, 19 Oct 2018 14:02:16 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 19 Oct 2018 14:02:18 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Fri, 19 Oct 2018 14:02:19 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 19 Oct 2018 14:02:20 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Fri, 19 Oct 2018 14:02:21 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 19 Oct 2018 14:08:24 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Fri, 19 Oct 2018 14:08:27 GMT
EXPOSE 8000/tcp 9990/tcp
# Fri, 19 Oct 2018 14:08:29 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Fri, 19 Oct 2018 14:08:32 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d848915cf6ef9bbfddd740401f30b122d5a339d25f10ab32063e6bb75f62aa`  
		Last Modified: Fri, 19 Oct 2018 14:09:57 GMT  
		Size: 184.1 MB (184071088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84cdb99a4f7156f653aa480160b9173b64a6ba60191d300ab05ac9c12cb8119a`  
		Last Modified: Fri, 19 Oct 2018 14:08:59 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189fcaf4d8b00dea31f1c30e4272c31f669bc672f338250569628f4fa10f8b45`  
		Last Modified: Fri, 19 Oct 2018 14:09:00 GMT  
		Size: 7.1 MB (7146618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9be4e0c190f02e151366fc500c03c48fe49e4fdf005c992056afe66a2b1385`  
		Last Modified: Fri, 19 Oct 2018 14:08:55 GMT  
		Size: 845.4 KB (845437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c4b71d74fca2e074a4b93bb59c2ac9a7f6de1f88d6ac1af50c4cc049373ce8`  
		Last Modified: Fri, 19 Oct 2018 14:08:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3395de381bb360ecab14f42a5964c4cf71047ddd970cadf5e64c93c4864defd1`  
		Last Modified: Fri, 19 Oct 2018 14:08:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2188b438445d7008196ba69ed4008c6779710503b1810d8dee14344f8780d7`  
		Last Modified: Fri, 19 Oct 2018 14:09:15 GMT  
		Size: 144.3 MB (144294338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47f399f90bc97cc8dff5a3f7236ef837b11f0ca37f1bfc100feca2b17233eef`  
		Last Modified: Fri, 19 Oct 2018 14:08:52 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2e22592af4767f0d49fa5e334ea55072ffd44f333fed721f99cb489df3daa7`  
		Last Modified: Fri, 19 Oct 2018 14:08:52 GMT  
		Size: 810.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49bc568c932a46943c0d24a30b3815364cb4ba6e9807e53d2af619119ff7a2e`  
		Last Modified: Fri, 19 Oct 2018 14:08:52 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0de2665633287092301455e478f2ff095dbacda147dec921b44014872e9a5f`  
		Last Modified: Fri, 19 Oct 2018 14:10:21 GMT  
		Size: 604.6 MB (604630819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
