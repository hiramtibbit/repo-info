<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0.1`](#silverpeas601)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0.1`

```console
$ docker pull silverpeas@sha256:644d9ef3f8df0ec7da4d352a21211258db948af551c16cbfe0adef90656eeb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:6.0.1` - linux; amd64

```console
$ docker pull silverpeas@sha256:43c5063b0b350b2d815b2d632c230d2ae915e94a976708bfd3f2889e22954aac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010289084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4daa5bf92343c0bb4ffe54b264ab4a40086a1f553b2b3120251e5a1e86a8e9`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:41:05 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 12 Mar 2019 01:41:05 GMT
ENV TERM=xterm
# Tue, 12 Mar 2019 01:42:37 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 12 Mar 2019 01:42:40 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 12 Mar 2019 01:42:42 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 12 Mar 2019 01:42:42 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:46 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 12 Mar 2019 01:42:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:46 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:46 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:47 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Mar 2019 01:42:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Mar 2019 01:42:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Mar 2019 01:42:48 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 12 Mar 2019 01:42:48 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 12 Mar 2019 01:42:49 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Tue, 12 Mar 2019 01:42:49 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 12 Mar 2019 01:42:49 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Tue, 12 Mar 2019 01:42:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 12 Mar 2019 01:42:57 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Tue, 12 Mar 2019 01:42:57 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 12 Mar 2019 01:42:57 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Tue, 12 Mar 2019 01:42:57 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 12 Mar 2019 01:45:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 12 Mar 2019 01:45:53 GMT
EXPOSE 8000 9990
# Tue, 12 Mar 2019 01:45:53 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 12 Mar 2019 01:45:53 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e07c5f87dc64d48be57de2aec613d42140bf5f6d3274aa195e84a6557014c74`  
		Last Modified: Tue, 12 Mar 2019 01:46:56 GMT  
		Size: 205.9 MB (205940656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c35b479f527db4df3b4a8be4adfbdf9254eadc36611c67f8c587dc33247f30`  
		Last Modified: Tue, 12 Mar 2019 01:46:17 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d58e1888390323c6d777dd1306c1b34b6064f949eecff938398ffe6ddb6840`  
		Last Modified: Tue, 12 Mar 2019 01:46:17 GMT  
		Size: 7.1 MB (7146618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a06df8e902e0511ab8700df520139dd09bd7341bed233608fb7bb63a74a03af`  
		Last Modified: Tue, 12 Mar 2019 01:46:10 GMT  
		Size: 845.4 KB (845408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68ae46c8d299bdb40e4a1268096648cef7f757d409da897224a87141c5505bd`  
		Last Modified: Tue, 12 Mar 2019 01:46:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6ef0f2be014abdf88faa1c23c416805e9cc5f0d7cba1d479172fa0a547028a`  
		Last Modified: Tue, 12 Mar 2019 01:46:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c94c3a2f691206bfe8d446050af468f1f527b5ec5b4525dd7360bffc15447c`  
		Last Modified: Tue, 12 Mar 2019 01:46:44 GMT  
		Size: 144.3 MB (144284238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0a4a6b0819e65a667d66b60584f89b7b4956a30e2323e3033f6db3e7936e44`  
		Last Modified: Tue, 12 Mar 2019 01:46:09 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfd8d28ccc7636c8044f6ff9ee2acd1ad758ac7f94f294f75871a57aa3dd52`  
		Last Modified: Tue, 12 Mar 2019 01:46:09 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46722583560c74ba8dee46ed9b330754675cae2b7c3dca89fd128ae6827133f`  
		Last Modified: Tue, 12 Mar 2019 01:46:09 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e67f4b7561c5322865345a645542c3783a56d27640244afbc8f27b8d24bf80c`  
		Last Modified: Tue, 12 Mar 2019 01:46:57 GMT  
		Size: 604.5 MB (604513135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `silverpeas:6.0.1` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:eb862e21f2cc559de5af7a4c15ce9d56d3e23758dd895a2d53ace7b900adab3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.7 MB (985702024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d8a0e819360296a325f1e4e86cb7225af34378abac279717cf2cc294b09413`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:33:59 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 23 Jan 2019 10:33:59 GMT
ENV TERM=xterm
# Wed, 23 Jan 2019 10:44:10 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Wed, 23 Jan 2019 10:44:18 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Wed, 23 Jan 2019 10:44:24 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Wed, 23 Jan 2019 10:44:25 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Wed, 23 Jan 2019 10:44:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:46 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:48 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 10:44:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 10:44:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 10:44:58 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 23 Jan 2019 10:44:59 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 23 Jan 2019 10:45:00 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Wed, 23 Jan 2019 10:45:02 GMT
ENV WILDFLY_VERSION=10.1.0
# Wed, 23 Jan 2019 10:45:03 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Wed, 23 Jan 2019 10:46:45 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Wed, 23 Jan 2019 10:46:46 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Wed, 23 Jan 2019 10:46:47 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 23 Jan 2019 10:46:48 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Wed, 23 Jan 2019 10:46:49 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Wed, 23 Jan 2019 10:52:46 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Wed, 23 Jan 2019 10:52:54 GMT
EXPOSE 8000 9990
# Wed, 23 Jan 2019 10:52:55 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Wed, 23 Jan 2019 10:52:58 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987250cbe767f91255af62998373f48b4d97377bcd7fa298825bcaeb184776ca`  
		Last Modified: Wed, 23 Jan 2019 10:56:05 GMT  
		Size: 185.4 MB (185373527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acbfafa01df2d36d537ea57e37af88d57b46259f9d77cc6121b58a16cb3cd94`  
		Last Modified: Wed, 23 Jan 2019 10:53:21 GMT  
		Size: 4.0 MB (3994031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882932515498c0a2bbe3e693cd230a41a9bd91212682bece2dfe578ab783f993`  
		Last Modified: Wed, 23 Jan 2019 10:53:23 GMT  
		Size: 7.1 MB (7146624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcee00f3447b371236008ad7a0896da3689963fde4ce98483725284f2e1db8e3`  
		Last Modified: Wed, 23 Jan 2019 10:53:18 GMT  
		Size: 845.4 KB (845415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f49c6f596053a1406a33f7258557ede8df1482b7010dcc9f351332e596e92`  
		Last Modified: Wed, 23 Jan 2019 10:53:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8890ba4bdc5c2610f03ea6a9989aea3207b9ee5c8801d5be93160a49fbbdb3`  
		Last Modified: Wed, 23 Jan 2019 10:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8fec609344340d17e13b570b4263964734b8a2fdb7ab2f87cdfb2fc21cdbc5`  
		Last Modified: Wed, 23 Jan 2019 10:53:38 GMT  
		Size: 144.3 MB (144284305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432889c9c9800d37fbf9b4200039b9fa5d4ab81be604746efe5ecec0bcf8e347`  
		Last Modified: Wed, 23 Jan 2019 10:53:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0d935074b96ad48de90620106dc60d16e374011575fc5bff5cde2ceb790b3`  
		Last Modified: Wed, 23 Jan 2019 10:53:15 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972c91429d892090e51e170b07277aa39b7fece1520ec911d14ff9ecf30f8862`  
		Last Modified: Wed, 23 Jan 2019 10:53:16 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf3ac8f94009148cdf6965fe164cdac68923c9a40e21a156508de1c669c4bc0`  
		Last Modified: Wed, 23 Jan 2019 10:54:39 GMT  
		Size: 604.5 MB (604496462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:644d9ef3f8df0ec7da4d352a21211258db948af551c16cbfe0adef90656eeb17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:43c5063b0b350b2d815b2d632c230d2ae915e94a976708bfd3f2889e22954aac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1010289084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4daa5bf92343c0bb4ffe54b264ab4a40086a1f553b2b3120251e5a1e86a8e9`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:41:05 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 12 Mar 2019 01:41:05 GMT
ENV TERM=xterm
# Tue, 12 Mar 2019 01:42:37 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 12 Mar 2019 01:42:40 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 12 Mar 2019 01:42:42 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 12 Mar 2019 01:42:42 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:46 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 12 Mar 2019 01:42:46 GMT
ENV LANG=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:46 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:46 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 12 Mar 2019 01:42:47 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Mar 2019 01:42:48 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Mar 2019 01:42:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Mar 2019 01:42:48 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 12 Mar 2019 01:42:48 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 12 Mar 2019 01:42:49 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Tue, 12 Mar 2019 01:42:49 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 12 Mar 2019 01:42:49 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Tue, 12 Mar 2019 01:42:57 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 12 Mar 2019 01:42:57 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Tue, 12 Mar 2019 01:42:57 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 12 Mar 2019 01:42:57 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Tue, 12 Mar 2019 01:42:57 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Tue, 12 Mar 2019 01:45:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Tue, 12 Mar 2019 01:45:53 GMT
EXPOSE 8000 9990
# Tue, 12 Mar 2019 01:45:53 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Tue, 12 Mar 2019 01:45:53 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e07c5f87dc64d48be57de2aec613d42140bf5f6d3274aa195e84a6557014c74`  
		Last Modified: Tue, 12 Mar 2019 01:46:56 GMT  
		Size: 205.9 MB (205940656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c35b479f527db4df3b4a8be4adfbdf9254eadc36611c67f8c587dc33247f30`  
		Last Modified: Tue, 12 Mar 2019 01:46:17 GMT  
		Size: 4.0 MB (3994025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d58e1888390323c6d777dd1306c1b34b6064f949eecff938398ffe6ddb6840`  
		Last Modified: Tue, 12 Mar 2019 01:46:17 GMT  
		Size: 7.1 MB (7146618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a06df8e902e0511ab8700df520139dd09bd7341bed233608fb7bb63a74a03af`  
		Last Modified: Tue, 12 Mar 2019 01:46:10 GMT  
		Size: 845.4 KB (845408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68ae46c8d299bdb40e4a1268096648cef7f757d409da897224a87141c5505bd`  
		Last Modified: Tue, 12 Mar 2019 01:46:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6ef0f2be014abdf88faa1c23c416805e9cc5f0d7cba1d479172fa0a547028a`  
		Last Modified: Tue, 12 Mar 2019 01:46:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c94c3a2f691206bfe8d446050af468f1f527b5ec5b4525dd7360bffc15447c`  
		Last Modified: Tue, 12 Mar 2019 01:46:44 GMT  
		Size: 144.3 MB (144284238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0a4a6b0819e65a667d66b60584f89b7b4956a30e2323e3033f6db3e7936e44`  
		Last Modified: Tue, 12 Mar 2019 01:46:09 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfd8d28ccc7636c8044f6ff9ee2acd1ad758ac7f94f294f75871a57aa3dd52`  
		Last Modified: Tue, 12 Mar 2019 01:46:09 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46722583560c74ba8dee46ed9b330754675cae2b7c3dca89fd128ae6827133f`  
		Last Modified: Tue, 12 Mar 2019 01:46:09 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e67f4b7561c5322865345a645542c3783a56d27640244afbc8f27b8d24bf80c`  
		Last Modified: Tue, 12 Mar 2019 01:46:57 GMT  
		Size: 604.5 MB (604513135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `silverpeas:latest` - linux; arm64 variant v8

```console
$ docker pull silverpeas@sha256:eb862e21f2cc559de5af7a4c15ce9d56d3e23758dd895a2d53ace7b900adab3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.7 MB (985702024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d8a0e819360296a325f1e4e86cb7225af34378abac279717cf2cc294b09413`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:33:59 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 23 Jan 2019 10:33:59 GMT
ENV TERM=xterm
# Wed, 23 Jan 2019 10:44:10 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Wed, 23 Jan 2019 10:44:18 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Wed, 23 Jan 2019 10:44:24 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Wed, 23 Jan 2019 10:44:25 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Wed, 23 Jan 2019 10:44:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:46 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:48 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 23 Jan 2019 10:44:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 10:44:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 10:44:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 10:44:58 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 23 Jan 2019 10:44:59 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 23 Jan 2019 10:45:00 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Wed, 23 Jan 2019 10:45:02 GMT
ENV WILDFLY_VERSION=10.1.0
# Wed, 23 Jan 2019 10:45:03 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Wed, 23 Jan 2019 10:46:45 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Wed, 23 Jan 2019 10:46:46 GMT
COPY file:d12fb4c8fc28235c5621533a9ae0d98ba26e3adf1ffc690da4a6118aa71d8190 in /root/.m2/ 
# Wed, 23 Jan 2019 10:46:47 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 23 Jan 2019 10:46:48 GMT
COPY file:31e3db287bacfa9fb086f2ae49169410b9f0fdf4178bf47d0ebe93621aa996e4 in /opt/ 
# Wed, 23 Jan 2019 10:46:49 GMT
COPY file:5d883339e9add47c37406a038c7747cafede9f81436843206bab5bde7da6e2f6 in /opt/silverpeas/configuration/silverpeas/ 
# Wed, 23 Jan 2019 10:52:46 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Wed, 23 Jan 2019 10:52:54 GMT
EXPOSE 8000 9990
# Wed, 23 Jan 2019 10:52:55 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Wed, 23 Jan 2019 10:52:58 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987250cbe767f91255af62998373f48b4d97377bcd7fa298825bcaeb184776ca`  
		Last Modified: Wed, 23 Jan 2019 10:56:05 GMT  
		Size: 185.4 MB (185373527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acbfafa01df2d36d537ea57e37af88d57b46259f9d77cc6121b58a16cb3cd94`  
		Last Modified: Wed, 23 Jan 2019 10:53:21 GMT  
		Size: 4.0 MB (3994031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882932515498c0a2bbe3e693cd230a41a9bd91212682bece2dfe578ab783f993`  
		Last Modified: Wed, 23 Jan 2019 10:53:23 GMT  
		Size: 7.1 MB (7146624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcee00f3447b371236008ad7a0896da3689963fde4ce98483725284f2e1db8e3`  
		Last Modified: Wed, 23 Jan 2019 10:53:18 GMT  
		Size: 845.4 KB (845415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0f49c6f596053a1406a33f7258557ede8df1482b7010dcc9f351332e596e92`  
		Last Modified: Wed, 23 Jan 2019 10:53:17 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8890ba4bdc5c2610f03ea6a9989aea3207b9ee5c8801d5be93160a49fbbdb3`  
		Last Modified: Wed, 23 Jan 2019 10:53:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8fec609344340d17e13b570b4263964734b8a2fdb7ab2f87cdfb2fc21cdbc5`  
		Last Modified: Wed, 23 Jan 2019 10:53:38 GMT  
		Size: 144.3 MB (144284305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432889c9c9800d37fbf9b4200039b9fa5d4ab81be604746efe5ecec0bcf8e347`  
		Last Modified: Wed, 23 Jan 2019 10:53:16 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b0d935074b96ad48de90620106dc60d16e374011575fc5bff5cde2ceb790b3`  
		Last Modified: Wed, 23 Jan 2019 10:53:15 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972c91429d892090e51e170b07277aa39b7fece1520ec911d14ff9ecf30f8862`  
		Last Modified: Wed, 23 Jan 2019 10:53:16 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf3ac8f94009148cdf6965fe164cdac68923c9a40e21a156508de1c669c4bc0`  
		Last Modified: Wed, 23 Jan 2019 10:54:39 GMT  
		Size: 604.5 MB (604496462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
