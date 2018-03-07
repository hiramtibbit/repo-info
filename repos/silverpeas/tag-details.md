<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0`](#silverpeas60)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0`

```console
$ docker pull silverpeas@sha256:c6e9786fa3254b8f6eea7ab29aaad9bd8634d1d68ad3c6ed0c273786325a2f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0` - linux; amd64

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

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:7223cef9480bf1a7ba058dbadd27139c0f530ce3bc712d0d3c7dff24133054d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:017fca3933b6b33da2c48aa109e86b8072e440bda828be5b925f601c78e972cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **987.2 MB (987160187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b8ee914929970ab950410a1bf1206ff5124406e6ba999ec1f25d05991435d1`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 00:05:03 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Fri, 26 Jan 2018 00:05:04 GMT
ENV TERM=xterm
# Fri, 26 Jan 2018 00:08:52 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Fri, 26 Jan 2018 00:08:56 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Fri, 26 Jan 2018 00:08:59 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Fri, 26 Jan 2018 00:08:59 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Fri, 26 Jan 2018 00:09:02 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Fri, 26 Jan 2018 00:09:02 GMT
ENV LANG=en_US.UTF-8
# Fri, 26 Jan 2018 00:09:02 GMT
ENV LANGUAGE=en_US.UTF-8
# Fri, 26 Jan 2018 00:09:02 GMT
ENV LC_ALL=en_US.UTF-8
# Fri, 26 Jan 2018 00:09:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 26 Jan 2018 00:09:03 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Fri, 26 Jan 2018 00:09:03 GMT
ENV JBOSS_HOME=/opt/wildfly
# Mon, 05 Feb 2018 23:47:06 GMT
ENV SILVERPEAS_VERSION=6.0
# Mon, 05 Feb 2018 23:47:06 GMT
ENV WILDFLY_VERSION=10.1.0
# Mon, 05 Feb 2018 23:47:07 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0 build=1
# Mon, 05 Feb 2018 23:47:30 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Mon, 05 Feb 2018 23:47:30 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Mon, 05 Feb 2018 23:47:30 GMT
WORKDIR /opt/silverpeas/bin
# Mon, 05 Feb 2018 23:47:31 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Mon, 05 Feb 2018 23:47:31 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Mon, 05 Feb 2018 23:50:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Mon, 05 Feb 2018 23:50:44 GMT
EXPOSE 8000/tcp 9990/tcp
# Mon, 05 Feb 2018 23:50:45 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Mon, 05 Feb 2018 23:50:45 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07b59e4501a43e822a85b59d16b0d171938238f9439fea69ab4284b89d814b0`  
		Last Modified: Fri, 26 Jan 2018 00:32:27 GMT  
		Size: 200.0 MB (200000853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ac5f3b21b757b0b11673509fd0269627402a9861b3bcbb32028d32e7107664`  
		Last Modified: Fri, 26 Jan 2018 00:31:39 GMT  
		Size: 4.0 MB (3994029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f395a270dfffcd51e778531ea608dde55f1da00252976fe2a154e7edbe2fb60`  
		Last Modified: Fri, 26 Jan 2018 00:31:38 GMT  
		Size: 7.1 MB (7146615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9404fb83fb51aa979ee09b0e4dc9fad6b1d6ad78477513b66536749d322d08`  
		Last Modified: Fri, 26 Jan 2018 00:31:37 GMT  
		Size: 845.4 KB (845410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc236d1c5d95debaa18e9f25638f2243ccc18acb7fd3d2a69a2288bccb6cda5a`  
		Last Modified: Mon, 05 Feb 2018 23:51:24 GMT  
		Size: 144.3 MB (144294039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a14277cb8fd1a879ca69c212d484450de2a208898bbcfb5ea3c910e6dee67e`  
		Last Modified: Mon, 05 Feb 2018 23:51:15 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef6186ed51beaa11b3a8b0390ee6111605cd9874426ac2eb81fc97e7f0c0a05`  
		Last Modified: Mon, 05 Feb 2018 23:51:15 GMT  
		Size: 809.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e9ad0115d8f3ae51bc66723a6092da97092b8f0f5aa22190993f4868812e9c`  
		Last Modified: Mon, 05 Feb 2018 23:51:15 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ee68a0effc7677bc6b0ff5d4f8254343d1e435bd214131925f82c9853c2fae`  
		Last Modified: Mon, 05 Feb 2018 23:51:49 GMT  
		Size: 588.0 MB (588011659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
