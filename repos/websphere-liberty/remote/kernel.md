## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:5e70588caa03594b455381612dfb10443dda8401fadbb48f819bc89a285c8d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:e75144a791329b1f0200e4be808a0835d88a9bc790b255a617958dbe7c8046ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200398556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa4a51efe7e723c6c1caa6d86b47339f1e908f64d8ca2717dfa34bcde20b3e9`
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

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:600a7e1beac5023ed4c27f54281fead540e36804a663e2731091fb5f2d21915f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188664002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4e232617dc6096b8bc79165e220422553274d65655c79546a8c0a607c660778`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
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
# Thu, 24 Jan 2019 04:02:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Thu, 24 Jan 2019 04:02:59 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Thu, 24 Jan 2019 04:02:59 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Thu, 24 Jan 2019 04:02:59 GMT
ARG LIBERTY_URL
# Thu, 24 Jan 2019 04:02:59 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 24 Jan 2019 04:03:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Thu, 24 Jan 2019 04:03:03 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 04:03:04 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Thu, 24 Jan 2019 04:03:04 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 24 Jan 2019 04:03:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 24 Jan 2019 04:03:05 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Thu, 24 Jan 2019 04:03:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Thu, 24 Jan 2019 04:03:07 GMT
USER 1001
# Thu, 24 Jan 2019 04:03:07 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 04:03:08 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 24 Jan 2019 04:03:08 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Thu, 24 Jan 2019 04:03:08 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:cc49bb47326e915ab387acfb837f98d98f30742187179dea6fe6d927967c8b0f`  
		Last Modified: Thu, 24 Jan 2019 04:28:36 GMT  
		Size: 423.6 KB (423623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71104c1b8059357a82a0dbb4c99117123d31f4512b3f5393c6ffd3f378478027`  
		Last Modified: Thu, 24 Jan 2019 04:28:35 GMT  
		Size: 40.6 KB (40634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefada6f77c7b08ccef637cb00271b96de434aaa5058c31fb5e32f3b116aa735`  
		Last Modified: Thu, 24 Jan 2019 04:28:37 GMT  
		Size: 12.7 MB (12651731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390a1af57b4c643138a699ff0441cc2b33195fa42368d5f0f954620fd47c7527`  
		Last Modified: Thu, 24 Jan 2019 04:28:34 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b878b99ae891cecba1fec7160ded556331d96f348b48031dc85ad856682675`  
		Last Modified: Thu, 24 Jan 2019 04:28:35 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14f9448fc5fc12edab8bfc7cb0e4c4433da25f68e7da820b8e63cb8eecfc1a8`  
		Last Modified: Thu, 24 Jan 2019 04:28:37 GMT  
		Size: 12.7 MB (12652687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:73d058ade9e2582b331d27acc914b07d37bed083b00553a1b30041e00e3cc7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.4 MB (216351000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ded0864b618f18ca000fa4cf0e36539f0430caa2110bde7864c98b9ed7c50c`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
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
# Wed, 23 Jan 2019 15:35:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 23 Jan 2019 15:35:48 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Wed, 23 Jan 2019 15:35:52 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Wed, 23 Jan 2019 15:35:55 GMT
ARG LIBERTY_URL
# Wed, 23 Jan 2019 15:36:00 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 23 Jan 2019 15:36:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 23 Jan 2019 15:36:26 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 15:36:30 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Wed, 23 Jan 2019 15:36:36 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 23 Jan 2019 15:36:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 23 Jan 2019 15:36:47 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Wed, 23 Jan 2019 15:37:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 23 Jan 2019 15:37:26 GMT
USER 1001
# Wed, 23 Jan 2019 15:37:34 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:37:39 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 15:37:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 23 Jan 2019 15:37:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:41f87cd7d267e3ee684ea6c3846c9d005dc72b84105113d665339893119d47e6`  
		Last Modified: Wed, 23 Jan 2019 16:20:21 GMT  
		Size: 456.1 KB (456147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0422aea8a74dd8282b4dbc348bfc20b04621cfd6885860d48a034c45dd941d7d`  
		Last Modified: Wed, 23 Jan 2019 16:20:18 GMT  
		Size: 40.6 KB (40635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ae7e9134fb37838851475b47045ff658b0b908134965da182d5777ef9eff5c`  
		Last Modified: Wed, 23 Jan 2019 16:20:22 GMT  
		Size: 12.7 MB (12651810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676ea39fcd99ea885e0cbc3e8bd65ab32ee911c473ba32b3ded7fbba9c19fd06`  
		Last Modified: Wed, 23 Jan 2019 16:20:18 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47414a86eb1f890bb7c2941ddc7e09c59ed8d084dc855ccec6c756436db31a79`  
		Last Modified: Wed, 23 Jan 2019 16:20:17 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdd9902a15e41e12c2cb14d47b00895f697441111d2df402311af23ca0a1c26`  
		Last Modified: Wed, 23 Jan 2019 16:20:22 GMT  
		Size: 12.7 MB (12652758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:6c551f7a46f9b4c34ccd5b18cc45cf0ae582fbf3e7a295024a4a52289ba3d05a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.3 MB (198253894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ff821fe9353ea2c80ca6e1f90e7ac07770b56176be29052f4e988d423f661d`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
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
# Wed, 23 Jan 2019 19:53:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 23 Jan 2019 19:53:22 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Wed, 23 Jan 2019 19:53:23 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Wed, 23 Jan 2019 19:53:23 GMT
ARG LIBERTY_URL
# Wed, 23 Jan 2019 19:53:23 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 23 Jan 2019 19:53:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 23 Jan 2019 19:53:28 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 19:53:28 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Wed, 23 Jan 2019 19:53:28 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 23 Jan 2019 19:53:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 23 Jan 2019 19:53:30 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Wed, 23 Jan 2019 19:53:33 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 23 Jan 2019 19:53:33 GMT
USER 1001
# Wed, 23 Jan 2019 19:53:34 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:53:34 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 19:53:34 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 23 Jan 2019 19:53:35 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:c69723838eb73a69fac638f0f95beff49fef2685a518fa4023611372f96c16dc`  
		Last Modified: Wed, 23 Jan 2019 20:20:49 GMT  
		Size: 430.3 KB (430283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e704b831bf598840bbd326668d78dd279a26696a0875c24f99c6a55076252e6`  
		Last Modified: Wed, 23 Jan 2019 20:20:48 GMT  
		Size: 40.6 KB (40635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdef9bca030b5f34e73a1827be8d57c444c94b63db0c4ff9314dae022a56f237`  
		Last Modified: Wed, 23 Jan 2019 20:20:50 GMT  
		Size: 12.7 MB (12651730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5541716f9669236045537b7d4d37d1988f559ff49acfe9d49f2d81257817600`  
		Last Modified: Wed, 23 Jan 2019 20:20:47 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92675e27002977053fe30f5b7d77c8ae26b25adde27daa7e1701b098798cccf5`  
		Last Modified: Wed, 23 Jan 2019 20:20:48 GMT  
		Size: 974.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1d6bc4bec3347be09460cc208250c8de6cbea4fde090fa16b1db53aa88e45e`  
		Last Modified: Wed, 23 Jan 2019 20:20:49 GMT  
		Size: 12.7 MB (12652687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
