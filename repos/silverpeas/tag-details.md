<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0.2`](#silverpeas602)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0.2`

```console
$ docker pull silverpeas@sha256:8c97dcd96777cdb3250a79ceab8ac136a35bc8aec36bb11e3dab7ff10ae2e1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0.2` - linux; amd64

```console
$ docker pull silverpeas@sha256:78fbef3f0c42aaff88aa84d1b6b5022b3021ba6256193f45f30d0cc818bdd273
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010709983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c0dcc1e6e9e49c9051d5522884525d2acf27fa9bee3d22fa377df0e3543351`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:28:12 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 19 Jun 2019 02:28:12 GMT
ENV TERM=xterm
# Wed, 19 Jun 2019 02:31:30 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Wed, 19 Jun 2019 02:31:33 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Wed, 19 Jun 2019 02:31:35 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Wed, 19 Jun 2019 02:31:36 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:39 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Wed, 19 Jun 2019 02:31:39 GMT
ENV LANG=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:39 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:39 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 19 Jun 2019 02:31:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 19 Jun 2019 02:31:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jun 2019 02:31:41 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 19 Jun 2019 02:31:41 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 20 Jun 2019 20:22:39 GMT
ENV SILVERPEAS_VERSION=6.0.2
# Thu, 20 Jun 2019 20:22:40 GMT
ENV WILDFLY_VERSION=10.1.0
# Thu, 20 Jun 2019 20:22:40 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.2 build=1
# Thu, 20 Jun 2019 20:22:55 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Thu, 20 Jun 2019 20:22:55 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Thu, 20 Jun 2019 20:22:55 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 20 Jun 2019 20:22:56 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Thu, 20 Jun 2019 20:22:56 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Thu, 20 Jun 2019 20:25:35 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Thu, 20 Jun 2019 20:25:36 GMT
EXPOSE 8000 9990
# Thu, 20 Jun 2019 20:25:36 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Thu, 20 Jun 2019 20:25:36 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f7f6cf4ddefd9866711a15794d947ce6e101ca2b227b5539320b135a19c0dd`  
		Last Modified: Wed, 19 Jun 2019 02:36:15 GMT  
		Size: 205.9 MB (205902450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0272b26ea6123a365cc06116d365c68aa9d993fd9c3f94e96befde1aabafae4`  
		Last Modified: Wed, 19 Jun 2019 02:35:37 GMT  
		Size: 4.0 MB (3994022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d659625fada3dbc2d986d75294f588fc1c672e713998a73994bcc804c2d5a400`  
		Last Modified: Wed, 19 Jun 2019 02:35:38 GMT  
		Size: 7.1 MB (7146611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb46c905862a70669799868b5fec5a318972ea1f949b5f905c1f761a55b48547`  
		Last Modified: Wed, 19 Jun 2019 02:35:35 GMT  
		Size: 845.4 KB (845426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d37d6c9dca929e33ab6b6d89c43a38449bbb0d3bf61aea51df50a048dcb1bc`  
		Last Modified: Wed, 19 Jun 2019 02:35:35 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aa635257a3cdd8023f38b3c11bb6b6f710b495741f54d153ca858eb2208c4c`  
		Last Modified: Wed, 19 Jun 2019 02:35:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d91e0a6045a33236362194487ff69e252d4183dccb24dc33781358384834d30`  
		Last Modified: Thu, 20 Jun 2019 20:26:11 GMT  
		Size: 144.3 MB (144284446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7114f84a4d16d156ce3a9201212d103781baebd6aa313453166537b83c74a4a`  
		Last Modified: Thu, 20 Jun 2019 20:25:57 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fbbd9901d4051a366df8df7bedaa65690ba327abbd2f2efb069a06ea833c54`  
		Last Modified: Thu, 20 Jun 2019 20:25:57 GMT  
		Size: 806.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840ac04604edeb01bcbda06290f4676318ba33a66f3c4e53cb35d9261b185fbb`  
		Last Modified: Thu, 20 Jun 2019 20:25:57 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688b8ddc5c35eef48b320096cdf1bed36cbf9fc4f82b8705ba42c739a9fdb68b`  
		Last Modified: Thu, 20 Jun 2019 20:26:41 GMT  
		Size: 604.7 MB (604695770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:8c97dcd96777cdb3250a79ceab8ac136a35bc8aec36bb11e3dab7ff10ae2e1b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:78fbef3f0c42aaff88aa84d1b6b5022b3021ba6256193f45f30d0cc818bdd273
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010709983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c0dcc1e6e9e49c9051d5522884525d2acf27fa9bee3d22fa377df0e3543351`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:28:12 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 19 Jun 2019 02:28:12 GMT
ENV TERM=xterm
# Wed, 19 Jun 2019 02:31:30 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Wed, 19 Jun 2019 02:31:33 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Wed, 19 Jun 2019 02:31:35 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Wed, 19 Jun 2019 02:31:36 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:39 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Wed, 19 Jun 2019 02:31:39 GMT
ENV LANG=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:39 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:39 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 19 Jun 2019 02:31:40 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 19 Jun 2019 02:31:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 19 Jun 2019 02:31:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jun 2019 02:31:41 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 19 Jun 2019 02:31:41 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 20 Jun 2019 20:22:39 GMT
ENV SILVERPEAS_VERSION=6.0.2
# Thu, 20 Jun 2019 20:22:40 GMT
ENV WILDFLY_VERSION=10.1.0
# Thu, 20 Jun 2019 20:22:40 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.2 build=1
# Thu, 20 Jun 2019 20:22:55 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Thu, 20 Jun 2019 20:22:55 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Thu, 20 Jun 2019 20:22:55 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 20 Jun 2019 20:22:56 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Thu, 20 Jun 2019 20:22:56 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Thu, 20 Jun 2019 20:25:35 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Thu, 20 Jun 2019 20:25:36 GMT
EXPOSE 8000 9990
# Thu, 20 Jun 2019 20:25:36 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Thu, 20 Jun 2019 20:25:36 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f7f6cf4ddefd9866711a15794d947ce6e101ca2b227b5539320b135a19c0dd`  
		Last Modified: Wed, 19 Jun 2019 02:36:15 GMT  
		Size: 205.9 MB (205902450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0272b26ea6123a365cc06116d365c68aa9d993fd9c3f94e96befde1aabafae4`  
		Last Modified: Wed, 19 Jun 2019 02:35:37 GMT  
		Size: 4.0 MB (3994022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d659625fada3dbc2d986d75294f588fc1c672e713998a73994bcc804c2d5a400`  
		Last Modified: Wed, 19 Jun 2019 02:35:38 GMT  
		Size: 7.1 MB (7146611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb46c905862a70669799868b5fec5a318972ea1f949b5f905c1f761a55b48547`  
		Last Modified: Wed, 19 Jun 2019 02:35:35 GMT  
		Size: 845.4 KB (845426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d37d6c9dca929e33ab6b6d89c43a38449bbb0d3bf61aea51df50a048dcb1bc`  
		Last Modified: Wed, 19 Jun 2019 02:35:35 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91aa635257a3cdd8023f38b3c11bb6b6f710b495741f54d153ca858eb2208c4c`  
		Last Modified: Wed, 19 Jun 2019 02:35:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d91e0a6045a33236362194487ff69e252d4183dccb24dc33781358384834d30`  
		Last Modified: Thu, 20 Jun 2019 20:26:11 GMT  
		Size: 144.3 MB (144284446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7114f84a4d16d156ce3a9201212d103781baebd6aa313453166537b83c74a4a`  
		Last Modified: Thu, 20 Jun 2019 20:25:57 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9fbbd9901d4051a366df8df7bedaa65690ba327abbd2f2efb069a06ea833c54`  
		Last Modified: Thu, 20 Jun 2019 20:25:57 GMT  
		Size: 806.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840ac04604edeb01bcbda06290f4676318ba33a66f3c4e53cb35d9261b185fbb`  
		Last Modified: Thu, 20 Jun 2019 20:25:57 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688b8ddc5c35eef48b320096cdf1bed36cbf9fc4f82b8705ba42c739a9fdb68b`  
		Last Modified: Thu, 20 Jun 2019 20:26:41 GMT  
		Size: 604.7 MB (604695770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
