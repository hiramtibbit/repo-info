## `websphere-liberty:springBoot2`

```console
$ docker pull websphere-liberty@sha256:7fa1b5ed22629d988c1a9d29b44b0c4b3d3e34a53234c7985006518a12e519d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `websphere-liberty:springBoot2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:ccbb34a5455724bfad829e48d3b0a8c3d681e322f4aa5b1fbf3cd905d303c752
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230117159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb4be2469d6cace6fca7aee31d70cf5af416293666318400cbb0d719ec1a2d0`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
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
# Thu, 31 Jan 2019 05:20:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Fri, 01 Feb 2019 23:20:06 GMT
ENV LIBERTY_VERSION=19.0.0_01
# Fri, 01 Feb 2019 23:20:06 GMT
ARG LIBERTY_URL
# Fri, 01 Feb 2019 23:20:07 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 01 Feb 2019 23:20:11 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Fri, 01 Feb 2019 23:20:11 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Feb 2019 23:20:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.1
# Fri, 01 Feb 2019 23:20:11 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 01 Feb 2019 23:20:13 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 01 Feb 2019 23:20:13 GMT
COPY dir:056ff69ba065ac08a4fa6e93b6d3c9db1715e2a628045b890b1d2c98b0ebe6cd in /opt/ibm/helpers/ 
# Fri, 01 Feb 2019 23:20:14 GMT
COPY dir:20ba52f70d7ee9a58fbfb2097c8199f90e28f5e5410ef1e0c12c63d2cf799718 in /licenses/ 
# Fri, 01 Feb 2019 23:20:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 01 Feb 2019 23:20:16 GMT
USER 1001
# Fri, 01 Feb 2019 23:20:16 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:20:16 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 01 Feb 2019 23:20:16 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 01 Feb 2019 23:20:16 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:20:20 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 01 Feb 2019 23:35:38 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 01 Feb 2019 23:35:38 GMT
COPY file:3dbc7012596d01298b61adec3a50686ea3c8a1d1ac8b3161e2ede589a9f1c2c0 in /config/ 
# Fri, 01 Feb 2019 23:35:48 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:34afdf15398d7bc34470bc1ce2c4f69d6052cacf29b8969bab5213cee7262b0e`  
		Last Modified: Thu, 31 Jan 2019 05:43:32 GMT  
		Size: 424.7 KB (424702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a69d4d01461d9e890d1c0aa77e9aeac00098aff7197eda0d2e193cc186e72c`  
		Last Modified: Fri, 01 Feb 2019 23:42:56 GMT  
		Size: 12.9 MB (12876058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb817bf5c90c951fd4bfd87facfcc562b6389438b96ee37ce50d7f88fd190c3d`  
		Last Modified: Fri, 01 Feb 2019 23:42:55 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb9f104335d00862b16879e1c6aa3791b0d75bc6c084627a050c0cb10b3e83c`  
		Last Modified: Fri, 01 Feb 2019 23:42:55 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7714cd589690c864f1fba7b295e3a8ff9e6e5d2ea2f2795116aad563fbe3764d`  
		Last Modified: Fri, 01 Feb 2019 23:42:55 GMT  
		Size: 40.4 KB (40421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5191570a22765c554bea02cc9eea2630176c7888fa04076a0488f598ba1f644`  
		Last Modified: Fri, 01 Feb 2019 23:42:56 GMT  
		Size: 12.9 MB (12880906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64896fe1a5f663cb4a4166908d59eb806bb18e54fc96a1bd210afc6848ab8f6f`  
		Last Modified: Fri, 01 Feb 2019 23:44:58 GMT  
		Size: 20.5 MB (20511140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf27fbdb85da046c762ef69a9834551f55cf235952f6eecb6995e82a9c9636a`  
		Last Modified: Fri, 01 Feb 2019 23:44:56 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bc52760ea30639752f4b0c34ad382ccdf6cc78d9fd228daf7576fa86c84774`  
		Last Modified: Fri, 01 Feb 2019 23:44:58 GMT  
		Size: 8.8 MB (8752792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:ca296b150060cdb33aff0ad49d96d716e89229543dc540d3f9234b242eca452f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218580049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a072219b3f03fb9f0534f3e369ac10651ae3e002e9bfc8e8861961856bf85a40`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:10:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 24 Jan 2019 00:11:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:11:01 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 24 Jan 2019 00:11:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 24 Jan 2019 00:11:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 24 Jan 2019 04:02:15 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 31 Jan 2019 12:22:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Sat, 02 Feb 2019 12:22:11 GMT
ENV LIBERTY_VERSION=19.0.0_01
# Sat, 02 Feb 2019 12:22:11 GMT
ARG LIBERTY_URL
# Sat, 02 Feb 2019 12:22:11 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 02 Feb 2019 12:22:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 02 Feb 2019 12:22:16 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Feb 2019 12:22:16 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.1
# Sat, 02 Feb 2019 12:22:16 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 02 Feb 2019 12:22:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 02 Feb 2019 12:22:18 GMT
COPY dir:056ff69ba065ac08a4fa6e93b6d3c9db1715e2a628045b890b1d2c98b0ebe6cd in /opt/ibm/helpers/ 
# Sat, 02 Feb 2019 12:22:18 GMT
COPY dir:20ba52f70d7ee9a58fbfb2097c8199f90e28f5e5410ef1e0c12c63d2cf799718 in /licenses/ 
# Sat, 02 Feb 2019 12:22:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 02 Feb 2019 12:22:20 GMT
USER 1001
# Sat, 02 Feb 2019 12:22:21 GMT
EXPOSE 9080 9443
# Sat, 02 Feb 2019 12:22:21 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Feb 2019 12:22:21 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 02 Feb 2019 12:22:21 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Feb 2019 12:22:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 02 Feb 2019 12:37:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 02 Feb 2019 12:37:59 GMT
COPY file:3dbc7012596d01298b61adec3a50686ea3c8a1d1ac8b3161e2ede589a9f1c2c0 in /config/ 
# Sat, 02 Feb 2019 12:38:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faec2cf6b21a19bbbcbadb7380e171c8852883f5c292c4bd2b0a0a68dc205e3a`  
		Last Modified: Thu, 24 Jan 2019 00:13:48 GMT  
		Size: 2.9 MB (2876869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bd3bb70cab42d802c22e8568cf08bd93e335f04669587da13adfa3ee7e3fe2`  
		Last Modified: Thu, 24 Jan 2019 00:14:00 GMT  
		Size: 116.3 MB (116280786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80994c4566089513a237f0ebff7b9d9c90742ecb58cf7577d62b97e54e20918`  
		Last Modified: Thu, 31 Jan 2019 12:46:42 GMT  
		Size: 423.6 KB (423631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aea619a61569aa4024613966c6a371c20f55d19fca86427be496964d6c6345ae`  
		Last Modified: Sat, 02 Feb 2019 12:45:19 GMT  
		Size: 12.9 MB (12876055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8416b4c04c5c2b5d69093b8ed8175ea8efbdb627514600d54c4a2619a5a3f3a2`  
		Last Modified: Sat, 02 Feb 2019 12:45:16 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e16f3eb4788ee035a619dea0c10ce94ae473bc1e0553acc01e327f6f3d8f6ed`  
		Last Modified: Sat, 02 Feb 2019 12:45:16 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d23142d17164a73477584efffc45b3353b47f0cf21ba092fd103e04183a9c4a`  
		Last Modified: Sat, 02 Feb 2019 12:45:16 GMT  
		Size: 40.4 KB (40422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f8eb6d1c8a29191e5d6bce45ca46779ec44353eb946b5db27fd6b68b66516d`  
		Last Modified: Sat, 02 Feb 2019 12:45:19 GMT  
		Size: 12.9 MB (12880927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405e809fcebaf948e5520156a3d4dc13d4d2d1a0155754f1acc945fddf3b85d5`  
		Last Modified: Sat, 02 Feb 2019 12:47:37 GMT  
		Size: 20.5 MB (20511174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a2a628e9975c9baa3ec5a8bad156f4ef1be1b2ae04aee9f2e770de7d6f2ce`  
		Last Modified: Sat, 02 Feb 2019 12:47:35 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dc4c6f47bb3e465d84cb6935aa306476f7a19f20392ad6cbfb24f6e7d8f33d`  
		Last Modified: Sat, 02 Feb 2019 12:47:39 GMT  
		Size: 9.0 MB (8950165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:440c32f0377ce321b0ade92cfd1d7161363eaa2083d7bfae1e047aad653a216a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246026898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feebe3e204b41458a88768a60bd198551667682c5a4db4dc2b1e4504190dc0a4`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 23 Jan 2019 09:28:13 GMT
ADD file:aec768251a7e90511499719ee923ca4244a40a91e22c26aa2d8bce9c81bd5d19 in / 
# Wed, 23 Jan 2019 09:28:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 09:28:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:28:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 09:28:41 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:47:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 23 Jan 2019 09:48:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:48:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Wed, 23 Jan 2019 09:50:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 23 Jan 2019 09:50:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 23 Jan 2019 15:26:54 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 31 Jan 2019 09:51:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Sat, 02 Feb 2019 09:29:09 GMT
ENV LIBERTY_VERSION=19.0.0_01
# Sat, 02 Feb 2019 09:29:11 GMT
ARG LIBERTY_URL
# Sat, 02 Feb 2019 09:29:13 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 02 Feb 2019 09:29:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 02 Feb 2019 09:29:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Feb 2019 09:29:46 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.1
# Sat, 02 Feb 2019 09:29:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 02 Feb 2019 09:29:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 02 Feb 2019 09:30:00 GMT
COPY dir:056ff69ba065ac08a4fa6e93b6d3c9db1715e2a628045b890b1d2c98b0ebe6cd in /opt/ibm/helpers/ 
# Sat, 02 Feb 2019 09:30:01 GMT
COPY dir:20ba52f70d7ee9a58fbfb2097c8199f90e28f5e5410ef1e0c12c63d2cf799718 in /licenses/ 
# Sat, 02 Feb 2019 09:30:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 02 Feb 2019 09:30:39 GMT
USER 1001
# Sat, 02 Feb 2019 09:30:42 GMT
EXPOSE 9080 9443
# Sat, 02 Feb 2019 09:30:45 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Feb 2019 09:30:47 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 02 Feb 2019 09:30:49 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Feb 2019 09:31:03 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 02 Feb 2019 09:57:26 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 02 Feb 2019 09:57:27 GMT
COPY file:3dbc7012596d01298b61adec3a50686ea3c8a1d1ac8b3161e2ede589a9f1c2c0 in /config/ 
# Sat, 02 Feb 2019 09:57:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:27c5699b8c52ce27c65457ba76aed121c9d73735b44e558208283a65a0612a9f`  
		Last Modified: Wed, 23 Jan 2019 09:31:48 GMT  
		Size: 45.8 MB (45755621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e836b60d364cc0caa1b5a89134407a743726dd6a0ceb2b247568b032cbe3baac`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67624f96cb7ef04892162d293e5ca58002d27f16d1663766177a1c82702afb86`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a51d89d6a04f68aba77dc3522c4cc3e64fcea82f0d9dc6dc8fbfabfab2e503`  
		Last Modified: Wed, 23 Jan 2019 09:31:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb45e75c1cefff3230981c06afb1f90e97fcff54daa27b1bdc3693cadd9fa53`  
		Last Modified: Wed, 23 Jan 2019 09:56:17 GMT  
		Size: 2.9 MB (2881262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7444c523e5fea2cdfc4fe6d9ec2bf3f97f25c85fe2323e1683698d6f37019838`  
		Last Modified: Wed, 23 Jan 2019 09:56:34 GMT  
		Size: 141.9 MB (141909539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b18efff72c0dc159fd84fd6ea244f1a84f4033ebda93efd24c43c82eff00348`  
		Last Modified: Thu, 31 Jan 2019 10:32:14 GMT  
		Size: 456.2 KB (456174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1445f26acb07618ab68d3f5e4361da0a6ab950e0b22c7be64c7b9842777f81c`  
		Last Modified: Sat, 02 Feb 2019 10:10:28 GMT  
		Size: 12.9 MB (12876149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9f3329546b1d5b1fd77149bd403a1df49e916e9f495055974505adbdb1852`  
		Last Modified: Sat, 02 Feb 2019 10:10:25 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16f841a3de875b6f9440520453426d772788dece72f83cc0680beef48a46f6b`  
		Last Modified: Sat, 02 Feb 2019 10:10:25 GMT  
		Size: 2.8 KB (2808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a56c30fbcd610aae890ea34a83cbbadd68a2710f122cb753e1e83f4dedb445`  
		Last Modified: Sat, 02 Feb 2019 10:10:25 GMT  
		Size: 40.4 KB (40422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ede9be3dfcdb8ab5f2c373679b9c4157a91074b5e02152ea701c6bee00acf4a`  
		Last Modified: Sat, 02 Feb 2019 10:10:28 GMT  
		Size: 12.9 MB (12881059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79fa4b722611dd932de9085b5b6717977cf0d70703b73e36387c4a8cdd466bf`  
		Last Modified: Sat, 02 Feb 2019 10:14:00 GMT  
		Size: 20.5 MB (20511898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a488ab55bb914a2920c31784f0a8479d75665e94e68b0a32cfc0599d3167e944`  
		Last Modified: Sat, 02 Feb 2019 10:13:57 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5a922b309acddd966d5ba5c843ec1af30d207db055b8520d4826d6d696b6fc`  
		Last Modified: Sat, 02 Feb 2019 10:14:00 GMT  
		Size: 8.7 MB (8709189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
