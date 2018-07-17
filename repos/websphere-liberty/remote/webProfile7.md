## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:131a62cbd2d2636697e6cb43f0042e6e4feb5567c0adc699b8bed8bfd91c8429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c1db8e32086376dd2613a540dbe52a5b7ad525d542f71cc7791f500ef9f1c8ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271486836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cef1ad537c9f1575732c0f54a546bcb58c64778c62cb26d206b2fea97192a1a`
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
# Tue, 17 Jul 2018 21:14:50 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 21:15:03 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 17 Jul 2018 21:15:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:903500602e5521e967aade2ff23243bae356ac13ad2124f9e52898c7ce39453b`  
		Last Modified: Tue, 17 Jul 2018 21:24:53 GMT  
		Size: 73.8 MB (73768836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55de4192778614be8b4e754552b728b5990740555a12b17a094622262d3a1ad5`  
		Last Modified: Tue, 17 Jul 2018 21:24:43 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850316fd09f3b7c05d8a00afea63891768de273d4c6e943ae663cb463e11e86d`  
		Last Modified: Tue, 17 Jul 2018 21:24:48 GMT  
		Size: 11.4 MB (11382538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:649915c6db3026de0827159f63663fee15a3bfbde67a6be89704664b2747b171
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259956808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81665c81a674529fe5be3e436d9d60ce54deaf27a8c1ee5bfa79688e08fd9857`
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
# Tue, 03 Jul 2018 11:11:11 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:11:16 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 03 Jul 2018 11:11:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:1f31fe3d7da0d06e0f4a453783a372064d34d232e424898a33b256f2aec6b87c`  
		Last Modified: Tue, 03 Jul 2018 11:22:25 GMT  
		Size: 73.8 MB (73768827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d2dd597501ce2b68ab21e6e33074134b9278c8252ff6ba49bfe2322d8d7f2b`  
		Last Modified: Tue, 03 Jul 2018 11:22:14 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686fad06395a9f6602ee337069ddedbdba6572a3892dfbba2731533f7868cca7`  
		Last Modified: Tue, 03 Jul 2018 11:22:19 GMT  
		Size: 11.5 MB (11488188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:bc259c903c33491026e32fd16a3ca5c0cff8959ae6e0b5557490e8224485dc04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287182256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d7d3788e08e015444e645a5eb61666a50b7c0fddfa3b8e12641851d4572dd`
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
# Tue, 03 Jul 2018 09:28:35 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:28:37 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 03 Jul 2018 09:28:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:43698884a308c1f9eaa3ed1e3e5840efe11caa149ffddf65654a8cfdafc88b6d`  
		Last Modified: Tue, 03 Jul 2018 09:41:39 GMT  
		Size: 73.8 MB (73771945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a59359d4c033093fe73e0792819bc2b7ffb5015502890c08640b22286a682a`  
		Last Modified: Tue, 03 Jul 2018 09:41:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21f3330cb6762689a22ad50a4b27d56d17fb37bc8988e96e0dd9e4e84304cd0`  
		Last Modified: Tue, 03 Jul 2018 09:41:34 GMT  
		Size: 11.3 MB (11293277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f06e2da64a2d80104f8d1a6a44cd60d8fc907ce76123c1f435239ee0d45157a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269763436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2870f03196044e8634245ecff93d2bd5706ae48aedda73a4095a48a838dfa42`
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
# Tue, 17 Jul 2018 19:50:46 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 19:50:47 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 17 Jul 2018 19:50:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:8e05757a9a43b9f321f25e4789dc7c1918002ec27b054d64c53598d4b14a5baf`  
		Last Modified: Tue, 17 Jul 2018 19:57:59 GMT  
		Size: 73.8 MB (73768646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871ceaabf6ecce2dbc10b571903fa94dc66a5ca6260e17e57731ac84d33e4759`  
		Last Modified: Tue, 17 Jul 2018 19:57:53 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fecee0f9e513773c84c072360d868b7ec2f33576bcc163473298a81f5bcf07`  
		Last Modified: Tue, 17 Jul 2018 19:57:55 GMT  
		Size: 11.4 MB (11419033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
