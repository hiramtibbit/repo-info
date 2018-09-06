<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `silverpeas`

-	[`silverpeas:6.0.1`](#silverpeas601)
-	[`silverpeas:latest`](#silverpeaslatest)

## `silverpeas:6.0.1`

```console
$ docker pull silverpeas@sha256:e4b26c3c041c5527a2c4964b79767ce6b0935d508ec704a53e1cf175b04b2952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:6.0.1` - linux; amd64

```console
$ docker pull silverpeas@sha256:e05b1a03627c8d43ecef5fb4e24467e6cd8e478223511f549fad22c8e14abd96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1006795879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9950f785fdcdf9f75ed39fe41c177ace9a3e8ff739945763ec3205652b8dee`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 00:01:09 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Thu, 06 Sep 2018 00:01:10 GMT
ENV TERM=xterm
# Thu, 06 Sep 2018 00:03:21 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Thu, 06 Sep 2018 00:03:38 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Thu, 06 Sep 2018 00:04:39 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Thu, 06 Sep 2018 00:04:39 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Thu, 06 Sep 2018 00:04:42 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Thu, 06 Sep 2018 00:04:42 GMT
ENV LANG=en_US.UTF-8
# Thu, 06 Sep 2018 00:04:43 GMT
ENV LANGUAGE=en_US.UTF-8
# Thu, 06 Sep 2018 00:04:43 GMT
ENV LC_ALL=en_US.UTF-8
# Thu, 06 Sep 2018 00:04:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Thu, 06 Sep 2018 00:04:43 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Thu, 06 Sep 2018 00:04:44 GMT
ENV JBOSS_HOME=/opt/wildfly
# Thu, 06 Sep 2018 00:04:44 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Thu, 06 Sep 2018 00:04:44 GMT
ENV WILDFLY_VERSION=10.1.0
# Thu, 06 Sep 2018 00:04:44 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Thu, 06 Sep 2018 00:05:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Thu, 06 Sep 2018 00:05:54 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Thu, 06 Sep 2018 00:05:55 GMT
WORKDIR /opt/silverpeas/bin
# Thu, 06 Sep 2018 00:05:57 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Thu, 06 Sep 2018 00:05:57 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Thu, 06 Sep 2018 00:33:52 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Thu, 06 Sep 2018 00:33:53 GMT
EXPOSE 8000/tcp 9990/tcp
# Thu, 06 Sep 2018 00:33:53 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Thu, 06 Sep 2018 00:33:54 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670f92f8fa7321da677eccd50c65809b41ede2eae69693ae947037dc33a4e867`  
		Last Modified: Thu, 06 Sep 2018 00:35:07 GMT  
		Size: 202.6 MB (202614543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94f34eedfa2652453d1c4779a4a2367a52af927784290456b754e24a1612e4c`  
		Last Modified: Thu, 06 Sep 2018 00:34:15 GMT  
		Size: 4.0 MB (3994026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8551915801a44af78af81d863b06e6e2fb2d93b326ee3c07bd3aaee92b11e54d`  
		Last Modified: Thu, 06 Sep 2018 00:34:16 GMT  
		Size: 7.1 MB (7146617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01da2d3e824a4b479a60e8ad5001d84f922bac77877093f91fbbeb0d25e92f28`  
		Last Modified: Thu, 06 Sep 2018 00:34:13 GMT  
		Size: 845.4 KB (845435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2206e465ca0c96bd37b09282b35439bd6a885ed0c1161e874f18d1920713a30e`  
		Last Modified: Thu, 06 Sep 2018 00:34:31 GMT  
		Size: 144.3 MB (144294292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7219806cbcf7158c2859d7d32bd4b3ee4056f68ab726f4210900627bac2c0b2a`  
		Last Modified: Thu, 06 Sep 2018 00:34:12 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e51ed39d735b27837deae7a3b474371057ec0a3d0cfb80b56437119c8db9715`  
		Last Modified: Thu, 06 Sep 2018 00:34:12 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940dcd7e363db8c616e59d4b5f435603c646b44f55e7cf30f6ec6c1bcdc005c0`  
		Last Modified: Thu, 06 Sep 2018 00:34:12 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c7f12474aa581fd4ee1981e7d6d8c7ee359e6ae06c6425115c357132bc8288`  
		Last Modified: Thu, 06 Sep 2018 00:35:12 GMT  
		Size: 604.6 MB (604644384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `silverpeas:latest`

```console
$ docker pull silverpeas@sha256:609932cea5e76f71bc089f101d1aeb929e19dcf3a789ac3929f163b48c98a906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `silverpeas:latest` - linux; amd64

```console
$ docker pull silverpeas@sha256:039831dba7ed6c5050c02d8d477ba1f3841175f4a3d93a95c7fa8726382313d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1006795305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275fc81537de6f4e80c3cb3fff736c8173ca7a38c767667f90de6b52aca2b0e2`
-	Default Command: `["\/opt\/run.sh"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 19:52:36 GMT
MAINTAINER Miguel Moquillon "miguel.moquillon@silverpeas.org"
# Wed, 22 Aug 2018 19:52:36 GMT
ENV TERM=xterm
# Wed, 22 Aug 2018 19:56:09 GMT
RUN apt-get update && apt-get install -y     wget     locales     procps     net-tools     zip     unzip     openjdk-8-jdk     ffmpeg     imagemagick     ghostscript     ure     gpgv   && rm -rf /var/lib/apt/lists/*   && update-ca-certificates -f
# Wed, 22 Aug 2018 19:56:13 GMT
RUN wget -nc https://www.silverpeas.org/files/swftools-bin-0.9.2.zip   && echo 'd40bd091c84bde2872f2733a3c767b3a686c8e8477a3af3a96ef347cf05c5e43 *swftools-bin-0.9.2.zip' | sha256sum -   && unzip swftools-bin-0.9.2.zip -d /   && rm swftools-bin-0.9.2.zip
# Wed, 22 Aug 2018 19:56:16 GMT
RUN wget -nc https://www.silverpeas.org/files/pdf2json-bin-0.68.zip   && echo 'eec849cdd75224f9d44c0999ed1fbe8764a773d8ab0cf7fff4bf922ab81c9f84 *pdf2json-bin-0.68.zip' | sha256sum -   && unzip pdf2json-bin-0.68.zip -d /   && rm pdf2json-bin-0.68.zip
# Wed, 22 Aug 2018 19:56:17 GMT
ARG DEFAULT_LOCALE=en_US.UTF-8
# Wed, 22 Aug 2018 19:56:21 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen   && echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen   && echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen   && locale-gen   && update-locale LANG=${DEFAULT_LOCALE} LANGUAGE=${DEFAULT_LOCALE} LC_ALL=${DEFAULT_LOCALE}
# Wed, 22 Aug 2018 19:56:22 GMT
ENV LANG=en_US.UTF-8
# Wed, 22 Aug 2018 19:56:22 GMT
ENV LANGUAGE=en_US.UTF-8
# Wed, 22 Aug 2018 19:56:22 GMT
ENV LC_ALL=en_US.UTF-8
# Wed, 22 Aug 2018 19:56:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 22 Aug 2018 19:56:23 GMT
ENV SILVERPEAS_HOME=/opt/silverpeas
# Wed, 22 Aug 2018 19:56:23 GMT
ENV JBOSS_HOME=/opt/wildfly
# Wed, 22 Aug 2018 19:56:23 GMT
ENV SILVERPEAS_VERSION=6.0.1
# Wed, 22 Aug 2018 19:56:24 GMT
ENV WILDFLY_VERSION=10.1.0
# Wed, 22 Aug 2018 19:56:24 GMT
LABEL name=Silverpeas 6 description=Image to install and to run Silverpeas 6 vendor=Silverpeas version=6.0.1 build=1
# Wed, 22 Aug 2018 19:56:34 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc https://www.silverpeas.org/files/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 3F4657EF9C591F2FEA458FEBC19391EB3DF442B6   && gpg --batch --verify silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip.asc silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip   && wget -nc http://download.jboss.org/wildfly/${WILDFLY_VERSION}.Final/wildfly-${WILDFLY_VERSION}.Final.zip   && unzip silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?}.zip -d /opt   && unzip wildfly-${WILDFLY_VERSION}.Final.zip -d /opt   && mv /opt/silverpeas-${SILVERPEAS_VERSION}-wildfly${WILDFLY_VERSION%.?.?} /opt/silverpeas   && mv /opt/wildfly-${WILDFLY_VERSION}.Final /opt/wildfly   && rm *.zip   && mkdir -p /root/.m2
# Wed, 22 Aug 2018 19:56:35 GMT
COPY file:7acc9852c7701a8ead9e5fcf67506fb9ceaa5e6217c62d6e9ec23a111f2c5ba1 in /root/.m2/ 
# Wed, 22 Aug 2018 19:56:35 GMT
WORKDIR /opt/silverpeas/bin
# Wed, 22 Aug 2018 19:56:36 GMT
COPY file:b415fb4bfb5d5668057310fcef877a1a88be66b493d3770d113ab7326856a7da in /opt/ 
# Wed, 22 Aug 2018 19:56:36 GMT
COPY file:f79ce1fdaf6c3f3f07123c625be5f84429c455b2eac9b963766454fbd769afe6 in /opt/silverpeas/configuration/silverpeas/ 
# Wed, 22 Aug 2018 20:00:14 GMT
# ARGS: DEFAULT_LOCALE=en_US.UTF-8
RUN ./silverpeas assemble   && rm ../log/build-*   && touch .install
# Wed, 22 Aug 2018 20:00:16 GMT
EXPOSE 8000/tcp 9990/tcp
# Wed, 22 Aug 2018 20:00:16 GMT
VOLUME [/opt/silverpeas/log /opt/silverpeas/data /opt/silverpeas/xmlcomponents/workflows]
# Wed, 22 Aug 2018 20:00:17 GMT
CMD ["/opt/run.sh"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d49e27937c5d773d008fa80ab1b88d9811cb245127025ab582e535072c71c6`  
		Last Modified: Wed, 22 Aug 2018 20:02:02 GMT  
		Size: 202.6 MB (202615998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645681734cac017e1db9f6dc953e04c1f0da727594d8e807888885d7eaa5dae1`  
		Last Modified: Wed, 22 Aug 2018 20:00:57 GMT  
		Size: 4.0 MB (3994028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6acc629fb738934fc208d14d2743b254658233382023c70a4f1b6529dc908a9`  
		Last Modified: Wed, 22 Aug 2018 20:00:58 GMT  
		Size: 7.1 MB (7146616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d059028afbe46d72bf059e1d4df0008260d9b92ef0acb98ab5d6c0eaa9f0ee40`  
		Last Modified: Wed, 22 Aug 2018 20:00:55 GMT  
		Size: 845.4 KB (845410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c075f5d60c2f1481ea00347e00edef519ba3777d012a7fdf1c151ba888dc9`  
		Last Modified: Wed, 22 Aug 2018 20:01:14 GMT  
		Size: 144.3 MB (144294291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96205027c3470e420b62ef2530ec4457bafd5127f10b5344b10dcce8d3abc1ef`  
		Last Modified: Wed, 22 Aug 2018 20:00:52 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14f5214cb88828ea2c02b542db79c34981d70752a735865840c94bb20b0ab32`  
		Last Modified: Wed, 22 Aug 2018 20:00:52 GMT  
		Size: 806.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47292d5b29c7c03efb9380d5d9dc4b8c96196d556b106315ea42ad145d5bbe9b`  
		Last Modified: Wed, 22 Aug 2018 20:00:52 GMT  
		Size: 385.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252819cb6312f536c6bc2973458e93c1aec3295536ed177176bbe75c5447ea29`  
		Last Modified: Wed, 22 Aug 2018 20:01:57 GMT  
		Size: 604.6 MB (604642375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
