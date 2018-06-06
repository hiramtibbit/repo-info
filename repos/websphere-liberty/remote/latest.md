## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:5b593fd2c7b818723b7149befd139f39662499b6dc4251e60c8a9c9cfa16d111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:d8d16e512f8d657f83d38e6977ad423f93958523baeb59ecfac11b80aaaeed7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297720643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b867ee184a9c5cedc5b502aabc65833dea576b6847819dc93b889d6588d7682`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:49:37 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 05 Jun 2018 21:49:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:49:50 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Tue, 05 Jun 2018 21:53:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 05 Jun 2018 21:53:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 05 Jun 2018 23:19:23 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 05 Jun 2018 23:19:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:19:33 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Tue, 05 Jun 2018 23:19:33 GMT
ARG LIBERTY_URL
# Tue, 05 Jun 2018 23:19:33 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 05 Jun 2018 23:19:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 05 Jun 2018 23:19:37 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Jun 2018 23:19:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Tue, 05 Jun 2018 23:19:37 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 05 Jun 2018 23:19:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 05 Jun 2018 23:19:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 05 Jun 2018 23:19:39 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Tue, 05 Jun 2018 23:19:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 05 Jun 2018 23:19:40 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 05 Jun 2018 23:19:40 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 05 Jun 2018 23:19:48 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 05 Jun 2018 23:23:49 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 05 Jun 2018 23:23:50 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 05 Jun 2018 23:24:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba431a954255d3b811c3545b7ca473cfe68d79ed4d0205cc31fdb571092e070`  
		Last Modified: Tue, 05 Jun 2018 22:15:34 GMT  
		Size: 3.0 MB (3020314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ee419d20fa7fda1e76b5a76eb81daa13d878eb73ace76c69125546dcb7be2`  
		Last Modified: Tue, 05 Jun 2018 22:16:07 GMT  
		Size: 127.2 MB (127179667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217c7503bc61baab3622ed9ab2df04b0d4ea110ce5f0a727c91b5632c517b4c9`  
		Last Modified: Tue, 05 Jun 2018 23:24:51 GMT  
		Size: 421.8 KB (421776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb261025e9c83f7eb67d0f07021ba880cfc0e7daba98af8bb96fdc9264f58144`  
		Last Modified: Tue, 05 Jun 2018 23:24:52 GMT  
		Size: 12.0 MB (12025339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16a7efc2d2b2c05eca3733a95ff75ab6c273f6ef9263de0262e45158311948d`  
		Last Modified: Tue, 05 Jun 2018 23:24:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710d18fcc8b796ecc3d0b1ca200ebee595b371c7b8239925d78b67359ac30054`  
		Last Modified: Tue, 05 Jun 2018 23:24:51 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37516741d2352d7d925c5a2e44928703e41e6194f4c3297c8e8111dbe6e8e740`  
		Last Modified: Tue, 05 Jun 2018 23:24:51 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6219cb75e6a87329d0bb37320ea94012b980dfafa5c691431b9210ea907dd036`  
		Last Modified: Tue, 05 Jun 2018 23:26:12 GMT  
		Size: 97.7 MB (97699329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0badcc87a816b2826d0aeb5a0588aa2daaf1fea5785846605bab2eef074b283`  
		Last Modified: Tue, 05 Jun 2018 23:26:02 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268310f890abe48dd7c5024b07b1f2b97ff7a10a50e6573e46e0abda6dbf1d82`  
		Last Modified: Tue, 05 Jun 2018 23:26:04 GMT  
		Size: 14.2 MB (14246689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:93e8c3f3f718c63b5ec416927b59a007c2de0eae48f56987c3d3af95ad899838
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.7 MB (286675028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670705e78c5c62e3dcf29cee64511b871dd20cd1d3578f6215ee3d6052e28cf1`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:10:19 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 02 Jun 2018 11:10:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:10:30 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Sat, 02 Jun 2018 11:10:30 GMT
ARG LIBERTY_URL
# Sat, 02 Jun 2018 11:10:30 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 02 Jun 2018 11:10:58 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 02 Jun 2018 11:10:58 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Jun 2018 11:10:58 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Sat, 02 Jun 2018 11:10:59 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 02 Jun 2018 11:11:00 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 02 Jun 2018 11:11:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 02 Jun 2018 11:11:02 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Sat, 02 Jun 2018 11:11:02 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:11:02 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 02 Jun 2018 11:11:02 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:11:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 02 Jun 2018 11:23:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 02 Jun 2018 11:23:02 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 02 Jun 2018 11:23:25 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aafa43e87e1ea5b99665b9b25a187938a8b15083cfeb3780ad9e5d6b8d9d018`  
		Last Modified: Sat, 02 Jun 2018 11:28:19 GMT  
		Size: 420.8 KB (420759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac4a9d1e87e052b61fb32e1516888d11ae6342e8be1d0ee5a2a1ad1d4a364e6`  
		Last Modified: Sat, 02 Jun 2018 11:28:24 GMT  
		Size: 12.0 MB (12025333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a2565bf51412ca092788e9ae2383058f1a9053e638d2815bbaff3fad01ff39`  
		Last Modified: Sat, 02 Jun 2018 11:28:18 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5799690984c3b034cd76192b10332cfd54205679d0f800b529f3a5b78f764295`  
		Last Modified: Sat, 02 Jun 2018 11:28:19 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbec38554dc9280c3909a3317e93497759953e1ac0108c2947c7948808689e68`  
		Last Modified: Sat, 02 Jun 2018 11:28:18 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f285f0fbb95d75e44c66802a67ea5a9acb979748532c99c54d6ad5f6c3beaf`  
		Last Modified: Sat, 02 Jun 2018 11:30:28 GMT  
		Size: 97.7 MB (97700140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a78576b51cd556b6b48fbcdc8172b572877e5a0feebd3455497214a6eb1c88`  
		Last Modified: Sat, 02 Jun 2018 11:30:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c871cb737235d8b4d3295db28ba83a6ddc594af9c33c16c444058e6973214a5`  
		Last Modified: Sat, 02 Jun 2018 11:30:13 GMT  
		Size: 14.8 MB (14806835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:6d03850835945a1fff2082d44aea919fc0683819f4acf504df6a558094029412
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.1 MB (313122024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ee3c451b32681ad8fa2732f44f2ebbb66afb51db1b3238cd2157181e5c212e`
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
# Wed, 06 Jun 2018 09:27:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Wed, 06 Jun 2018 09:31:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 06 Jun 2018 09:31:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 06 Jun 2018 10:03:11 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 06 Jun 2018 10:03:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:03:31 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Wed, 06 Jun 2018 10:03:31 GMT
ARG LIBERTY_URL
# Wed, 06 Jun 2018 10:03:32 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 06 Jun 2018 10:03:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 06 Jun 2018 10:03:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 10:03:51 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Wed, 06 Jun 2018 10:03:52 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 06 Jun 2018 10:03:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 06 Jun 2018 10:03:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 06 Jun 2018 10:03:58 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Wed, 06 Jun 2018 10:03:58 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 06 Jun 2018 10:03:59 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 06 Jun 2018 10:04:01 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 06 Jun 2018 10:04:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 06 Jun 2018 10:12:31 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 06 Jun 2018 10:12:40 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 06 Jun 2018 10:13:44 GMT
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
	-	`sha256:6d75f12d7cc60a58615c50e1aa733c9d302dab111a1cc0a3fb6e50b75b368209`  
		Last Modified: Wed, 06 Jun 2018 09:37:57 GMT  
		Size: 140.6 MB (140647082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add64afb51dd40fd6de73e104d5f8691cb0cae866f1d4c3746f34e22369f8bc7`  
		Last Modified: Wed, 06 Jun 2018 10:18:08 GMT  
		Size: 453.0 KB (453037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12be55075e862fd0a95f161528a4b9bb89460c99b7f15eb0bc56ee77eb95c6`  
		Last Modified: Wed, 06 Jun 2018 10:18:08 GMT  
		Size: 12.0 MB (12025390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdd7051e7709302ee8d21910933ce1f799423fc2f10e72c5fc024ce913c5cf4`  
		Last Modified: Wed, 06 Jun 2018 10:18:06 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc324c9e8024a998a1e69243dda452d668dbef9856e670dab9586418fb63c57`  
		Last Modified: Wed, 06 Jun 2018 10:18:07 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d65db4938d97a6878d24a1e76a123ffc9f77cde1bb6fa2bdcc4607d358aadd7`  
		Last Modified: Wed, 06 Jun 2018 10:18:07 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da71a38b69e8f96fb4d7ac6867a5789a71933948837ef229d5f5cf45d4337a35`  
		Last Modified: Wed, 06 Jun 2018 10:20:05 GMT  
		Size: 97.7 MB (97704608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7cb815d14c54556b6d0eeeac9103fffbc07eee72a828e4a2d8c8ea7d8ad8bc`  
		Last Modified: Wed, 06 Jun 2018 10:19:48 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3616774a487689f074c91bcca306ceb19593cb0d91714aa1df10579c230d5f6`  
		Last Modified: Wed, 06 Jun 2018 10:19:55 GMT  
		Size: 13.9 MB (13910641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d32f97e6929a20542fde8b2ee6ebc3fec3cfe55274c7d398cdc4139cdce6fd8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296038685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf66b6200c7aef99bc242cfc5cf71699e7bfac7eda53960163db16e1cebcbbc9`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:01:21 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 02 Jun 2018 12:01:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:01:27 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Sat, 02 Jun 2018 12:01:27 GMT
ARG LIBERTY_URL
# Sat, 02 Jun 2018 12:01:28 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 02 Jun 2018 12:01:32 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 02 Jun 2018 12:01:32 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Jun 2018 12:01:32 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Sat, 02 Jun 2018 12:01:32 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 02 Jun 2018 12:01:33 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 02 Jun 2018 12:01:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 02 Jun 2018 12:01:35 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Sat, 02 Jun 2018 12:01:35 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:01:35 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 02 Jun 2018 12:01:35 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:01:46 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 02 Jun 2018 12:07:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 02 Jun 2018 12:07:15 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 02 Jun 2018 12:07:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb41547270e17f42d0e0cb6cfb209a969c5479e2344db07dd19d26e73af50188`  
		Last Modified: Sat, 02 Jun 2018 12:08:24 GMT  
		Size: 427.6 KB (427597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f8a2216d78dd37bc3e38560cddd33bd080bbac955f5383469417440ce7d281`  
		Last Modified: Sat, 02 Jun 2018 12:08:25 GMT  
		Size: 12.0 MB (12025342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1290b56fcf2352f9cf5c7a84c80af60707974d4d15405cef82fe7f45f992d4`  
		Last Modified: Sat, 02 Jun 2018 12:08:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40083b59d8cef346b4bf4fc7d71e285fdb019d42b7e0fa012992df5ed394567`  
		Last Modified: Sat, 02 Jun 2018 12:08:23 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6f988395822f685dc0fc75ae18b60cf0aa4fbdf188926b24b8f080b43d4dba`  
		Last Modified: Sat, 02 Jun 2018 12:08:23 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b21b4351b761642d3bf0c3e793bd5904578d1489e7169d445afac1cb3ddc2b`  
		Last Modified: Sat, 02 Jun 2018 12:09:34 GMT  
		Size: 97.7 MB (97699448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ef8c994a518670eba23086267e2f36f39a939124c30be2721fa1971aad3968`  
		Last Modified: Sat, 02 Jun 2018 12:09:26 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fdafec4af6deea495d2dd8ed0a8d8b8f813ee6eefe95206858c730cec17354`  
		Last Modified: Sat, 02 Jun 2018 12:09:29 GMT  
		Size: 14.4 MB (14411559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
