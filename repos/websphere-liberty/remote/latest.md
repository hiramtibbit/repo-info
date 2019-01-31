## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:753f29fa7b48f0afdd73d2cf6daa4beffa1ce1110c7cc1373a184cae20e2315a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:b525133fc3a60649a88dd674e81b665be222d5650bd7b899ac65d1b89b37993b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (335048466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e680b2fa184cd4717cf23926864215c486fbdb83146387f5d6dcb93682fb4ac6`
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
# Thu, 31 Jan 2019 05:20:59 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Thu, 31 Jan 2019 05:21:00 GMT
ARG LIBERTY_URL
# Thu, 31 Jan 2019 05:21:00 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 31 Jan 2019 05:21:04 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Thu, 31 Jan 2019 05:21:04 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 05:21:04 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Thu, 31 Jan 2019 05:21:04 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 31 Jan 2019 05:21:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 31 Jan 2019 05:21:06 GMT
COPY dir:08eb71069b100eac99bcaf661e104464e4aab241c0e8edd3bed4831aec8f6674 in /opt/ibm/helpers/ 
# Thu, 31 Jan 2019 05:21:06 GMT
COPY dir:0174732c593b83309ab904670890117e1e163007ef55d32dda0e806ee049c9cc in /licenses/ 
# Thu, 31 Jan 2019 05:21:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Thu, 31 Jan 2019 05:21:08 GMT
USER 1001
# Thu, 31 Jan 2019 05:21:08 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 05:21:08 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 31 Jan 2019 05:21:08 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 31 Jan 2019 05:21:08 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 05:21:12 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 31 Jan 2019 05:31:08 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0 openidConnectClient-1.0 monitor-1.0 microProfile-2.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 31 Jan 2019 05:31:08 GMT
COPY file:cda508ce5a74649f45c3e2d383c40294ca79131a296e7d4dbdb2ffe1e8717733 in /config/ 
# Thu, 31 Jan 2019 05:31:28 GMT
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
	-	`sha256:34afdf15398d7bc34470bc1ce2c4f69d6052cacf29b8969bab5213cee7262b0e`  
		Last Modified: Thu, 31 Jan 2019 05:43:32 GMT  
		Size: 424.7 KB (424702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f9a8f6e7fe13fb3dc0d2ed7e96ab5608e5c26a7905b910facab501006342`  
		Last Modified: Thu, 31 Jan 2019 05:43:33 GMT  
		Size: 12.7 MB (12651735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e21ca8dff848112ca297a45d1e94a6203b3ebd7195ec42fcc5eb223272bc9`  
		Last Modified: Thu, 31 Jan 2019 05:43:31 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358fc68fbffe4119e2af1eee4fd24afc801fd0bd13986afdd5681b6ed808e5d1`  
		Last Modified: Thu, 31 Jan 2019 05:43:32 GMT  
		Size: 2.6 KB (2575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f272c05a5a44e5302183669745d464e82b408373f046c5260a6ccc557396e551`  
		Last Modified: Thu, 31 Jan 2019 05:43:31 GMT  
		Size: 39.9 KB (39937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b740340f893e870dd2bad56f9f5422f33e21fa6c5041dfb16c883007fa93a05`  
		Last Modified: Thu, 31 Jan 2019 05:43:33 GMT  
		Size: 12.7 MB (12653921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a6010ad563e1778eda9430d206abf19b622c4aa4b68841a8f7da1f33b4377c`  
		Last Modified: Thu, 31 Jan 2019 05:45:02 GMT  
		Size: 118.3 MB (118340902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54457d6019bc1ca701aab5ef7ba8f7af24e5459cdae0fe2106381434911b9cb3`  
		Last Modified: Thu, 31 Jan 2019 05:44:52 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c0957681469f58b8696fdb9cc1dffca31b349a645d4323c9ee51bc9053dc77`  
		Last Modified: Thu, 31 Jan 2019 05:44:55 GMT  
		Size: 16.3 MB (16305950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:37ebacb35fb5c022387ae8b8253ff09c7435963207af274a25b327f2c403c31b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323625842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6815a4c1e760b0944e26a559e3a5c1eb00f31a46d95ff1d86fb8ab3e289b2a8f`
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
# Thu, 31 Jan 2019 12:22:10 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Thu, 31 Jan 2019 12:22:11 GMT
ARG LIBERTY_URL
# Thu, 31 Jan 2019 12:22:11 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 31 Jan 2019 12:22:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Thu, 31 Jan 2019 12:22:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 12:22:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Thu, 31 Jan 2019 12:22:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 31 Jan 2019 12:22:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 31 Jan 2019 12:22:17 GMT
COPY dir:08eb71069b100eac99bcaf661e104464e4aab241c0e8edd3bed4831aec8f6674 in /opt/ibm/helpers/ 
# Thu, 31 Jan 2019 12:22:17 GMT
COPY dir:0174732c593b83309ab904670890117e1e163007ef55d32dda0e806ee049c9cc in /licenses/ 
# Thu, 31 Jan 2019 12:22:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Thu, 31 Jan 2019 12:22:19 GMT
USER 1001
# Thu, 31 Jan 2019 12:22:19 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 12:22:20 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 31 Jan 2019 12:22:20 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 31 Jan 2019 12:22:20 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 12:22:23 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 31 Jan 2019 12:33:05 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0 openidConnectClient-1.0 monitor-1.0 microProfile-2.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 31 Jan 2019 12:33:06 GMT
COPY file:cda508ce5a74649f45c3e2d383c40294ca79131a296e7d4dbdb2ffe1e8717733 in /config/ 
# Thu, 31 Jan 2019 12:33:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:12856576ad0f0db2b1f462a7b17737743ee843eb587ffbb3540dce6a1e4e25b3`  
		Last Modified: Thu, 31 Jan 2019 12:46:44 GMT  
		Size: 12.7 MB (12651738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:068601a335f2a2a166993eb7dccc943f06d546667da6771d0798080a389c4579`  
		Last Modified: Thu, 31 Jan 2019 12:46:41 GMT  
		Size: 689.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d883769ef5e105b73432be210e73387ea6e0fb886d2b5955965227b56c8d8a`  
		Last Modified: Thu, 31 Jan 2019 12:46:41 GMT  
		Size: 2.6 KB (2573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3244e05ccb38e4fc638b22797daec5b30a927b6874d7e02a71cc305b8f85a5da`  
		Last Modified: Thu, 31 Jan 2019 12:46:41 GMT  
		Size: 39.9 KB (39931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd33539bd53cdb39f54f915c41f31749bb9549b7a84006c0d0d43101e84e4111`  
		Last Modified: Thu, 31 Jan 2019 12:46:46 GMT  
		Size: 12.7 MB (12653934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e50a284fe71e79dfa359775e4ed178b4b8677a8a10d8f20917b66054b0f1d7e`  
		Last Modified: Thu, 31 Jan 2019 12:48:22 GMT  
		Size: 118.3 MB (118340725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bd076677ee7c297902b5d3a6c8841805a67db3a93c2344deb3471301d2dbfe`  
		Last Modified: Thu, 31 Jan 2019 12:48:10 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfcee84583283a7695d57d0b0bf3ea67113e79411b04fbd54943adbe2c23d01`  
		Last Modified: Thu, 31 Jan 2019 12:48:16 GMT  
		Size: 16.6 MB (16618023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:5725684c9a7465dcc02301905575ba95bf371731a42467ede970df4124250171
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350584580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d43b65486bccdbaa0a1552973b1127ecd4ff36051aec39e20a2fc4d1c038a1`
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
# Thu, 31 Jan 2019 09:51:40 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Thu, 31 Jan 2019 09:51:42 GMT
ARG LIBERTY_URL
# Thu, 31 Jan 2019 09:51:44 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 31 Jan 2019 09:51:58 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Thu, 31 Jan 2019 09:52:00 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 09:52:02 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Thu, 31 Jan 2019 09:52:04 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 31 Jan 2019 09:52:11 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 31 Jan 2019 09:52:13 GMT
COPY dir:08eb71069b100eac99bcaf661e104464e4aab241c0e8edd3bed4831aec8f6674 in /opt/ibm/helpers/ 
# Thu, 31 Jan 2019 09:52:14 GMT
COPY dir:0174732c593b83309ab904670890117e1e163007ef55d32dda0e806ee049c9cc in /licenses/ 
# Thu, 31 Jan 2019 09:52:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Thu, 31 Jan 2019 09:52:46 GMT
USER 1001
# Thu, 31 Jan 2019 09:52:48 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 09:52:49 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 31 Jan 2019 09:52:50 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 31 Jan 2019 09:52:51 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 09:53:01 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 31 Jan 2019 10:11:25 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0 openidConnectClient-1.0 monitor-1.0 microProfile-2.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 31 Jan 2019 10:11:28 GMT
COPY file:cda508ce5a74649f45c3e2d383c40294ca79131a296e7d4dbdb2ffe1e8717733 in /config/ 
# Thu, 31 Jan 2019 10:12:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:bc99c67fd5c1f16b5fcba0a4004a72d47f8a52b613aa235c7d704d45210d0a67`  
		Last Modified: Thu, 31 Jan 2019 10:32:15 GMT  
		Size: 12.7 MB (12651811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab3f415b973046e406ba4753c44c01f53edb1ed08d12a09c58cf6689e1bf800`  
		Last Modified: Thu, 31 Jan 2019 10:32:11 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e07328aec13c943df83eb93027245d0faf3f81b262bc35d89fc83fe953ceba`  
		Last Modified: Thu, 31 Jan 2019 10:32:11 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e61d36bb9ed2cb9b5f4157316693e627a8fd7280a51fc85b890f864fff6c45`  
		Last Modified: Thu, 31 Jan 2019 10:32:12 GMT  
		Size: 39.9 KB (39935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e366da7ebade62f8ebf2659eb17b4c892b0fdc0a913fae9cebd2993e62a18a9`  
		Last Modified: Thu, 31 Jan 2019 10:32:14 GMT  
		Size: 12.7 MB (12653984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076d8827623e4cb244585c1c39f4ccbb5c44135d1b595cfca032ed4b9be7fca1`  
		Last Modified: Thu, 31 Jan 2019 10:34:30 GMT  
		Size: 118.3 MB (118346676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99027b955f0ce500fba0747ba1f1d430c22ecd4a817459cc5c2234294fc53178`  
		Last Modified: Thu, 31 Jan 2019 10:34:18 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb3dacbe1345f93c45f3e9c4964c44d1f85d2855d99e011d31c295db71985a3`  
		Last Modified: Thu, 31 Jan 2019 10:34:21 GMT  
		Size: 15.9 MB (15883814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f7d6c8a3617dd56415c0978539e749dafe52add5de2a24d49d521b283f5f2db5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332878972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d671626f0668b315bf6bf8d8700fab1e3db43f039771052bfd0483adef51b03`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 23 Jan 2019 12:52:07 GMT
ADD file:08289321494eb22637fb93a0723cf11fb425a331162c576d7bb9fd25a9cc35c3 in / 
# Wed, 23 Jan 2019 12:52:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:52:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:52:11 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 16:14:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 23 Jan 2019 16:14:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:14:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Wed, 23 Jan 2019 16:15:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b702bd21f70fbb2981bf4259d068cfa8a82a4eb9bc8a3dfef17e1c1a995399c4';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='1f2e55282129b4006d7ecb5876a92c5c2f9c1c2f12e71663e47bbaa72e4ed4f5';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='40533ee60330deb7fbb2bcf77db1daacee7727e5d03d6fac4f5f4440ee4ab995';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8edc2722bfbf84eeca4855642c7ff912d240bd973836f4fa2f73fa7c5abeef7c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='55bb6582adbc1a1cc598680e77d8e08e78565514317e949120099af11c73926e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 23 Jan 2019 16:15:16 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 23 Jan 2019 19:51:57 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 31 Jan 2019 13:06:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Thu, 31 Jan 2019 13:06:59 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Thu, 31 Jan 2019 13:06:59 GMT
ARG LIBERTY_URL
# Thu, 31 Jan 2019 13:06:59 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 31 Jan 2019 13:07:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Thu, 31 Jan 2019 13:07:03 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 13:07:03 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Thu, 31 Jan 2019 13:07:03 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 31 Jan 2019 13:07:04 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 31 Jan 2019 13:07:05 GMT
COPY dir:08eb71069b100eac99bcaf661e104464e4aab241c0e8edd3bed4831aec8f6674 in /opt/ibm/helpers/ 
# Thu, 31 Jan 2019 13:07:05 GMT
COPY dir:0174732c593b83309ab904670890117e1e163007ef55d32dda0e806ee049c9cc in /licenses/ 
# Thu, 31 Jan 2019 13:07:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Thu, 31 Jan 2019 13:07:06 GMT
USER 1001
# Thu, 31 Jan 2019 13:07:07 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 13:07:07 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 31 Jan 2019 13:07:07 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 31 Jan 2019 13:07:07 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 13:07:12 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 31 Jan 2019 13:17:08 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0 openidConnectClient-1.0 monitor-1.0 microProfile-2.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 31 Jan 2019 13:17:08 GMT
COPY file:cda508ce5a74649f45c3e2d383c40294ca79131a296e7d4dbdb2ffe1e8717733 in /config/ 
# Thu, 31 Jan 2019 13:17:24 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
```

-	Layers:
	-	`sha256:9c7e46508b14d7473a33393205faefa591dc4242d5a67c7fa84c9993a6fa6158`  
		Last Modified: Wed, 23 Jan 2019 12:53:27 GMT  
		Size: 42.4 MB (42436570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb59c4ea40f8a8cd63dba2bf51cd103dc60eb923cc2822bc84cb17f700dc7a5f`  
		Last Modified: Wed, 23 Jan 2019 12:53:18 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7bec31254177ec8407fc338ab04cc2196d5463916e52ae0d7bd6d8878e214c`  
		Last Modified: Wed, 23 Jan 2019 12:53:18 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8b19a41c2ba2e382d5fc5e838f5ae53ff443798b936e648532cc446145b696`  
		Last Modified: Wed, 23 Jan 2019 12:53:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af87962c011f3c3ef12be46d088d57ba80d4f177a777214f521b92e9ea83d9d`  
		Last Modified: Wed, 23 Jan 2019 16:17:28 GMT  
		Size: 2.8 MB (2766810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cdfe719281b6a5891e1fd699a50fd97cf406c9c93f05a7168729d10c2afa78`  
		Last Modified: Wed, 23 Jan 2019 16:17:40 GMT  
		Size: 127.3 MB (127272035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8409802caf01ed149578135939974a10a549cb6aa9ad52e9270fd4deafc7a639`  
		Last Modified: Thu, 31 Jan 2019 13:29:41 GMT  
		Size: 430.3 KB (430286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d124d0fdb8321b355b20e575b20f9efa452cd8192fde1dde8cf4610309176f94`  
		Last Modified: Thu, 31 Jan 2019 13:29:42 GMT  
		Size: 12.7 MB (12651743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7640c3cff3a86a246622ac3ab94e7ef2f74efbd0f1c418ec917e8fef6bbc93`  
		Last Modified: Thu, 31 Jan 2019 13:29:41 GMT  
		Size: 690.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26da68a675c2aeb9227cddb1bc846d2a42a86a1b9a2f23674441e9d34b167660`  
		Last Modified: Thu, 31 Jan 2019 13:29:40 GMT  
		Size: 2.6 KB (2573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d12206a1bfe5ba366a953f04991bb65edd300544895828f43d2de0d950b567`  
		Last Modified: Thu, 31 Jan 2019 13:29:40 GMT  
		Size: 39.9 KB (39931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9191aefbd9bab08da5ff8327f828ec3f0b82f51a0edc1943dfbd5d70d978fef0`  
		Last Modified: Thu, 31 Jan 2019 13:29:42 GMT  
		Size: 12.7 MB (12653923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca4dbafc9b3db0e9400d2c323358463ddc2dffc09447ca7e9d767f21ca1393b`  
		Last Modified: Thu, 31 Jan 2019 13:31:08 GMT  
		Size: 118.3 MB (118340743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186df56f4b2f8ea96ea7ef8bfe702065049ea7b8369e5222330f1e55e29a9963`  
		Last Modified: Thu, 31 Jan 2019 13:31:00 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2196acc8243d1c4abd6a1a72cd1fd5eb10401f7732df70cede177abd71862e9a`  
		Last Modified: Thu, 31 Jan 2019 13:31:03 GMT  
		Size: 16.3 MB (16281249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
