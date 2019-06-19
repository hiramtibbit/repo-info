<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0.1`](#silverpeas601)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0.1`

```console
$ docker pull silverpeas@sha256:675cfc57f7268f716a9425bddc88ba9e54c3fa37d92b07eb76946fe93e868ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:6.0.1` - linux; amd64

```console
$ docker pull silverpeas@sha256:359a410f54d77d2bef18e8ca0b0e5cfba212d6731491128baac59c883f913285
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010532191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0de23db0ae1359985f03b3e3932e976d24af5978d696faf6696a6d1087b9da`
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
# Wed, 19 Jun 2019 02:31:41 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Wed, 19 Jun 2019 02:31:41 GMT
ENV WILDFLY_VERSION=10.1.0
# Wed, 19 Jun 2019 02:31:42 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Wed, 19 Jun 2019 02:32:27 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Wed, 19 Jun 2019 02:32:27 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Wed, 19 Jun 2019 02:32:27 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 19 Jun 2019 02:32:28 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Wed, 19 Jun 2019 02:32:28 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Wed, 19 Jun 2019 02:35:11 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Wed, 19 Jun 2019 02:35:12 GMT
EXPOSE 8000 9990
# Wed, 19 Jun 2019 02:35:12 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Wed, 19 Jun 2019 02:35:12 GMT
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
	-	`sha256:4b350b719d2dc5a84501e9e9a54854638a06e3eb6c909fc489ae8c2850eea489`  
		Last Modified: Wed, 19 Jun 2019 02:35:48 GMT  
		Size: 144.3 MB (144284439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ed04c8ce86ce7ae5528ff243f86ece4ed7e0efc1cc5825e779af44a1c9fc7b`  
		Last Modified: Wed, 19 Jun 2019 02:35:34 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4aa92cbac1a6eaa2b201237d206d42f8c2a4f51fb121053381dfe38aea00d`  
		Last Modified: Wed, 19 Jun 2019 02:35:34 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70832500be2891f0537f4c9169b607dec255d6ff7c00db56f65ea0d5e6138c40`  
		Last Modified: Wed, 19 Jun 2019 02:35:34 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7553ad705e9e696fe41e7e67942f4d8c77ab6e1e7f21c05be1a870843fab8eae`  
		Last Modified: Wed, 19 Jun 2019 02:36:17 GMT  
		Size: 604.5 MB (604517972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `silverpeas:6.0.1` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:e31d7247f724e862677f5b26f987616e60d0533be57448b61f7ac6d3f3897a46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **988.0 MB (987967074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53fdc7e4e7488b6590267eca8d8f3a4ec4fb6bd48de691a3e0a143317aa8537`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:10:57 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Jun 2019 22:10:57 GMT
ENV TERM=xterm
# Tue, 18 Jun 2019 22:13:30 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 18 Jun 2019 22:13:38 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 18 Jun 2019 22:13:43 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 18 Jun 2019 22:13:44 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 18 Jun 2019 22:13:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:49 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:49 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Jun 2019 22:13:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 18 Jun 2019 22:13:52 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Jun 2019 22:13:53 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Jun 2019 22:13:53 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Jun 2019 22:13:54 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Tue, 18 Jun 2019 22:13:54 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 18 Jun 2019 22:13:54 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Tue, 18 Jun 2019 22:14:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 18 Jun 2019 22:14:42 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Tue, 18 Jun 2019 22:14:43 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Jun 2019 22:14:43 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Tue, 18 Jun 2019 22:14:44 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 18 Jun 2019 22:19:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 18 Jun 2019 22:19:35 GMT
EXPOSE 8000 9990
# Tue, 18 Jun 2019 22:19:36 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Jun 2019 22:19:36 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136055c155546071fd748e4527f147411c42d78ebe171ad555616013ad1f9940`  
		Last Modified: Tue, 18 Jun 2019 22:21:08 GMT  
		Size: 187.4 MB (187402707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243daba9db0d996f8ac1a9a49ab7bb4ddb168602daa26fc0ebc3bac34edd913c`  
		Last Modified: Tue, 18 Jun 2019 22:20:07 GMT  
		Size: 4.0 MB (3994087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5193566b99b32d776979c42c0d555f38a3070857715ccdb32624342687e39df`  
		Last Modified: Tue, 18 Jun 2019 22:20:00 GMT  
		Size: 7.1 MB (7146640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6241ee38c432d793d5ad0276d90c2b3065c6427d7b01f2086d93bacbc702da7f`  
		Last Modified: Tue, 18 Jun 2019 22:20:01 GMT  
		Size: 845.4 KB (845407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f34652b72ec2c71d57b1d7e463051d860745199e05acad37230c892e5561c2`  
		Last Modified: Tue, 18 Jun 2019 22:19:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf36c932fd31b2deea724aa40721597c0874796279c50b8d555bcc5001aa03a`  
		Last Modified: Tue, 18 Jun 2019 22:19:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59063b58f89a5a20b4487c14c0855b8f586d563617de68f2bfddc5bd3bda2861`  
		Last Modified: Tue, 18 Jun 2019 22:20:23 GMT  
		Size: 144.3 MB (144284652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401d2096573df0f914132e774e1fb53ab4e3c01b6725ebd0472ba32af87cb177`  
		Last Modified: Tue, 18 Jun 2019 22:19:53 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6713a495d31f5e8821b734b4c1d7471e4b2fec4584dddfa5936fb8e2de4cd0`  
		Last Modified: Tue, 18 Jun 2019 22:19:53 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81cd633fef195838f56099137537a2e8674096a70f6c3405023ee6599ae0be`  
		Last Modified: Tue, 18 Jun 2019 22:19:53 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf5e36b195fcf20e981eb9b85c3b15f931484fe673c214a5153d66a6973bab4`  
		Last Modified: Tue, 18 Jun 2019 22:24:21 GMT  
		Size: 604.5 MB (604499144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:675cfc57f7268f716a9425bddc88ba9e54c3fa37d92b07eb76946fe93e868ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:359a410f54d77d2bef18e8ca0b0e5cfba212d6731491128baac59c883f913285
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010532191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0de23db0ae1359985f03b3e3932e976d24af5978d696faf6696a6d1087b9da`
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
# Wed, 19 Jun 2019 02:31:41 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Wed, 19 Jun 2019 02:31:41 GMT
ENV WILDFLY_VERSION=10.1.0
# Wed, 19 Jun 2019 02:31:42 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Wed, 19 Jun 2019 02:32:27 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Wed, 19 Jun 2019 02:32:27 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Wed, 19 Jun 2019 02:32:27 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 19 Jun 2019 02:32:28 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Wed, 19 Jun 2019 02:32:28 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Wed, 19 Jun 2019 02:35:11 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Wed, 19 Jun 2019 02:35:12 GMT
EXPOSE 8000 9990
# Wed, 19 Jun 2019 02:35:12 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Wed, 19 Jun 2019 02:35:12 GMT
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
	-	`sha256:4b350b719d2dc5a84501e9e9a54854638a06e3eb6c909fc489ae8c2850eea489`  
		Last Modified: Wed, 19 Jun 2019 02:35:48 GMT  
		Size: 144.3 MB (144284439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ed04c8ce86ce7ae5528ff243f86ece4ed7e0efc1cc5825e779af44a1c9fc7b`  
		Last Modified: Wed, 19 Jun 2019 02:35:34 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b4aa92cbac1a6eaa2b201237d206d42f8c2a4f51fb121053381dfe38aea00d`  
		Last Modified: Wed, 19 Jun 2019 02:35:34 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70832500be2891f0537f4c9169b607dec255d6ff7c00db56f65ea0d5e6138c40`  
		Last Modified: Wed, 19 Jun 2019 02:35:34 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7553ad705e9e696fe41e7e67942f4d8c77ab6e1e7f21c05be1a870843fab8eae`  
		Last Modified: Wed, 19 Jun 2019 02:36:17 GMT  
		Size: 604.5 MB (604517972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `silverpeas:latest` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:e31d7247f724e862677f5b26f987616e60d0533be57448b61f7ac6d3f3897a46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **988.0 MB (987967074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f53fdc7e4e7488b6590267eca8d8f3a4ec4fb6bd48de691a3e0a143317aa8537`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:10:57 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 18 Jun 2019 22:10:57 GMT
ENV TERM=xterm
# Tue, 18 Jun 2019 22:13:30 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 18 Jun 2019 22:13:38 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 18 Jun 2019 22:13:43 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 18 Jun 2019 22:13:44 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 18 Jun 2019 22:13:49 GMT
ENV LANG=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:49 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:49 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 18 Jun 2019 22:13:51 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Jun 2019 22:13:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 18 Jun 2019 22:13:52 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 18 Jun 2019 22:13:53 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 18 Jun 2019 22:13:53 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 18 Jun 2019 22:13:54 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Tue, 18 Jun 2019 22:13:54 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 18 Jun 2019 22:13:54 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Tue, 18 Jun 2019 22:14:41 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 18 Jun 2019 22:14:42 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Tue, 18 Jun 2019 22:14:43 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 18 Jun 2019 22:14:43 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Tue, 18 Jun 2019 22:14:44 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 18 Jun 2019 22:19:32 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 18 Jun 2019 22:19:35 GMT
EXPOSE 8000 9990
# Tue, 18 Jun 2019 22:19:36 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 18 Jun 2019 22:19:36 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136055c155546071fd748e4527f147411c42d78ebe171ad555616013ad1f9940`  
		Last Modified: Tue, 18 Jun 2019 22:21:08 GMT  
		Size: 187.4 MB (187402707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243daba9db0d996f8ac1a9a49ab7bb4ddb168602daa26fc0ebc3bac34edd913c`  
		Last Modified: Tue, 18 Jun 2019 22:20:07 GMT  
		Size: 4.0 MB (3994087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5193566b99b32d776979c42c0d555f38a3070857715ccdb32624342687e39df`  
		Last Modified: Tue, 18 Jun 2019 22:20:00 GMT  
		Size: 7.1 MB (7146640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6241ee38c432d793d5ad0276d90c2b3065c6427d7b01f2086d93bacbc702da7f`  
		Last Modified: Tue, 18 Jun 2019 22:20:01 GMT  
		Size: 845.4 KB (845407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f34652b72ec2c71d57b1d7e463051d860745199e05acad37230c892e5561c2`  
		Last Modified: Tue, 18 Jun 2019 22:19:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf36c932fd31b2deea724aa40721597c0874796279c50b8d555bcc5001aa03a`  
		Last Modified: Tue, 18 Jun 2019 22:19:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59063b58f89a5a20b4487c14c0855b8f586d563617de68f2bfddc5bd3bda2861`  
		Last Modified: Tue, 18 Jun 2019 22:20:23 GMT  
		Size: 144.3 MB (144284652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401d2096573df0f914132e774e1fb53ab4e3c01b6725ebd0472ba32af87cb177`  
		Last Modified: Tue, 18 Jun 2019 22:19:53 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6713a495d31f5e8821b734b4c1d7471e4b2fec4584dddfa5936fb8e2de4cd0`  
		Last Modified: Tue, 18 Jun 2019 22:19:53 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e81cd633fef195838f56099137537a2e8674096a70f6c3405023ee6599ae0be`  
		Last Modified: Tue, 18 Jun 2019 22:19:53 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf5e36b195fcf20e981eb9b85c3b15f931484fe673c214a5153d66a6973bab4`  
		Last Modified: Tue, 18 Jun 2019 22:24:21 GMT  
		Size: 604.5 MB (604499144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
