## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:275d0a04e196eb9158fbd5246786243bde37d20ba6f18f9c370510087a5f9fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:9b9fb40cace825005f5d141e9e91a29315e345c8d2d3ba105b02761d90960f97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.2 MB (319182715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975639548329cc11cd259a9f253a8796908f99824cf897c26ef522af3e7d8bcd`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:16:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 23 Jan 2019 09:17:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:17:01 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Wed, 23 Jan 2019 09:17:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 23 Jan 2019 09:17:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 23 Jan 2019 10:05:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 23 Jan 2019 10:06:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 23 Jan 2019 10:06:10 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Wed, 23 Jan 2019 10:06:11 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Wed, 23 Jan 2019 10:06:11 GMT
ARG LIBERTY_URL
# Wed, 23 Jan 2019 10:06:11 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 23 Jan 2019 10:06:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 23 Jan 2019 10:06:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:06:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Wed, 23 Jan 2019 10:06:16 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 23 Jan 2019 10:06:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 23 Jan 2019 10:06:19 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Wed, 23 Jan 2019 10:06:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 23 Jan 2019 10:06:21 GMT
USER 1001
# Wed, 23 Jan 2019 10:06:22 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 10:06:22 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 10:06:22 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 23 Jan 2019 10:06:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 10:06:26 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 23 Jan 2019 10:11:11 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 23 Jan 2019 10:11:12 GMT
COPY file:ac67b9ec5d944a8796eed2df8cba9b04b4e624a81a61acf9f6ecb53bc20500c6 in /config/ 
# Wed, 23 Jan 2019 10:11:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449210cbff3b30cf54e4d37a05fe93d842d52d680962da75a35b1094bc98e996`  
		Last Modified: Wed, 23 Jan 2019 09:20:09 GMT  
		Size: 3.0 MB (3021469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c9d73c43bbee59322536b8b76283397b125c636e50dcf18c79ade3fab7d934`  
		Last Modified: Wed, 23 Jan 2019 09:20:28 GMT  
		Size: 128.1 MB (128082666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1250d3703a3a9ce4b5ad600953385c0abbc6a79454540a63639c92b2b71634fc`  
		Last Modified: Wed, 23 Jan 2019 10:36:54 GMT  
		Size: 424.7 KB (424688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743ce82b797154bab35659bb56ec3f493582667f9764b419bc7d71ef3e42433d`  
		Last Modified: Wed, 23 Jan 2019 10:36:53 GMT  
		Size: 40.6 KB (40635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8e33b6ab6b98482a84d8a92abf1f2bde026a8f9960a1d9e085b2ddc5bd34c7`  
		Last Modified: Wed, 23 Jan 2019 10:36:55 GMT  
		Size: 12.7 MB (12651751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a057ceb83252468813c7a5bb5b296eee3467171e3dd48f96121e06bae80495c`  
		Last Modified: Wed, 23 Jan 2019 10:36:52 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9e4410afa5e87de270b4b6e350a8676750943ca09a8bc17c5f1d7224e4c3ed`  
		Last Modified: Wed, 23 Jan 2019 10:36:53 GMT  
		Size: 972.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970ad8352380abb2badee9fd19766b52852ccc9011b4132fe36455401d550fb2`  
		Last Modified: Wed, 23 Jan 2019 10:36:55 GMT  
		Size: 12.7 MB (12652694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dafacf75764f9de0d219f08240391710edc13559b904c8270f96f0b0450714e`  
		Last Modified: Wed, 23 Jan 2019 10:37:36 GMT  
		Size: 102.3 MB (102251780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f44ccd053a0ed631069efd05840d965945e220838e1439eaef62bb81c62348e`  
		Last Modified: Wed, 23 Jan 2019 10:37:24 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f2134fb13b26b780581d5648fe95abe027449eb88b5bbb45dac58c0ec2fa0e`  
		Last Modified: Wed, 23 Jan 2019 10:37:29 GMT  
		Size: 16.5 MB (16531446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:d51f42b97e77fa66cd4438c398d7571f08c1dbd37d6ec46c40655418d2e0144a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307358067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401b634dc70b98b65f3181492312aa0fb2804ea4071407187c20b581ed277a06`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 29 Dec 2018 12:19:37 GMT
ADD file:be3f9e21f6111f195168c5e611358dadbfdab923b0ce4a376067da5ecae493e0 in / 
# Sat, 29 Dec 2018 12:19:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:19:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:19:44 GMT
CMD ["/bin/bash"]
# Sun, 30 Dec 2018 04:26:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 30 Dec 2018 04:27:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 11:51:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Tue, 15 Jan 2019 11:53:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 15 Jan 2019 11:53:26 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 15 Jan 2019 13:37:04 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 15 Jan 2019 13:37:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Tue, 15 Jan 2019 13:37:46 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Tue, 15 Jan 2019 13:37:46 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Tue, 15 Jan 2019 13:37:47 GMT
ARG LIBERTY_URL
# Tue, 15 Jan 2019 13:37:47 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 15 Jan 2019 13:37:50 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Tue, 15 Jan 2019 13:37:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Jan 2019 13:37:51 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Tue, 15 Jan 2019 13:37:51 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 15 Jan 2019 13:37:52 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 15 Jan 2019 13:37:52 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Tue, 15 Jan 2019 13:37:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Tue, 15 Jan 2019 13:37:54 GMT
USER 1001
# Tue, 15 Jan 2019 13:37:54 GMT
EXPOSE 9080 9443
# Tue, 15 Jan 2019 13:37:55 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 15 Jan 2019 13:37:55 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 15 Jan 2019 13:37:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 15 Jan 2019 13:37:58 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 15 Jan 2019 13:42:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 15 Jan 2019 13:42:14 GMT
COPY file:ac67b9ec5d944a8796eed2df8cba9b04b4e624a81a61acf9f6ecb53bc20500c6 in /config/ 
# Tue, 15 Jan 2019 13:42:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
```

-	Layers:
	-	`sha256:d2e49d5dfd58c98354734bf10340c4e1430684bf32bbb570cda9e4bf7679e132`  
		Last Modified: Wed, 19 Dec 2018 14:33:46 GMT  
		Size: 43.7 MB (43664947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb5f8a325ab01ad7275281c68da9d061b270362cd0398480dd4bc194f009dcd`  
		Last Modified: Sat, 29 Dec 2018 12:21:17 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cd1e2ae4805633a757e6cfc7dc6b6c73bef4fc69eaf73ad8e3a57ed92ec089`  
		Last Modified: Sat, 29 Dec 2018 12:21:17 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5e2f7061b27bd59aa106240892f64071e5526101d997a8941f1215e29f7773`  
		Last Modified: Sat, 29 Dec 2018 12:21:17 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d9c01d2cf752cb03ba837358e336fafdbc61d78a7eb2221f37ac21775c8d15`  
		Last Modified: Sun, 30 Dec 2018 04:29:37 GMT  
		Size: 2.9 MB (2877353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5724943cb0190ca4b5a5029c10c4c460878b44621331ccc33f1d72892b3675a5`  
		Last Modified: Tue, 15 Jan 2019 11:55:26 GMT  
		Size: 116.3 MB (116281138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e34daeb727fd5080a580bf124f51c44495cce057de632312e51baa354512f02`  
		Last Modified: Tue, 15 Jan 2019 14:01:12 GMT  
		Size: 423.8 KB (423824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14e5d9fc6909505994e17613c485d330a4082831d9bdc6826e25119180ef44`  
		Last Modified: Tue, 15 Jan 2019 14:01:10 GMT  
		Size: 40.6 KB (40637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ed5b9ef5619bf75a5c142317200bdec052f53b6f6512ada484741b153a636b`  
		Last Modified: Tue, 15 Jan 2019 14:01:13 GMT  
		Size: 12.7 MB (12651735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc8aec399a411ad2e3cd650e4c9ec89924b347a70a7ce72697c23f6a04be677`  
		Last Modified: Tue, 15 Jan 2019 14:01:10 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d77589947f50088c2a5486cf4067fd36884f22f82d289251d3d2b8dfd7a6a01`  
		Last Modified: Tue, 15 Jan 2019 14:01:10 GMT  
		Size: 974.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc2ee5e1fe72f73e4abefb5e949b92e7307310b994da21c674503d51e1d27c1`  
		Last Modified: Tue, 15 Jan 2019 14:01:12 GMT  
		Size: 12.7 MB (12652689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d41be78147a9807b18df299bdf77ced0f3e35bd8043c6701dd264de4b6ab7`  
		Last Modified: Tue, 15 Jan 2019 14:01:53 GMT  
		Size: 102.3 MB (102251994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bed779a686a2846cc2a0aa1c410adc1d47f68a12403fb6ea9ab4948454bca0`  
		Last Modified: Tue, 15 Jan 2019 14:01:42 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cca559cd882bb655db69ab7944710f06e357b437a360b560a3885889f08e1d9`  
		Last Modified: Tue, 15 Jan 2019 14:01:48 GMT  
		Size: 16.5 MB (16509618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:798122e703d85b009a7573066425ffd76aba9f33d9efe1c7d8281f8492d48b92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 MB (334601703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b444d7832f59bd1dfd1075cb31b896243699b7bc6c6614d327d7c2a9835383`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:58 GMT
ADD file:6d9d6a74afa951c8d6ed986245da43d3ef1e8ff506eb852115a8f3fb9bb37406 in / 
# Sat, 29 Dec 2018 09:23:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 09:23:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:23:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 09:23:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 09:50:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 29 Dec 2018 09:50:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 09:37:20 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Tue, 15 Jan 2019 09:39:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 15 Jan 2019 09:39:29 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 15 Jan 2019 10:13:50 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 15 Jan 2019 10:17:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Tue, 15 Jan 2019 10:17:33 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Tue, 15 Jan 2019 10:17:35 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Tue, 15 Jan 2019 10:17:39 GMT
ARG LIBERTY_URL
# Tue, 15 Jan 2019 10:17:42 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 15 Jan 2019 10:18:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Tue, 15 Jan 2019 10:18:05 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Jan 2019 10:18:07 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Tue, 15 Jan 2019 10:18:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 15 Jan 2019 10:18:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 15 Jan 2019 10:18:21 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Tue, 15 Jan 2019 10:18:40 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Tue, 15 Jan 2019 10:18:44 GMT
USER 1001
# Tue, 15 Jan 2019 10:18:47 GMT
EXPOSE 9080 9443
# Tue, 15 Jan 2019 10:18:49 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 15 Jan 2019 10:18:51 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 15 Jan 2019 10:18:55 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 15 Jan 2019 10:19:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 15 Jan 2019 10:25:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 15 Jan 2019 10:25:04 GMT
COPY file:ac67b9ec5d944a8796eed2df8cba9b04b4e624a81a61acf9f6ecb53bc20500c6 in /config/ 
# Tue, 15 Jan 2019 10:25:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
```

-	Layers:
	-	`sha256:5af74ebbdcc6964a3b49166e459dcaa3488a5ec775fe569a3df00985d701f5fe`  
		Last Modified: Mon, 24 Dec 2018 15:15:33 GMT  
		Size: 45.7 MB (45719536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a0e2effd8407e20744e22f0fe4a03e0662f592ae73e0c64296cb3791cc1420`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4010df6e32054b4f1b8e8837d56e47e76318b124ee8bf3b21290453f3e4cd377`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 473.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcb93b360ae95b9fb99120a752a00a14c18411a8f872c992c6d38906fb4ea5c`  
		Last Modified: Sat, 29 Dec 2018 09:26:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0d83c5747ff9067bf31aabc046c163762c60959e3c83c6af3b0771fd471368`  
		Last Modified: Sat, 29 Dec 2018 09:57:38 GMT  
		Size: 2.9 MB (2881550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c0cff2ce6565aa943a9f827ac06936c3272a705852b8ca696fb70da2437c8c`  
		Last Modified: Tue, 15 Jan 2019 09:44:15 GMT  
		Size: 141.9 MB (141909538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff7e0758e5f28a8731352761e2725e5bd808da4c971d6b7309aed4dcdd0a621`  
		Last Modified: Tue, 15 Jan 2019 10:58:10 GMT  
		Size: 456.1 KB (456134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed74c927a0d0810509eab1d37734a4f4494e51f66b634e7e07363e4b080dbdf`  
		Last Modified: Tue, 15 Jan 2019 10:58:07 GMT  
		Size: 40.6 KB (40635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42512888cebbe4c4cdb203b26b4558b3afcc117079badf5dc7d29a00e67e90a`  
		Last Modified: Tue, 15 Jan 2019 10:58:10 GMT  
		Size: 12.7 MB (12651793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb8fedb02367148aa4ea4ab0a5ccf20c2caa43bcd11437ecd7c33e7f8cb7145`  
		Last Modified: Tue, 15 Jan 2019 10:58:07 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8add9db8c1a0e88af5817f914634aecf4d6ec6fc092e96e5940004df89a255`  
		Last Modified: Tue, 15 Jan 2019 10:58:07 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311cc102837026a6bae85657cc0547df36f6d8f8ae8d70eda2bbf05a28e6c2b2`  
		Last Modified: Tue, 15 Jan 2019 10:58:10 GMT  
		Size: 12.7 MB (12652745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332376018027dedcf1f4434487bae5113df8400c2e69f1c4eca5f7b0934b976f`  
		Last Modified: Tue, 15 Jan 2019 10:59:19 GMT  
		Size: 102.3 MB (102255736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5336a29d374757ec7a1dd619ef30c0a2c68154ff3ba0a7a188387a0c474426e0`  
		Last Modified: Tue, 15 Jan 2019 10:59:00 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6bbeed6fe5daadfe2de04c34219ba3e07579db524a566d0bdbf8d145ec48d5`  
		Last Modified: Tue, 15 Jan 2019 10:59:05 GMT  
		Size: 16.0 MB (16029866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2cc61e81e0f9cbfa71df3abaf795dd9af1d5b48982ffb7893c1bd7eb06e63022
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316497103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca21a3d88e6b937c79ca1ee3b319ea89045b93e11f2d21ce71e88924af62602c`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 29 Dec 2018 12:49:04 GMT
ADD file:a7f3308c75dc79a48db4ba7335b3d6788078a010d65fbfdec844ae7f052ee02b in / 
# Sat, 29 Dec 2018 12:49:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:49:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:49:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:49:07 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 16:10:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 29 Dec 2018 16:10:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 15 Jan 2019 12:49:04 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Tue, 15 Jan 2019 12:49:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 15 Jan 2019 12:49:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 15 Jan 2019 13:16:55 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 15 Jan 2019 13:17:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Tue, 15 Jan 2019 13:17:34 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Tue, 15 Jan 2019 13:17:34 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Tue, 15 Jan 2019 13:17:35 GMT
ARG LIBERTY_URL
# Tue, 15 Jan 2019 13:17:35 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 15 Jan 2019 13:17:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Tue, 15 Jan 2019 13:17:38 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Jan 2019 13:17:39 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Tue, 15 Jan 2019 13:17:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 15 Jan 2019 13:17:40 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 15 Jan 2019 13:17:40 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Tue, 15 Jan 2019 13:17:42 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Tue, 15 Jan 2019 13:17:42 GMT
USER 1001
# Tue, 15 Jan 2019 13:17:42 GMT
EXPOSE 9080 9443
# Tue, 15 Jan 2019 13:17:42 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 15 Jan 2019 13:17:42 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 15 Jan 2019 13:17:43 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 15 Jan 2019 13:17:48 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 15 Jan 2019 13:21:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 15 Jan 2019 13:21:20 GMT
COPY file:ac67b9ec5d944a8796eed2df8cba9b04b4e624a81a61acf9f6ecb53bc20500c6 in /config/ 
# Tue, 15 Jan 2019 13:21:35 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
```

-	Layers:
	-	`sha256:8ee1f69e72506ba59280fd55bc774416d7f5844ced4a15796318b4d5e0843d34`  
		Last Modified: Mon, 24 Dec 2018 15:15:52 GMT  
		Size: 42.4 MB (42385419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854b8723f1921f434b97a8da82acfc94ff0aba7829672de7d62bdec4655306e`  
		Last Modified: Sat, 29 Dec 2018 12:49:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f64588d33d21ee03f38aae80bee43aa1eda54419611f307e8914456d0b78598`  
		Last Modified: Sat, 29 Dec 2018 12:49:57 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f9c4adda7454681e9c0b1ca6b30cd4db01f8c0c2a6457b71946b5c59b2697e`  
		Last Modified: Sat, 29 Dec 2018 12:49:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c0f956446db0429f78c1b7d47dcc3e06702367afaad9fed769a2d484cc42da`  
		Last Modified: Sat, 29 Dec 2018 16:13:04 GMT  
		Size: 2.8 MB (2766907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752064cb423dafd0a0494d687e14811a54741d94d75e22d39d15f347de6eb827`  
		Last Modified: Tue, 15 Jan 2019 12:51:40 GMT  
		Size: 127.3 MB (127271943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07543a3323691f3afbf22812478cb3a7febf0807c3e43d277dcbdd6f51465997`  
		Last Modified: Tue, 15 Jan 2019 13:39:49 GMT  
		Size: 430.3 KB (430274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:129d8eb781c4efb119fcd83efe92a7c53670343f38d4cc00a7e5f655fe090a41`  
		Last Modified: Tue, 15 Jan 2019 13:39:48 GMT  
		Size: 40.6 KB (40636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bfc686a671bd3cadf6d0c5973c772dcea497230faaaca58ab70dff6b5bd5ad`  
		Last Modified: Tue, 15 Jan 2019 13:39:49 GMT  
		Size: 12.7 MB (12651730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f592a852ac3546447467259a596c294d15a21da7e0e3d170616e5ab238abffdc`  
		Last Modified: Tue, 15 Jan 2019 13:39:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01025eeee1e8a54d5c611bc421581cf65a85a6071159eeab05b6dad6d5f590a7`  
		Last Modified: Tue, 15 Jan 2019 13:39:48 GMT  
		Size: 974.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34f3e6d05c99613c82292a7add8af2b47a1dd0f3c85037d1e3bed9ce213ae9b`  
		Last Modified: Tue, 15 Jan 2019 13:39:50 GMT  
		Size: 12.7 MB (12652693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bdf91d58770cce5bc460239dd48852a9edbc57c212ce1976529b39eedcd2ee`  
		Last Modified: Tue, 15 Jan 2019 13:40:23 GMT  
		Size: 102.3 MB (102251925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522c3631e75332d0d2faa6f254da2cebb86afa7a4b9d3c7188ea5e82927a6822`  
		Last Modified: Tue, 15 Jan 2019 13:40:16 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fb1a3005e70dc8ee85f5b82eb71d2499e9914dc47ad983425ae951fe9a31f7`  
		Last Modified: Tue, 15 Jan 2019 13:40:19 GMT  
		Size: 16.0 MB (16041492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
