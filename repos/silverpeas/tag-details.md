<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0.1`](#silverpeas601)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0.1`

```console
$ docker pull silverpeas@sha256:7a47d0edbcf11f2729b97aa3b73b80a6010501c05d11d5f399be8d63327c9e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:6.0.1` - linux; amd64

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

### `silverpeas:6.0.1` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:ebc60dff471eec7135954f47702440872b05ae01a50be5d748f351bfcb497f28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.5 MB (984489336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7f8c11d24e07b43d67c95565598099175d4cefd146e6db494c3ac6706be07d`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 20 Nov 2018 11:27:36 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 20 Nov 2018 11:27:37 GMT
ENV TERM=xterm
# Tue, 20 Nov 2018 11:36:29 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 20 Nov 2018 11:36:36 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 20 Nov 2018 11:36:42 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 20 Nov 2018 11:36:43 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 20 Nov 2018 11:36:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 20 Nov 2018 11:36:58 GMT
ENV LANG=en_US.UTF-8
# Tue, 20 Nov 2018 11:36:59 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 20 Nov 2018 11:37:03 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 20 Nov 2018 11:37:07 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Nov 2018 11:37:10 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Nov 2018 11:37:12 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Nov 2018 11:37:13 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 20 Nov 2018 11:37:14 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 20 Nov 2018 11:37:15 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Tue, 20 Nov 2018 11:37:16 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 20 Nov 2018 11:37:17 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Tue, 20 Nov 2018 11:37:37 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 20 Nov 2018 11:37:39 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Tue, 20 Nov 2018 11:37:41 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 20 Nov 2018 11:37:42 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Tue, 20 Nov 2018 11:37:44 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 20 Nov 2018 11:41:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 20 Nov 2018 11:41:51 GMT
EXPOSE 8000/tcp 9990/tcp
# Tue, 20 Nov 2018 11:41:54 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 20 Nov 2018 11:41:56 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:a2b53bd0006ebf9baa7cd184d5978b28051998ce2f360de955dc75b7e430e18d`  
		Last Modified: Tue, 20 Nov 2018 11:43:29 GMT  
		Size: 184.1 MB (184093216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dee6d2dfa0c14f470499ea7f1c8d082d44e547112ebc3fcec62d3a8c55aa7e`  
		Last Modified: Tue, 20 Nov 2018 11:42:33 GMT  
		Size: 4.0 MB (3994028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1091673b28c52cd5ff311592841cb8271b5b25631243f6157f374910869a5d`  
		Last Modified: Tue, 20 Nov 2018 11:42:34 GMT  
		Size: 7.1 MB (7146613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a246f4676dbb2d243f3125bcedd80af37a75639f0176dfdb9dfc113ccc3f4f`  
		Last Modified: Tue, 20 Nov 2018 11:42:30 GMT  
		Size: 845.4 KB (845416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f00166b6eab125c4e0146acd83cae6abcaa94ee8934808794acf7e9f504519`  
		Last Modified: Tue, 20 Nov 2018 11:42:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84266875eb48890bb2f10ae6c276f26dc4eb8d53d5cd41339018e7f1cfd4a433`  
		Last Modified: Tue, 20 Nov 2018 11:42:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd563741377c53ad8dd41e03e3d981364547594c426c3842fcaf5907b9544c1`  
		Last Modified: Tue, 20 Nov 2018 11:42:50 GMT  
		Size: 144.3 MB (144294361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e50e29780d88974f28cc05d9ed3a5355a33b0a8a0690da976db8b195759794`  
		Last Modified: Tue, 20 Nov 2018 11:42:27 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e5d01ff300270a6f972429fd77419cac561ae3a16d00285b353bc7c4765531`  
		Last Modified: Tue, 20 Nov 2018 11:42:26 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e68809802ca3a5e67f1e23c0ae1f779487b0dc11f8f9fbdeeeb2f511081f1d`  
		Last Modified: Tue, 20 Nov 2018 11:42:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d9726665e2e7f71d2295a9e7aed4dbf91e84be139462ef26d8e462a9249f3`  
		Last Modified: Tue, 20 Nov 2018 11:43:47 GMT  
		Size: 604.6 MB (604629707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:7a47d0edbcf11f2729b97aa3b73b80a6010501c05d11d5f399be8d63327c9e83
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
$ docker pull silverpeas@sha256:ebc60dff471eec7135954f47702440872b05ae01a50be5d748f351bfcb497f28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **984.5 MB (984489336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c7f8c11d24e07b43d67c95565598099175d4cefd146e6db494c3ac6706be07d`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 20 Nov 2018 11:27:36 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 20 Nov 2018 11:27:37 GMT
ENV TERM=xterm
# Tue, 20 Nov 2018 11:36:29 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 20 Nov 2018 11:36:36 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 20 Nov 2018 11:36:42 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 20 Nov 2018 11:36:43 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 20 Nov 2018 11:36:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 20 Nov 2018 11:36:58 GMT
ENV LANG=en_US.UTF-8
# Tue, 20 Nov 2018 11:36:59 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 20 Nov 2018 11:37:03 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 20 Nov 2018 11:37:07 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Nov 2018 11:37:10 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 20 Nov 2018 11:37:12 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Nov 2018 11:37:13 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 20 Nov 2018 11:37:14 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 20 Nov 2018 11:37:15 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Tue, 20 Nov 2018 11:37:16 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 20 Nov 2018 11:37:17 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Tue, 20 Nov 2018 11:37:37 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 20 Nov 2018 11:37:39 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Tue, 20 Nov 2018 11:37:41 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 20 Nov 2018 11:37:42 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Tue, 20 Nov 2018 11:37:44 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 20 Nov 2018 11:41:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 20 Nov 2018 11:41:51 GMT
EXPOSE 8000/tcp 9990/tcp
# Tue, 20 Nov 2018 11:41:54 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 20 Nov 2018 11:41:56 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:a2b53bd0006ebf9baa7cd184d5978b28051998ce2f360de955dc75b7e430e18d`  
		Last Modified: Tue, 20 Nov 2018 11:43:29 GMT  
		Size: 184.1 MB (184093216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04dee6d2dfa0c14f470499ea7f1c8d082d44e547112ebc3fcec62d3a8c55aa7e`  
		Last Modified: Tue, 20 Nov 2018 11:42:33 GMT  
		Size: 4.0 MB (3994028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1091673b28c52cd5ff311592841cb8271b5b25631243f6157f374910869a5d`  
		Last Modified: Tue, 20 Nov 2018 11:42:34 GMT  
		Size: 7.1 MB (7146613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a246f4676dbb2d243f3125bcedd80af37a75639f0176dfdb9dfc113ccc3f4f`  
		Last Modified: Tue, 20 Nov 2018 11:42:30 GMT  
		Size: 845.4 KB (845416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f00166b6eab125c4e0146acd83cae6abcaa94ee8934808794acf7e9f504519`  
		Last Modified: Tue, 20 Nov 2018 11:42:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84266875eb48890bb2f10ae6c276f26dc4eb8d53d5cd41339018e7f1cfd4a433`  
		Last Modified: Tue, 20 Nov 2018 11:42:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd563741377c53ad8dd41e03e3d981364547594c426c3842fcaf5907b9544c1`  
		Last Modified: Tue, 20 Nov 2018 11:42:50 GMT  
		Size: 144.3 MB (144294361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e50e29780d88974f28cc05d9ed3a5355a33b0a8a0690da976db8b195759794`  
		Last Modified: Tue, 20 Nov 2018 11:42:27 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e5d01ff300270a6f972429fd77419cac561ae3a16d00285b353bc7c4765531`  
		Last Modified: Tue, 20 Nov 2018 11:42:26 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e68809802ca3a5e67f1e23c0ae1f779487b0dc11f8f9fbdeeeb2f511081f1d`  
		Last Modified: Tue, 20 Nov 2018 11:42:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d9726665e2e7f71d2295a9e7aed4dbf91e84be139462ef26d8e462a9249f3`  
		Last Modified: Tue, 20 Nov 2018 11:43:47 GMT  
		Size: 604.6 MB (604629707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
