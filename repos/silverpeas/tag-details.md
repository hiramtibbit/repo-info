<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0`](#silverpeas60)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0`

```console
$ docker pull silverpeas@sha256:0063531b19b5248bb5601af09b7b979a033afbd6e2adc50e90ae654effe409eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0` - linux; amd64

```console
$ docker pull silverpeas@sha256:78e7080e1329c54269bdb87936ad1948d80842f60ac5ed6f2b31d6e640575c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **986.9 MB (986944780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9edc99af433b16c984121a79b9dc44d15cb6fbc354c08238491053af77a9503`
-	Default Command: `["\/opt\/run.sh"]`

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
# Fri, 13 Apr 2018 09:59:04 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 13 Apr 2018 09:59:04 GMT
ENV TERM=xterm
# Fri, 13 Apr 2018 10:00:34 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 13 Apr 2018 10:00:37 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 13 Apr 2018 10:00:41 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 13 Apr 2018 10:00:41 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 13 Apr 2018 10:00:44 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 13 Apr 2018 10:00:44 GMT
ENV LANG=en_US.UTF-8
# Fri, 13 Apr 2018 10:00:44 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 13 Apr 2018 10:00:45 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 13 Apr 2018 10:00:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 13 Apr 2018 10:00:45 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 13 Apr 2018 10:00:45 GMT
ENV JBOSS_HOME=/opt/wildfly
# Fri, 13 Apr 2018 10:00:46 GMT
ENV SILVERPEAS_VERSION=6.0
# Fri, 13 Apr 2018 10:00:46 GMT
ENV WILDFLY_VERSION=10.1.0
# Fri, 13 Apr 2018 10:00:46 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0 build=1
# Fri, 13 Apr 2018 10:00:56 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Fri, 13 Apr 2018 10:00:57 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Fri, 13 Apr 2018 10:00:57 GMT
WORKDIR /opt/silverpeas/bin
# Fri, 13 Apr 2018 10:00:57 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Fri, 13 Apr 2018 10:00:58 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Fri, 13 Apr 2018 10:04:02 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Fri, 13 Apr 2018 10:04:03 GMT
EXPOSE 8000/tcp 9990/tcp
# Fri, 13 Apr 2018 10:04:04 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Fri, 13 Apr 2018 10:04:05 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:997c7d619662ce71b464d2fd7f3efc1bbe13c1de1e9e76bb89cb5a035343240b`  
		Last Modified: Fri, 13 Apr 2018 10:23:32 GMT  
		Size: 200.1 MB (200090311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450dc4d080e1f9378b5ed6e22f43393de08c326aa2582e9bd4c601771bf9a93`  
		Last Modified: Fri, 13 Apr 2018 10:22:52 GMT  
		Size: 4.0 MB (3994027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee5378f27763cfa3a26966e9f0e352befa2587a30eba90d2da92811790fa21b`  
		Last Modified: Fri, 13 Apr 2018 10:22:53 GMT  
		Size: 7.1 MB (7146612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec7b03a274e14842e2e13be41c2fbe32a54d9446dae84d70642dc78a4a6afa0`  
		Last Modified: Fri, 13 Apr 2018 10:22:51 GMT  
		Size: 845.4 KB (845398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7858ecdeeddf15d660b63f9cced8f3d8e8264d4b8c3953534a9fd4ac1d9f46`  
		Last Modified: Fri, 13 Apr 2018 10:23:03 GMT  
		Size: 144.3 MB (144294017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5415d02b795484f663092f3ba86d75ef802de17e70cad75d1ab527e1f825a3c6`  
		Last Modified: Fri, 13 Apr 2018 10:22:48 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcba8e8d1a95d9fc21185828466e8a1af1365bd041e138209b007d57a706668`  
		Last Modified: Fri, 13 Apr 2018 10:22:48 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48c06e4443c9444450b8974849179b89298b53dde2b0ec1eb9d28cb2c64a263`  
		Last Modified: Fri, 13 Apr 2018 10:22:48 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f470e0f317adcb8778d9c1640c5225a0c280d74a0f5d4b711da505bcca1cf3`  
		Last Modified: Fri, 13 Apr 2018 10:23:23 GMT  
		Size: 587.5 MB (587547383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:c6e9786fa3254b8f6eea7ab29aaad9bd8634d1d68ad3c6ed0c273786325a2f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:4ace031bfe72469593860294742fda24cee818dde4e6a5cdf414f2cbbd2a6c97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **987.3 MB (987252642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd4429a1ec22552718ab90ff7d414cf17bc57f7e531dd99c3be19a303ea6296`
-	Default Command: `["\/opt\/run.sh"]`

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
# Tue, 06 Mar 2018 23:55:14 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Tue, 06 Mar 2018 23:55:14 GMT
ENV TERM=xterm
# Tue, 06 Mar 2018 23:56:32 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Tue, 06 Mar 2018 23:56:36 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Tue, 06 Mar 2018 23:56:39 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Tue, 06 Mar 2018 23:56:39 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Tue, 06 Mar 2018 23:56:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Tue, 06 Mar 2018 23:56:42 GMT
ENV LANG=en_US.UTF-8
# Tue, 06 Mar 2018 23:56:42 GMT
ENV LANGUAGE=en_US.UTF-8
# Tue, 06 Mar 2018 23:56:43 GMT
ENV LC_ALL=en_US.UTF-8
# Tue, 06 Mar 2018 23:56:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 06 Mar 2018 23:56:43 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Tue, 06 Mar 2018 23:56:43 GMT
ENV JBOSS_HOME=/opt/wildfly
# Tue, 06 Mar 2018 23:56:44 GMT
ENV SILVERPEAS_VERSION=6.0
# Tue, 06 Mar 2018 23:56:44 GMT
ENV WILDFLY_VERSION=10.1.0
# Tue, 06 Mar 2018 23:56:44 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0 build=1
# Tue, 06 Mar 2018 23:56:53 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Tue, 06 Mar 2018 23:56:54 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Tue, 06 Mar 2018 23:56:54 GMT
WORKDIR /opt/silverpeas/bin
# Tue, 06 Mar 2018 23:56:54 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Tue, 06 Mar 2018 23:56:55 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Wed, 07 Mar 2018 00:00:46 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Wed, 07 Mar 2018 00:00:46 GMT
EXPOSE 8000/tcp 9990/tcp
# Wed, 07 Mar 2018 00:00:47 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Wed, 07 Mar 2018 00:00:48 GMT
CMD ["/opt/run.sh"]
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
	-	`sha256:625b01b6bf8c817817292aa00cc706efaf556a9f28f6634fd666b5c2b1d46819`  
		Last Modified: Wed, 07 Mar 2018 00:16:17 GMT  
		Size: 200.0 MB (199992482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8616c72677f6c7404e01ec145239efa3803cf249ee39b5eaac20c1d8b7ec621`  
		Last Modified: Wed, 07 Mar 2018 00:15:47 GMT  
		Size: 4.0 MB (3994029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a36a67b6860bfd36ec28862ea0e9c6e8f977783199c9831a22c3709e2d09f70`  
		Last Modified: Wed, 07 Mar 2018 00:15:47 GMT  
		Size: 7.1 MB (7146617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cbc36eb7ab505af0c953be312d5195e09bded204c43b57b8f9de41e3a7c71a`  
		Last Modified: Wed, 07 Mar 2018 00:15:45 GMT  
		Size: 845.4 KB (845413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483ed053dc3043df062eff4f0a0156bf92b97d11490d2fd8610cafe9f5929243`  
		Last Modified: Wed, 07 Mar 2018 00:15:53 GMT  
		Size: 144.3 MB (144293975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cb9f08bf33d0a4a122a07b94c3cd7415a983d10eb9a71f5f88e82151849c90`  
		Last Modified: Wed, 07 Mar 2018 00:15:42 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95372d5d4dd7ef4166471cca9a5618754084f9c759a7a36c5e337bcf20c9c058`  
		Last Modified: Wed, 07 Mar 2018 00:15:42 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56bbfec913efa12f780a8aa4ae2772c823c3198ed00fbe5a04b173536b327637`  
		Last Modified: Wed, 07 Mar 2018 00:15:42 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010e488458b28d5eb81140f7c150c724e43a88dc5fd08fd3f96b3a51222f4888`  
		Last Modified: Wed, 07 Mar 2018 00:16:57 GMT  
		Size: 588.0 MB (588012266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
