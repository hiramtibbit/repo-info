<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0.1`](#silverpeas601)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0.1`

```console
$ docker pull silverpeas@sha256:6ef299264598a36c51dc79b161071a51d1f1ac150f78774cdbcf6fb9fc012aaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:6.0.1` - linux; amd64

```console
$ docker pull silverpeas@sha256:43170a30e1c8f7e859e7990386c3a5ae7a59e1ac911ae945f1e5871f29b45966
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010201314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dc1aaa73df44f8bff7debec76dda5df359005bd104fa2579b53863a622b7e3`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:39:57 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 29 Dec 2018 00:39:57 GMT
ENV TERM=xterm
# Sat, 29 Dec 2018 00:41:34 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Sat, 29 Dec 2018 00:41:37 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Sat, 29 Dec 2018 00:41:39 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Sat, 29 Dec 2018 00:41:39 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Sat, 29 Dec 2018 00:41:42 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:42 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:42 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:43 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 00:41:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 00:41:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 00:41:44 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 29 Dec 2018 00:41:44 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 29 Dec 2018 00:41:44 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Sat, 29 Dec 2018 00:41:45 GMT
ENV WILDFLY_VERSION=10.1.0
# Sat, 29 Dec 2018 00:41:45 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Sat, 29 Dec 2018 00:44:12 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Sat, 29 Dec 2018 00:44:12 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Sat, 29 Dec 2018 00:44:12 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 29 Dec 2018 00:44:13 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Sat, 29 Dec 2018 00:44:13 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Sat, 29 Dec 2018 00:47:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Sat, 29 Dec 2018 00:47:33 GMT
EXPOSE 8000 9990
# Sat, 29 Dec 2018 00:47:33 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Sat, 29 Dec 2018 00:47:33 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f609d4d253bb635be0e93c8de63b33352223107ae0e314cbfa8cd5305822e94`  
		Last Modified: Sat, 29 Dec 2018 00:48:37 GMT  
		Size: 206.0 MB (205970543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcca4ad94ff4a0281d1a69cebbd3773a776b4cdef0a2d05e4bd000fcb388c53`  
		Last Modified: Sat, 29 Dec 2018 00:47:54 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdca7aee2540dd7273bd2b6cb36008547742f481c5e7b6cd4a688569ce5c3282`  
		Last Modified: Sat, 29 Dec 2018 00:47:54 GMT  
		Size: 7.1 MB (7146609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76f458ea780c20195adba5e7bcbb1a3b52e688c67dc201a479731cf55d50241`  
		Last Modified: Sat, 29 Dec 2018 00:47:52 GMT  
		Size: 845.4 KB (845418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5be7f6cc0891ac6e0967dddc95034aa08144f24f689e006ce421bb30af90db`  
		Last Modified: Sat, 29 Dec 2018 00:47:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1553af84ba1944d88b9b3d1e0cf547b2a43bb187c9ba573f9b77c9ead193ed6`  
		Last Modified: Sat, 29 Dec 2018 00:47:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2714c6dcef218471ae87e3b78c7e84c4e7b11e7151f65b1a681f5876bee614b0`  
		Last Modified: Sat, 29 Dec 2018 00:48:06 GMT  
		Size: 144.3 MB (144284224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d52f6e293598f1a72d81664cfa8fd32d816dbe67887be3a67426401f4f94b1b`  
		Last Modified: Sat, 29 Dec 2018 00:47:50 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257802ff946c0971554f3cabcf09a44360c469764f514b94451f33328bca1fb3`  
		Last Modified: Sat, 29 Dec 2018 00:47:49 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ade3400498119d629707461ea753c2f8ddea4c562acb5f4a28561d7a31ec46`  
		Last Modified: Sat, 29 Dec 2018 00:47:49 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46e96a9fece9ea16d32b6fb8bab4d77813acf1bf5e9148ff209441a40068753`  
		Last Modified: Sat, 29 Dec 2018 00:48:31 GMT  
		Size: 604.5 MB (604513998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `silverpeas:6.0.1` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:9c150823632346092008ab238dc39e2409a11e7b08170c3206392d96198f6cbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 MB (985647247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6d5aad87877298b5145afccd7b844066c1152c95f6ae1df48b96f88cb10004`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:37:51 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 29 Dec 2018 10:37:54 GMT
ENV TERM=xterm
# Sat, 29 Dec 2018 10:48:01 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Sat, 29 Dec 2018 10:48:09 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Sat, 29 Dec 2018 10:48:19 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Sat, 29 Dec 2018 10:48:20 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 29 Dec 2018 10:48:29 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Sat, 29 Dec 2018 10:48:30 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 10:48:31 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 29 Dec 2018 10:48:32 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 10:48:36 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:48:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:48:41 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:48:43 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 29 Dec 2018 10:48:43 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 29 Dec 2018 10:48:44 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Sat, 29 Dec 2018 10:48:45 GMT
ENV WILDFLY_VERSION=10.1.0
# Sat, 29 Dec 2018 10:48:46 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Sat, 29 Dec 2018 10:50:06 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Sat, 29 Dec 2018 10:50:12 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Sat, 29 Dec 2018 10:50:15 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 29 Dec 2018 10:50:17 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Sat, 29 Dec 2018 10:50:18 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Sat, 29 Dec 2018 10:54:59 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Sat, 29 Dec 2018 10:55:01 GMT
EXPOSE 8000 9990
# Sat, 29 Dec 2018 10:55:02 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Sat, 29 Dec 2018 10:55:03 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f6ea93ab3c88b4f46bfe152c732e20b8e033d05ae2e7a3cf8e39069beedb62`  
		Last Modified: Sat, 29 Dec 2018 10:56:30 GMT  
		Size: 185.4 MB (185369501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdeda0532472ace26ce54926f05b8d25dfd22bd1bde49e7c0695f7b576c03e`  
		Last Modified: Sat, 29 Dec 2018 10:55:29 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b780f18914db2b886ac248df29a441c9d1d0ff2ae2a35a03a8a204a3c9e75d`  
		Last Modified: Sat, 29 Dec 2018 10:55:29 GMT  
		Size: 7.1 MB (7146612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f09aa82f8d8126b0402c27e53209326aaac29039e9a6312e96e350fa057522b`  
		Last Modified: Sat, 29 Dec 2018 10:55:25 GMT  
		Size: 845.4 KB (845421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2744c58cd9b28b0ae2185395ad563e5ae85e0118508abedfa7b7d562650bac12`  
		Last Modified: Sat, 29 Dec 2018 10:55:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f494afcf16535dfdabc67e80770322b5cf45cbac9ba41a90e4fb9eab6b4f64f6`  
		Last Modified: Sat, 29 Dec 2018 10:55:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6babb1da6e25cbd925282acb8a6d0027485131929223a3909b36f3a61b4689`  
		Last Modified: Sat, 29 Dec 2018 10:55:48 GMT  
		Size: 144.3 MB (144284302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4167cff18beaef04602cbf9e2a4b2c8857a68742e69709fb69b35c51e4d62c68`  
		Last Modified: Sat, 29 Dec 2018 10:55:19 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d78f784963a3ef764fa35e9424fa00749cb95ac8a3d86c185d0bde1a3e75d5f`  
		Last Modified: Sat, 29 Dec 2018 10:55:19 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d35311c8dabe4d6da3c26e7d0b70e763205a2d02709679b5fbe5b7ac6f5eaf`  
		Last Modified: Sat, 29 Dec 2018 10:55:19 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6368ba0453ae743454ebc8a193361629ba3822b8bcd7d6cabaefa0dd2f20573`  
		Last Modified: Sat, 29 Dec 2018 10:56:49 GMT  
		Size: 604.5 MB (604496527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:e5542d16fdcf5833fea6f5e19c507be91b8bde8b45a8d630605210f123dfde3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:43170a30e1c8f7e859e7990386c3a5ae7a59e1ac911ae945f1e5871f29b45966
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010201314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dc1aaa73df44f8bff7debec76dda5df359005bd104fa2579b53863a622b7e3`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:39:57 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Sat, 29 Dec 2018 00:39:57 GMT
ENV TERM=xterm
# Sat, 29 Dec 2018 00:41:34 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Sat, 29 Dec 2018 00:41:37 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Sat, 29 Dec 2018 00:41:39 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Sat, 29 Dec 2018 00:41:39 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Sat, 29 Dec 2018 00:41:42 GMT
ENV LANG=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:42 GMT
ENV LANGUAGE=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:42 GMT
ENV LC_ALL=en_US.UTF-8
# Sat, 29 Dec 2018 00:41:43 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 00:41:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 00:41:44 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 00:41:44 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Sat, 29 Dec 2018 00:41:44 GMT
ENV JBOSS_HOME=/opt/wildfly
# Sat, 29 Dec 2018 00:41:44 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Sat, 29 Dec 2018 00:41:45 GMT
ENV WILDFLY_VERSION=10.1.0
# Sat, 29 Dec 2018 00:41:45 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Sat, 29 Dec 2018 00:44:12 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Sat, 29 Dec 2018 00:44:12 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Sat, 29 Dec 2018 00:44:12 GMT
WORKDIR /opt/silverpeas/bin
# Sat, 29 Dec 2018 00:44:13 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Sat, 29 Dec 2018 00:44:13 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Sat, 29 Dec 2018 00:47:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Sat, 29 Dec 2018 00:47:33 GMT
EXPOSE 8000 9990
# Sat, 29 Dec 2018 00:47:33 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Sat, 29 Dec 2018 00:47:33 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f609d4d253bb635be0e93c8de63b33352223107ae0e314cbfa8cd5305822e94`  
		Last Modified: Sat, 29 Dec 2018 00:48:37 GMT  
		Size: 206.0 MB (205970543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcca4ad94ff4a0281d1a69cebbd3773a776b4cdef0a2d05e4bd000fcb388c53`  
		Last Modified: Sat, 29 Dec 2018 00:47:54 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdca7aee2540dd7273bd2b6cb36008547742f481c5e7b6cd4a688569ce5c3282`  
		Last Modified: Sat, 29 Dec 2018 00:47:54 GMT  
		Size: 7.1 MB (7146609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76f458ea780c20195adba5e7bcbb1a3b52e688c67dc201a479731cf55d50241`  
		Last Modified: Sat, 29 Dec 2018 00:47:52 GMT  
		Size: 845.4 KB (845418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5be7f6cc0891ac6e0967dddc95034aa08144f24f689e006ce421bb30af90db`  
		Last Modified: Sat, 29 Dec 2018 00:47:51 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1553af84ba1944d88b9b3d1e0cf547b2a43bb187c9ba573f9b77c9ead193ed6`  
		Last Modified: Sat, 29 Dec 2018 00:47:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2714c6dcef218471ae87e3b78c7e84c4e7b11e7151f65b1a681f5876bee614b0`  
		Last Modified: Sat, 29 Dec 2018 00:48:06 GMT  
		Size: 144.3 MB (144284224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d52f6e293598f1a72d81664cfa8fd32d816dbe67887be3a67426401f4f94b1b`  
		Last Modified: Sat, 29 Dec 2018 00:47:50 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257802ff946c0971554f3cabcf09a44360c469764f514b94451f33328bca1fb3`  
		Last Modified: Sat, 29 Dec 2018 00:47:49 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ade3400498119d629707461ea753c2f8ddea4c562acb5f4a28561d7a31ec46`  
		Last Modified: Sat, 29 Dec 2018 00:47:49 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46e96a9fece9ea16d32b6fb8bab4d77813acf1bf5e9148ff209441a40068753`  
		Last Modified: Sat, 29 Dec 2018 00:48:31 GMT  
		Size: 604.5 MB (604513998 bytes)  
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
