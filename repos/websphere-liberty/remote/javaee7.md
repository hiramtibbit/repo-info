## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:9a5b6f164bca046c7a788de258238c65ba2f82a8be81821c279669dc03d55add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:933e5492a62a2d707e004a020ce8f253dc3b08dcef20e70a1dc75303b957338b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300157280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68973eef790aff580e7da479002d8b6d59310f9febf8e1e7a86fe6ffab65c43f`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:09:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 10:09:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 10:09:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 17 Jul 2018 10:10:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 17 Jul 2018 10:10:36 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 17 Jul 2018 21:09:46 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 21:10:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:10:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 21:10:03 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 21:10:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 21:10:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 21:10:18 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:10:18 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 21:10:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 21:10:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 21:10:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 21:10:35 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 21:10:36 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 21:10:36 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 21:10:36 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 21:10:37 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 21:11:10 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 17 Jul 2018 21:17:24 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 21:17:34 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 17 Jul 2018 21:17:58 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f80c815a4a84794e1af52dfd44237792432ab2e82e24c91730718b0c470c2f`  
		Last Modified: Tue, 17 Jul 2018 10:15:54 GMT  
		Size: 3.0 MB (3020586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3b2afd78dd24c48d243832a7596c05c06b126954bd29483ff11a695a634425`  
		Last Modified: Tue, 17 Jul 2018 10:16:16 GMT  
		Size: 127.2 MB (127203967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d1900b0df98e0c925a3f292ddfa2d9b0999485222a7059823bc651e3d4a689`  
		Last Modified: Tue, 17 Jul 2018 21:23:48 GMT  
		Size: 421.9 KB (421904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c891ce7707352b49bb231dbc9df4be94fd1034ae18f22704a77d34696864abe`  
		Last Modified: Tue, 17 Jul 2018 21:23:50 GMT  
		Size: 12.5 MB (12494064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfceb0df646db3cded66af0ba9cacba28b6fc7df03cb8000979701eaac72426`  
		Last Modified: Tue, 17 Jul 2018 21:23:47 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6686b99b97041cacf67fcf352fe2a0f926c85eaf6fcb7ca9176ef703000da50e`  
		Last Modified: Tue, 17 Jul 2018 21:23:47 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ff967bfbaad8a7fb7bbdd333146e3ebfe76f7e170e22776d5805ac4f325828`  
		Last Modified: Tue, 17 Jul 2018 21:23:47 GMT  
		Size: 977.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2e472b1e0f84453d20803a15750d2c710526ca50abfa9ba891b5588ebd49d6`  
		Last Modified: Tue, 17 Jul 2018 21:25:26 GMT  
		Size: 97.9 MB (97937990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8065d62a760d329d3afdca856c091a3736fe1036a92dc4e88450b5803c053c63`  
		Last Modified: Tue, 17 Jul 2018 21:25:15 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a471526c4dc2c37cd4bacad0b79e890a8825379075b924640e7c7fa736ce5f7`  
		Last Modified: Tue, 17 Jul 2018 21:25:19 GMT  
		Size: 15.9 MB (15883460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:fbce1f660676e7c0297acede2834fd2641d2a970f93d61752ebc7697d596692d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (288984999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71c15a6daf97703db94e9b283007095933c8e0c6e621f6511305ab750025ff6`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 06 Jun 2018 10:49:28 GMT
ADD file:5fcd9114e9ee68bd1e50ceb66e4f5f980eaa3eec302e20495f7e78cf82c33909 in / 
# Wed, 06 Jun 2018 10:49:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 10:49:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:49:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 10:49:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 10:49:31 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 11:08:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 06 Jun 2018 11:08:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 10:39:00 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 10:39:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 10:39:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:13:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:13:59 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 03 Jul 2018 11:14:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:79d589f7689e638b114343a2ae1ce600ef504a48734a9c6f8c4b6d1f18f7d167`  
		Last Modified: Mon, 28 May 2018 14:58:36 GMT  
		Size: 43.4 MB (43411111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5514017f1ff3f380c70d58055974255b4dc45dfcf0462c6241a822b3f30dda61`  
		Last Modified: Wed, 06 Jun 2018 10:52:35 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114f6f6257d342c755f8ed1778e8a238326f56fa7158c55e58df3528790073a6`  
		Last Modified: Wed, 06 Jun 2018 10:52:35 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2c51558aba4c0fe66573d4f86d81d667f74a18cf226540428043bd1b5bc3a7`  
		Last Modified: Wed, 06 Jun 2018 10:52:36 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a7795c01c781d81d64ad8b61d8463d3dd1aee71b5d937685640a819f16f9`  
		Last Modified: Wed, 06 Jun 2018 10:52:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516fb90fa6839f4e09fadb7385fc52fa80e8b66e3e934db573f2908774ecf3eb`  
		Last Modified: Wed, 06 Jun 2018 11:21:35 GMT  
		Size: 2.9 MB (2876155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90dfa341e241deacf9e7f089be049a393a9109a3459ebc3d87697d276df870`  
		Last Modified: Tue, 03 Jul 2018 10:43:08 GMT  
		Size: 115.5 MB (115492527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bf579480437160eb3c2d3f0c0e3dd7b5d776bccd0df047dcb58618178b241a`  
		Last Modified: Tue, 03 Jul 2018 11:23:01 GMT  
		Size: 97.9 MB (97937913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1b250e8e2292de9bb608c04043a854b8119478684a9f9f677935166bd1c99b`  
		Last Modified: Tue, 03 Jul 2018 11:22:42 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68583ec35c8ceabb8d98d243b5a612841d64882f3b15baa8e849f0acdd585a0c`  
		Last Modified: Tue, 03 Jul 2018 11:22:50 GMT  
		Size: 16.3 MB (16346925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:6971b5464a216eecec1fd949187ee73e1755a3d12167200b1222550d900a54b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.6 MB (315648345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2f899f1e5fded71f5670a957988496309e66da511e0ec25ec9972313cf53ee`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 06 Jun 2018 09:07:11 GMT
ADD file:8af2c8e44e6551250e52c9762223a27048941310fa5bae9ddd98b58a4417817a in / 
# Wed, 06 Jun 2018 09:07:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:07:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:07:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:07:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:07:21 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 09:26:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 06 Jun 2018 09:27:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 08:17:53 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 08:19:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 08:20:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:32:05 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:32:06 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 03 Jul 2018 09:32:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:31f6c753a1dca7ffb3f43455eaafa558b80765437780f4ac50600bba9a8bbaa4`  
		Last Modified: Wed, 06 Jun 2018 09:10:59 GMT  
		Size: 45.5 MB (45495870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6a32b6c3f99165cf3f39cf486ccf3ad3715e9c0a13403ce90e2672fd137ac1`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefff450e56b9c43ff9d2d2e045c5868726edb7580173179bcb28ce7ef6d5546`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9069a22e2dae36ceecfc882eafcbabc61b3aa82cb5dac218f7adf79cf8071b92`  
		Last Modified: Wed, 06 Jun 2018 09:10:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0815fa4493554cefa3b1b7076a5b19470d1814c9b4869ce5bd4640c5eb47f784`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6aadf61e5bee5e2d7bc77d512a5f0c9ede55d04371a9287d82bf2d050293a`  
		Last Modified: Wed, 06 Jun 2018 09:37:27 GMT  
		Size: 2.9 MB (2880213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3baefa4bae398c5329282a79783fe4ac0890b6944c63141a6f99eaaab75bd8`  
		Last Modified: Tue, 03 Jul 2018 08:25:58 GMT  
		Size: 140.8 MB (140788849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776f1c468eed12113f91b7c28e716fdaafc3d5b6f16cfa8b662c0fe2aaca132f`  
		Last Modified: Tue, 03 Jul 2018 09:42:06 GMT  
		Size: 97.9 MB (97944974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61425fcc856b1f32072499520fd8be44760a045e3dc24a563907cc39e74aa7e2`  
		Last Modified: Tue, 03 Jul 2018 09:41:55 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f7d468e79c46cd11399106ed73637987e417c2e06750d6ea5b42f7c734ac6`  
		Last Modified: Tue, 03 Jul 2018 09:41:58 GMT  
		Size: 15.6 MB (15585968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2a61011c6bac9ce158d2017e4cd51dba570c898948530e3e94879060e47aecd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.3 MB (298263539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42a579ae25c855ce5ef38cb92d942c20ec60d61fed73de4e6f91804a69030c8`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 13:08:11 GMT
ADD file:07dedba4c6a01924ec3db2b2d934408446e447fac32ef47751b6aeccb614c28c in / 
# Tue, 17 Jul 2018 13:08:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:08:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:08:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:08:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:08:18 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 15:40:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 15:40:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:40:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 17 Jul 2018 15:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 17 Jul 2018 15:41:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 17 Jul 2018 19:47:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 19:47:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:47:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 19:47:49 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 19:47:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 19:47:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 19:47:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:47:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 19:47:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 19:47:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 19:47:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 19:48:00 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 19:48:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:48:00 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 19:48:00 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 19:48:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 19:48:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 17 Jul 2018 19:52:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 19:52:43 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 17 Jul 2018 19:52:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3e3f5d0b6b7c743d40e4e5753efb45ff829b5a6ad6d7ce0404f81531669c03f9`  
		Last Modified: Mon, 09 Jul 2018 15:08:18 GMT  
		Size: 42.2 MB (42201732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad9d15e38aaedea71b29ad60c567b9871ff2b1607ffe539457d6c7aeaaa2af0`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad15e34347b1ca8f152c86fa24a23431273719fd49d5367e054ca571e4751711`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587a1d0f8e483f4d94ca77722a8cd76d7566716ebf4129c3e629ab9b0833b03e`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79a974346c09d126adc02c759449bf3ed2b3c1a4b0503fceaa48a6021c1634d`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0d089c9ff9491e8c72d959b8bf3456e2ae3578369e3c13c297617508b44cd1`  
		Last Modified: Tue, 17 Jul 2018 15:43:05 GMT  
		Size: 2.8 MB (2764958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db4af6496593a0aeeec7360fa41abc7a0fe5c927ac4d43b2882d12f4caeed26`  
		Last Modified: Tue, 17 Jul 2018 15:43:18 GMT  
		Size: 126.7 MB (126682736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393e590bd6e320e6bf0eede7547d8384ca307c84b0605815c8436b5e23b65974`  
		Last Modified: Tue, 17 Jul 2018 19:57:31 GMT  
		Size: 427.5 KB (427504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005556de212fc56f0419b68fa00388679c242f7dced94d186c3d0d70d414298`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 12.5 MB (12494050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbaf7caa4fabefa12021f73c3a22c73fda6b9ed5b47c4d3ca4f96b7551a8e5c`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f4541503151f8d77b8c27ff2e7065624f395e7e618cd7d06a5ae97a23467f`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac804642cf53949889da6aee40b3e08306c7c2dde51835d7f71526e6e67f0f2f`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732c72045f3b7d5de56aa59d1503a9c117b1fd2717c60a179238422041ff095c`  
		Last Modified: Tue, 17 Jul 2018 19:58:13 GMT  
		Size: 97.9 MB (97937746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da58165bbbfccda227df9347aa99421440c6be6f320eddcfbd37215d20ee14cf`  
		Last Modified: Tue, 17 Jul 2018 19:58:05 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ee5df1ca8b98901a65f29baf2a461dce3794dc6be0cf5e08cd68405d78e427`  
		Last Modified: Tue, 17 Jul 2018 19:58:09 GMT  
		Size: 15.7 MB (15749667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
