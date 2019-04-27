## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:fab43bb0503e39a1920caef9337b6a96758a0a09e8355e0ee7090abdc2b0ec62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:3379e34ccb05b3b3e47fb84d1faf0d1e888a97fe73cda99050f83d64a3335cd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 MB (296586807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6dfc558338f2654ed6366e3e6d6bee64653d131528ab4c4048016ffae2e818`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:31:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Apr 2019 23:31:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:31:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Fri, 26 Apr 2019 23:32:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 26 Apr 2019 23:32:35 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 01:01:13 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Sat, 27 Apr 2019 01:03:40 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Sat, 27 Apr 2019 01:03:40 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Sat, 27 Apr 2019 01:03:41 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 27 Apr 2019 01:03:41 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Sat, 27 Apr 2019 01:03:51 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Sat, 27 Apr 2019 01:03:51 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 27 Apr 2019 01:03:53 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 01:03:53 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Sat, 27 Apr 2019 01:04:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Sat, 27 Apr 2019 01:04:44 GMT
USER 1001
# Sat, 27 Apr 2019 01:04:44 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 01:04:44 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 27 Apr 2019 01:04:45 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 01:04:45 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da5732a982b2ae8bd17a3fac70acc8f0e115496804646f67d3b29dec4ee78c6`  
		Last Modified: Fri, 26 Apr 2019 23:34:41 GMT  
		Size: 3.0 MB (3021162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cafa9adbf1ad92e9b3b9eefb95e62cba403a85819eee21d8f5263f86eb99fc1`  
		Last Modified: Fri, 26 Apr 2019 23:34:52 GMT  
		Size: 129.3 MB (129336778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3424bde86796c2d98cb7c7c524cb37b6c1dc8f407237cc08085f9048f25322ed`  
		Last Modified: Sat, 27 Apr 2019 01:11:31 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e153d596595b88d08bc5863eb3c870a5861060b285f56c7c9934125692ea0c`  
		Last Modified: Sat, 27 Apr 2019 01:11:41 GMT  
		Size: 113.0 MB (113013809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5da78a8a60c0acd832ad6d48e3961ffe2174db91f67e4dec363952305c23fb9`  
		Last Modified: Sat, 27 Apr 2019 01:11:31 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91342c2cc2452158286136fca2d07fa9e268731357dead7700d947441d89892`  
		Last Modified: Sat, 27 Apr 2019 01:11:33 GMT  
		Size: 7.5 MB (7457622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:9df1e0f39886ed153ebf338576359bf49dd7e66317bba1d112856fe4979f361a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285535180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c289f5e9dc9bb3789c93afa6db95d6e0ce27588dabc75942ca7562a6bc2bbee2`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 11:35:18 GMT
ADD file:1ba3cea4bf38cb3dc387648ad667cda3391bbc7c89c61f301f8bfac535791866 in / 
# Tue, 12 Mar 2019 11:35:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:35:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:35:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:35:21 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:15:52 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 12:16:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 11:30:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 11:30:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 11:30:56 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 03 Apr 2019 12:20:12 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Wed, 03 Apr 2019 12:21:17 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Wed, 03 Apr 2019 12:21:17 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Wed, 03 Apr 2019 12:21:17 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 03 Apr 2019 12:21:17 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 03 Apr 2019 12:21:30 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 03 Apr 2019 12:21:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 03 Apr 2019 12:21:31 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 03 Apr 2019 12:21:31 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 04 Apr 2019 11:00:16 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 04 Apr 2019 11:00:17 GMT
USER 1001
# Thu, 04 Apr 2019 11:00:17 GMT
EXPOSE 9080 9443
# Thu, 04 Apr 2019 11:00:17 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 04 Apr 2019 11:00:17 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 04 Apr 2019 11:00:17 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0cffec7e6d2d3b65fa5c53ffb9033949713e7fa5f813e0d8ff84fec99866be56`  
		Last Modified: Mon, 25 Feb 2019 15:26:33 GMT  
		Size: 43.8 MB (43758574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eacc4c503443a80402aec13f1bc53f298e337b8e572e371c933f9b53c6a2c3`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f426864bc7c0b1dd6a9e435173f14ac7810e63364adf8b4d4e8283ce536140`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d721cf76afc58475ca7f96fb7224a6fe61996dc0c8ad6699cb8da12653a76e`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1004f9d9a6a6c7d1ab647314cef927e8df101916e1ca212f8ea1ff42fa4bec`  
		Last Modified: Tue, 12 Mar 2019 12:19:21 GMT  
		Size: 2.9 MB (2876755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199b72cf004c7312bd331217e87e527d9d73a205d287b225d85401e93b84e130`  
		Last Modified: Wed, 03 Apr 2019 11:33:45 GMT  
		Size: 117.8 MB (117791397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d25218a6be3d1121b3a44aa956377ce9d7ae09e7c31c5b7843b8bdd33623566`  
		Last Modified: Wed, 03 Apr 2019 12:25:05 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc16f814dfb29142dead39de36db1d7404f549da2309bbe815e12e9fbaf2bfa3`  
		Last Modified: Wed, 03 Apr 2019 12:25:16 GMT  
		Size: 113.4 MB (113362677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70df99524b8323b90ab08c9d121175e1e3f1d6cf421f84ccc88371f662213714`  
		Last Modified: Wed, 03 Apr 2019 12:25:05 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8dda48332a781cfe5f032b74298bfad128648533629fc9b73ec84ba1e2fdc5`  
		Last Modified: Thu, 04 Apr 2019 11:02:48 GMT  
		Size: 7.7 MB (7740854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f26b0b0ecab4eb7830990bb86a3cf7e36017115a6ca186accf366fb812de198a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (310997886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c8de85854909859732fc319c6c9cdb21f6b1962c6442213d91d746249bfa63`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 08:57:19 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 08:57:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:03:02 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 09:05:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 09:05:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 08:50:42 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Sat, 27 Apr 2019 09:15:54 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Sat, 27 Apr 2019 09:15:57 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Sat, 27 Apr 2019 09:16:02 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 27 Apr 2019 09:16:04 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Sat, 27 Apr 2019 09:16:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Sat, 27 Apr 2019 09:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 27 Apr 2019 09:20:50 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 09:20:55 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Sat, 27 Apr 2019 09:21:32 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Sat, 27 Apr 2019 09:24:34 GMT
USER 1001
# Sat, 27 Apr 2019 09:24:36 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 09:24:41 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 27 Apr 2019 09:24:43 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 09:24:46 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054eea562f6cae140405e0353fc5bd3fac1508227e9b0d17fdf7adae55d6453`  
		Last Modified: Tue, 12 Mar 2019 09:06:21 GMT  
		Size: 2.9 MB (2881225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aa1657b52bc4e902eb6e30a179444dcb9a2e220ab151cbe4026e5ef374e4c`  
		Last Modified: Wed, 03 Apr 2019 09:10:21 GMT  
		Size: 142.2 MB (142179326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f332f6cfb6a84d9a3bd3bb5e5f69496abb08bca1df41a16a53725f274a3a7d92`  
		Last Modified: Sat, 27 Apr 2019 09:32:16 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b5bfda7f20575bc3dc9e659065b23f67b1b3f198d73fab808c2696d2ba47f5`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 113.0 MB (113013816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70157dc0248d4454057ec475ca871724401a5d699ecf6a0560caacaf9412553`  
		Last Modified: Sat, 27 Apr 2019 09:32:16 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833ee548fb6ecb7ba3e1a5458a460f9af1a0f53dd4c9abec76ee85d7b73faa68`  
		Last Modified: Sat, 27 Apr 2019 09:32:20 GMT  
		Size: 7.1 MB (7143507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:de818b218acc81e1e039ca76dabff33f80c90c0b22a2ef67c35f215ab6f8d109
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.6 MB (305556248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937d5e99d8984543bd95fefd26202a64da208cc41301c7c860ae0540da98eeff`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 12:09:33 GMT
ADD file:fb98977a7ac241ec53e1d889d1511a608713d16ed4ad8a408d5a1450d41eedad in / 
# Tue, 12 Mar 2019 12:09:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:09:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:09:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:09:39 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:28:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 12:28:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 11:55:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 11:55:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 11:55:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 03 Apr 2019 12:14:23 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Wed, 03 Apr 2019 12:15:45 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Wed, 03 Apr 2019 12:15:46 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Wed, 03 Apr 2019 12:15:46 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 03 Apr 2019 12:15:46 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 03 Apr 2019 12:16:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 03 Apr 2019 12:16:02 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 03 Apr 2019 12:16:04 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 03 Apr 2019 12:16:04 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 04 Apr 2019 11:46:35 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 04 Apr 2019 11:46:35 GMT
USER 1001
# Thu, 04 Apr 2019 11:46:36 GMT
EXPOSE 9080 9443
# Thu, 04 Apr 2019 11:46:36 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 04 Apr 2019 11:46:37 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 04 Apr 2019 11:46:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6ef408a9cdfcbd0f83d7f6572df55c6996e16107389017db0407817059f5d367`  
		Last Modified: Mon, 25 Feb 2019 15:27:50 GMT  
		Size: 42.5 MB (42454255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e7fcd85b92bad19a70c77783f5d4726b6bf8e95f18efb312229d50de629ec6`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d734cc4d136f5d39f2257009118017ab21f14b4b0b7c24aeb1664b3643d72f35`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0a7e0a5d7c031bf9353d8a2b1d290134dbd5508d6ff14813ef719ad99ffc6`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05a577227b649ec9699bd853775bc2e2708d0fe7b92203c8c2aea4e1b8f7950`  
		Last Modified: Tue, 12 Mar 2019 12:31:15 GMT  
		Size: 2.8 MB (2766705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff490415debfb9f5d75189dae76704a07f9f0500f69d1aa2c7f5d233849b068`  
		Last Modified: Wed, 03 Apr 2019 11:58:16 GMT  
		Size: 126.9 MB (126949733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820c5d3b208032756b0d5306564e24089fd6b2674e20d8d31f778ea697f65c3c`  
		Last Modified: Wed, 03 Apr 2019 12:19:58 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496bb6e51d4cfaab6a31e6522bad6c01b0cdd21c6dc264d59802ab8c07574ca2`  
		Last Modified: Wed, 03 Apr 2019 12:20:07 GMT  
		Size: 113.4 MB (113362576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c447ab2884fbd602422afa38419c85bbe8263f1c4875e8cdfc16aaee7f597d61`  
		Last Modified: Wed, 03 Apr 2019 12:19:58 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630ab3df04a7ae2320c1582852bd93f73b692ae7c96123c6f12bbeea05127277`  
		Last Modified: Thu, 04 Apr 2019 11:51:38 GMT  
		Size: 20.0 MB (20018096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
