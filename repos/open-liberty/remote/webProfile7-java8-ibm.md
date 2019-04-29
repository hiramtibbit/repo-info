## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:4a4a7e698c58ebaffa96ba3a7eb3641a983a2aff4803e42bf60ad5855dc264c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:a046d3ffaa0a559e3e5d24059112a89a499638596d87edfc02191cebab88bfe1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321268823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a2882878c7947daf006b1ff2d8200ffa8d5dfe164e929cfc7c45061d3706e3`
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
# Mon, 29 Apr 2019 17:19:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Mon, 29 Apr 2019 17:20:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 29 Apr 2019 17:20:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 29 Apr 2019 17:55:22 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Mon, 29 Apr 2019 17:55:22 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Mon, 29 Apr 2019 17:55:22 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Mon, 29 Apr 2019 17:55:22 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Mon, 29 Apr 2019 17:55:22 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Mon, 29 Apr 2019 17:55:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Mon, 29 Apr 2019 17:55:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Mon, 29 Apr 2019 17:55:38 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 29 Apr 2019 17:55:39 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Mon, 29 Apr 2019 17:55:39 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Mon, 29 Apr 2019 17:55:39 GMT
USER 1001
# Mon, 29 Apr 2019 17:55:39 GMT
EXPOSE 9080 9443
# Mon, 29 Apr 2019 17:55:39 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 29 Apr 2019 17:55:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Mon, 29 Apr 2019 18:01:17 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Mon, 29 Apr 2019 18:01:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
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
	-	`sha256:05785f3f4417f4f2a926d9cb89d4dfbb85ac56e0feb01423da0fd7c7e3e01afb`  
		Last Modified: Mon, 29 Apr 2019 17:25:06 GMT  
		Size: 129.9 MB (129946943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75e59f9c6109eac8c06070327c1183bcc6d4b47a7970283ab251c244189efbd`  
		Last Modified: Mon, 29 Apr 2019 18:04:19 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4f2a9e7829a9f9fecfc4f427d5217e7974d7e202fdf71861539f6f00f8a2a`  
		Last Modified: Mon, 29 Apr 2019 18:04:41 GMT  
		Size: 130.0 MB (130002845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c7a26cdaebe10afe03cdc15c6cc7e53f725c4014828236bae4ba32f834e37e`  
		Last Modified: Mon, 29 Apr 2019 18:04:19 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6eccc6013e1d997b2b93ca286c105313170cedd71dc31478a61607c9cc065b5`  
		Last Modified: Mon, 29 Apr 2019 18:04:19 GMT  
		Size: 3.0 KB (3015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f89ef8b057879450eb5132039ab2007735b430a5b1df539c05d3fcc4f354a`  
		Last Modified: Mon, 29 Apr 2019 18:06:32 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16754b0cf661a01a6d48e43ed0bfe4a378b15e9d0898b748297561b192e54151`  
		Last Modified: Mon, 29 Apr 2019 18:06:35 GMT  
		Size: 14.5 MB (14537234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:70a6d54f9b40ad607eb2cd1125f674896d8d6627d6740d3788ccc87ccbe76754
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (309045784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d872b3fc8fa2dd62a7538b201529f5e8ebb77f3c79db7c9fea317cd7f3212a2`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 27 Apr 2019 11:59:10 GMT
ADD file:78ca331ccfed0fc9f2b4f4a8b0cd9c00bc0d20e7733659d46625f294e1078f9a in / 
# Sat, 27 Apr 2019 11:59:11 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 11:59:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:59:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 11:59:13 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:15:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 27 Apr 2019 12:16:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:16:07 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Sat, 27 Apr 2019 12:16:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 27 Apr 2019 12:16:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 12:56:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Sat, 27 Apr 2019 12:56:26 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Sat, 27 Apr 2019 12:56:26 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Sat, 27 Apr 2019 12:56:26 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 27 Apr 2019 12:56:26 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Sat, 27 Apr 2019 12:56:39 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Sat, 27 Apr 2019 12:56:39 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 27 Apr 2019 12:56:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 12:56:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 27 Apr 2019 12:56:42 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Sat, 27 Apr 2019 12:56:42 GMT
USER 1001
# Sat, 27 Apr 2019 12:56:42 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 12:56:42 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 12:56:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 27 Apr 2019 12:59:11 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 27 Apr 2019 12:59:32 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:b888ff3e45cd15a16d6b3d639cedbffe99bcf0634bab878af5d7fc71cb11b640`  
		Last Modified: Sat, 27 Apr 2019 12:00:34 GMT  
		Size: 43.9 MB (43917934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefba8a752ea7849b4ec5c381735eff21a41f7f0f87429cced694b73571d2b35`  
		Last Modified: Sat, 27 Apr 2019 12:00:24 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c962dbd30627530007167956df17cd236d1987a214e8d1edd533759996d6cd1e`  
		Last Modified: Sat, 27 Apr 2019 12:00:24 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821da925aa33de82ecd0690dc2998d1170a9e849a43444d112e7824fe1d7b1c2`  
		Last Modified: Sat, 27 Apr 2019 12:00:24 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5e6d2b492e093b62f3b9396c81d3cbc7103972fc9e4876e311299b05523776`  
		Last Modified: Sat, 27 Apr 2019 12:18:44 GMT  
		Size: 2.9 MB (2877055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9d75cd88f1c4a81bcad3b60ee5433f7001951d03654ca8e3d6fbe07726f206`  
		Last Modified: Sat, 27 Apr 2019 12:18:56 GMT  
		Size: 117.8 MB (117791590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba043aa1c977db7e1434af5912d07fd5ace04bbf65df3319412ac5677522de2d`  
		Last Modified: Sat, 27 Apr 2019 13:00:32 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fe29dfb89ddffbb9379c77a288c7e2735b81561cee9c644365624f24cd3315`  
		Last Modified: Sat, 27 Apr 2019 13:00:43 GMT  
		Size: 130.0 MB (130003227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b088c634313027f2d904c1a53ca87f728faeff6c329aa85a0d7560e636435a0`  
		Last Modified: Sat, 27 Apr 2019 13:00:32 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab6bdea1091526cd6456b7a0054a46e414e4e6d0bafd9627efb9ea3b1b2b4f6`  
		Last Modified: Sat, 27 Apr 2019 13:00:32 GMT  
		Size: 3.0 KB (3018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add609c1c8fa62c08363d70e0beef41115a1fbe30482df777bfef1c3f571e4c2`  
		Last Modified: Sat, 27 Apr 2019 13:01:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a253b44ed87b19d91f06752de203d07184388e6a15e8203848c5c8a5f369c84a`  
		Last Modified: Sat, 27 Apr 2019 13:01:41 GMT  
		Size: 14.4 MB (14447860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:a17d7bb9e17ef873c38a8cd5741bc47aa28a4eaccf927211efee7a48c24b4a86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332740139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2076da9998a861c0b1378b1b81c23aced63869dc68e2ec56de16646b9e144086`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:47:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 27 Apr 2019 10:47:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:47:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Sat, 27 Apr 2019 10:50:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 27 Apr 2019 10:50:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 11:26:00 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Sat, 27 Apr 2019 11:26:01 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Sat, 27 Apr 2019 11:26:03 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Sat, 27 Apr 2019 11:26:05 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 27 Apr 2019 11:26:07 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Sat, 27 Apr 2019 11:26:36 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Sat, 27 Apr 2019 11:26:42 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 27 Apr 2019 11:26:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 11:27:00 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 27 Apr 2019 11:27:04 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Sat, 27 Apr 2019 11:27:08 GMT
USER 1001
# Sat, 27 Apr 2019 11:27:10 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 11:27:12 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 11:27:15 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 27 Apr 2019 11:32:50 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 27 Apr 2019 11:33:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0692fe3a917e26f1e498d6c737ae2e24607565473260342457aa16331fd4b1c6`  
		Last Modified: Sat, 27 Apr 2019 10:55:18 GMT  
		Size: 2.9 MB (2881353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccc813908a7be4e1ecd2bdbf57e448cc06f0e3f67b70c0c84304f6d0dc59aab`  
		Last Modified: Sat, 27 Apr 2019 10:55:40 GMT  
		Size: 142.2 MB (142179282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6022468ff96b0aa7d51a897c76671b551b0f0b342b46d6725a6e5fe4bf1dbd82`  
		Last Modified: Sat, 27 Apr 2019 11:34:58 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9fb8ab991b9da465235a600c419b3fb2780bc22cd4b50396affdc5a33af10e`  
		Last Modified: Sat, 27 Apr 2019 11:35:14 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4d199adc5b20565849080df5a9fc12c1103163bd1b266ab11dc90c58bbd3a1`  
		Last Modified: Sat, 27 Apr 2019 11:34:58 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff18fa22ebb4fc50cb30c260fdf50df084ca94e3d193a15fa72a30f4c165a73`  
		Last Modified: Sat, 27 Apr 2019 11:34:58 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ca55932e7cee4bc447bf83609ca7ae4dfaae262cc6395e8d8320da5f93147`  
		Last Modified: Sat, 27 Apr 2019 11:37:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fb5ed3d5aab7bc4c7cb983481a629faf17afb8cd521e7946733575b4b748fc`  
		Last Modified: Sat, 27 Apr 2019 11:37:04 GMT  
		Size: 11.7 MB (11739725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:234759a1a1d31661a673400d6a5ed6dc4315dae02bce62d8fb134a81d2ba039f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316745537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd50a4977c7e532d06ba088987e057f0a3734131ff237e787613403bd6a420ea`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 27 Apr 2019 12:55:39 GMT
ADD file:f15deb99e7fe5b566cb484ac758f7c87487e4c632263b4fe8864d97ff9897ff9 in / 
# Sat, 27 Apr 2019 12:55:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:55:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:55:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:55:48 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 13:20:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 27 Apr 2019 13:20:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:20:41 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Sat, 27 Apr 2019 13:21:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 27 Apr 2019 13:21:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 13:43:16 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Sat, 27 Apr 2019 13:43:17 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Sat, 27 Apr 2019 13:43:17 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Sat, 27 Apr 2019 13:43:18 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 27 Apr 2019 13:43:19 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Sat, 27 Apr 2019 13:43:36 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Sat, 27 Apr 2019 13:43:36 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 27 Apr 2019 13:43:39 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 13:43:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 27 Apr 2019 13:43:41 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Sat, 27 Apr 2019 13:43:41 GMT
USER 1001
# Sat, 27 Apr 2019 13:43:42 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 13:43:42 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 13:43:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 27 Apr 2019 13:47:13 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 27 Apr 2019 13:47:37 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:469ff1e5cc7ec2ad48276434372e079e87e540e69e6095fb1c53ba300d78b4fc`  
		Last Modified: Sat, 27 Apr 2019 12:57:16 GMT  
		Size: 42.6 MB (42603126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df75a1fc7979dc62178de9d3f9aa17b5fa35bd05d4dc58610be91b5d4c180e1`  
		Last Modified: Sat, 27 Apr 2019 12:57:02 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a0fc1c30e0f01b4e7cc4f9f52526ea2c4e197f6bb28c9fa473605ce8fb0178`  
		Last Modified: Sat, 27 Apr 2019 12:57:02 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8384d6cbf770c64b426ff46d72fbd57c0797fa2ef1158d0b807aa529ccf76bd0`  
		Last Modified: Sat, 27 Apr 2019 12:57:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071d44b7b84b8ebe9e45ff7ebe78e91940d396165ba69fde63d1c3ee19e056c4`  
		Last Modified: Sat, 27 Apr 2019 13:23:48 GMT  
		Size: 2.8 MB (2766817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d81755642c1224b597535ca0bfad15bdea6fc31ca97d8781ef3700ff9698db3`  
		Last Modified: Sat, 27 Apr 2019 13:24:30 GMT  
		Size: 126.9 MB (126949967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4980d54259ada27705d23356847a84d3885e7da0cb252bc436440ccfe63f05`  
		Last Modified: Sat, 27 Apr 2019 13:48:58 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e026e64fd102168a5924f131be83120d72cf29de7ab7b5099299052d3cbfb3b4`  
		Last Modified: Sat, 27 Apr 2019 13:49:16 GMT  
		Size: 130.0 MB (130002717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2e9a3f3037da454c98846cd2fe4fe4e934160ab5567d1ab709cd4b3a2b8187`  
		Last Modified: Sat, 27 Apr 2019 13:48:58 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4756efa5dbbfccb0049a10d88c667f86ee220af649e5ac0ce1463f760ad6a9`  
		Last Modified: Sat, 27 Apr 2019 13:48:58 GMT  
		Size: 3.0 KB (3019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ee930bd335fea4eb587f4e22c275c79ed2f668fbd665e2a77911c4f7d9f0c1`  
		Last Modified: Sat, 27 Apr 2019 13:50:34 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157ec74eb861f46857cbf489a4311df763beda41a97a3ccef323881ea4b567a7`  
		Last Modified: Sat, 27 Apr 2019 13:50:40 GMT  
		Size: 14.4 MB (14414836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
