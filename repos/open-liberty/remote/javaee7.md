## `open-liberty:javaee7`

```console
$ docker pull open-liberty@sha256:70432c6db43b87d0a0ce0f4fae3be3798d1925dcdcd30bbdb456aca9b26cb3d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:71d8befc694edc14c0b3038685924b6ffc460fafbce8f11d1b26164cf8ec8766
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.5 MB (311539596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d63335fd488c1a8cfdf634bbdb6ddb401b42dc1273b044c8b5d1512f43f07f`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:41:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 00:41:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 22:21:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Tue, 02 Apr 2019 22:22:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 02 Apr 2019 22:22:22 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 02 Apr 2019 22:45:07 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Tue, 02 Apr 2019 22:45:07 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Tue, 02 Apr 2019 22:45:07 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Tue, 02 Apr 2019 22:45:07 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 02 Apr 2019 22:45:08 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 02 Apr 2019 22:45:29 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 02 Apr 2019 22:45:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 02 Apr 2019 22:45:32 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 02 Apr 2019 22:45:32 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 02 Apr 2019 22:45:33 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 02 Apr 2019 22:45:33 GMT
USER 1001
# Tue, 02 Apr 2019 22:45:33 GMT
EXPOSE 9080 9443
# Tue, 02 Apr 2019 22:45:33 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 02 Apr 2019 22:45:34 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 02 Apr 2019 22:55:18 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 02 Apr 2019 22:55:19 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Tue, 02 Apr 2019 22:55:51 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f573d025b2c12ddc00f52d4d32c0469d57f750bf9371a0a9839bacb6d8155fa8`  
		Last Modified: Tue, 12 Mar 2019 00:44:45 GMT  
		Size: 3.0 MB (3021295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ee82acb997bb0630fbb18a1b80258dd2ab9cb2bb961dc39f7e95970b245256`  
		Last Modified: Tue, 02 Apr 2019 22:27:43 GMT  
		Size: 129.3 MB (129336804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abfb61f00bf1f61913689c15df15746746cb026603258c8b6beb009d7101307`  
		Last Modified: Tue, 02 Apr 2019 22:58:58 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2990b9e32f4a53081780dc404b1803ea4f30c2953bdcce4ffbe84009f7abc0e9`  
		Last Modified: Tue, 02 Apr 2019 22:59:12 GMT  
		Size: 128.2 MB (128172788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea058ea628a1ba2d37dc4104cb60c76e727b57cd859a52746b1ce8428a4a486`  
		Last Modified: Tue, 02 Apr 2019 22:58:58 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc52277ca02d7b9feeb2f91d9d9c364693515042184b1a311bfdccf05385ca6`  
		Last Modified: Tue, 02 Apr 2019 22:58:58 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f0d7cf9971cd2b8cdc3ee3a0e73a064adf842816b4736c70187b187991c790`  
		Last Modified: Tue, 02 Apr 2019 23:01:47 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f59848dbfac67c3c2054d16f80ecab5e1ec673197820227d12662b542e73827`  
		Last Modified: Tue, 02 Apr 2019 23:01:48 GMT  
		Size: 7.4 MB (7438812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; 386

```console
$ docker pull open-liberty@sha256:92ac7a2828a25c2d89a6eaa6803045cb7fdbb6628dbd6bd163d1755c92e43236
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.3 MB (300334797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5cb66c270c0b57324697c9ee530def20670f275cfe191f07d981c7534e640f`
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
# Tue, 12 Mar 2019 12:16:00 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 12:17:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 12:17:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 10:38:34 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 10:38:34 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 10:38:34 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 10:38:34 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 10:38:34 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 10:39:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 10:39:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 10:39:05 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 10:39:06 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 10:39:06 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 10:39:06 GMT
USER 1001
# Fri, 29 Mar 2019 10:39:06 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 10:39:06 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 10:39:07 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 10:41:53 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 10:41:54 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:42:44 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
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
	-	`sha256:06661439ea7bbea6c263c2e9f93c31db01bd11e9cb721a4dd137674b76f5cdf1`  
		Last Modified: Tue, 12 Mar 2019 12:19:33 GMT  
		Size: 117.8 MB (117760797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae86cf7df221c8a25da6d8b8957845a2aae9ed7ddc2ce66c2de47663894142aa`  
		Last Modified: Fri, 29 Mar 2019 10:43:23 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ebb74fc83c2a7e14da823ef363965ac8509835766844b30243b7509c150950`  
		Last Modified: Fri, 29 Mar 2019 10:43:34 GMT  
		Size: 128.2 MB (128172815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf1be18957d15a3f6367f841d5f4b7c8aa4b4bf39fc950baa490fbf8deb922a`  
		Last Modified: Fri, 29 Mar 2019 10:43:23 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7a20af9cf3cc8f80c56843186a071f045084b5dbd238b43753759950c06e7e`  
		Last Modified: Fri, 29 Mar 2019 10:43:23 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6f388549e9d4f22fda9cafbc46fb08fb05cb89bdfcd4988fd3e6092352af40`  
		Last Modified: Fri, 29 Mar 2019 10:44:29 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e84df5b3b3592e41aca468e6e82042cfb505298216ea6b1e3256b598a8a270a`  
		Last Modified: Fri, 29 Mar 2019 10:44:30 GMT  
		Size: 7.8 MB (7757454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:eaf5f977df557f440a0925a453e19420351a0a23801f6013838b5945908852b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.2 MB (326177033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084e2bde79d48242fc6637bb297a2044fccd4514ae971125f773aec9de8119e4`
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
# Wed, 03 Apr 2019 09:47:14 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Wed, 03 Apr 2019 09:47:16 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Wed, 03 Apr 2019 09:47:17 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Wed, 03 Apr 2019 09:47:20 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 03 Apr 2019 09:47:21 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 03 Apr 2019 09:47:54 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 03 Apr 2019 09:47:58 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 03 Apr 2019 09:48:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 03 Apr 2019 09:48:12 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 03 Apr 2019 09:48:17 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Wed, 03 Apr 2019 09:48:19 GMT
USER 1001
# Wed, 03 Apr 2019 09:48:21 GMT
EXPOSE 9080 9443
# Wed, 03 Apr 2019 09:48:24 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 03 Apr 2019 09:48:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 03 Apr 2019 09:54:20 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 03 Apr 2019 09:54:25 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Wed, 03 Apr 2019 09:54:55 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
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
	-	`sha256:4b341edca07d00f8ebce615588edcc2485ab56181e8fb2b8675bf0e6eb1d1c95`  
		Last Modified: Wed, 03 Apr 2019 09:55:48 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1549a12b462971b5f115a0b930297d47048a12ccba8c2710d8be085ce0713bb`  
		Last Modified: Wed, 03 Apr 2019 09:56:04 GMT  
		Size: 128.2 MB (128173078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeff2c1e9b589f0590c1db58c745b8c51fd912d86e10b155bcb44e4111d68a4`  
		Last Modified: Wed, 03 Apr 2019 09:55:48 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27f9db3ee0bc472b23d37dc2eda7c3637ed6304337189f7978927a097a52d56`  
		Last Modified: Wed, 03 Apr 2019 09:55:48 GMT  
		Size: 3.0 KB (3047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28785c624889035cfeaf68c12dbb666ac4d1d14c18221f7434b8a33450d3549c`  
		Last Modified: Wed, 03 Apr 2019 09:58:06 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd0eb7c15f2725f2a0367e2f587ec62f14c94c6e9337aa87ed59df284c00bef`  
		Last Modified: Wed, 03 Apr 2019 09:58:11 GMT  
		Size: 7.2 MB (7159817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:ac201cfe2f4ed96cb707e36c7336bb62e3d025c0a0f9df4f4ae667aca169e092
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.9 MB (317929184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3714a0e438f2333de9b36aa7dd3a7db28661ca126f4786daf15312e253ac7d7b`
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
# Tue, 12 Mar 2019 12:28:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 12:29:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 12:29:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 11:43:54 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 11:43:54 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 11:43:55 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 11:43:55 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 11:43:55 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 11:44:06 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 11:44:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 11:44:08 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 11:44:09 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 11:44:09 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 11:44:09 GMT
USER 1001
# Fri, 29 Mar 2019 11:44:10 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 11:44:10 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 11:44:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 11:47:43 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 11:47:45 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 29 Mar 2019 11:48:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1d338653c8f22e1533558ddb676ff7f23c1355825cddb1d8ff22273be203a2`  
		Last Modified: Fri, 29 Mar 2019 11:49:12 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46053e2add5aafd4c57148b474f9bf9eae8690db54e100fe2e64b49a4b507120`  
		Last Modified: Fri, 29 Mar 2019 11:49:21 GMT  
		Size: 128.2 MB (128172692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc75bdbffa453b20ff649ae2b1cd1c1a587975e07aa13a8792a72e377d66154d`  
		Last Modified: Fri, 29 Mar 2019 11:49:12 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6672d0c3485354cb06ecd3e2e5329cfe4650dcc221a6bf613cc9c2f70447f2`  
		Last Modified: Fri, 29 Mar 2019 11:49:13 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457fc6ec7af3552d6dd047042bccb094e1cbcb07931ee35fe3e1b557da5358ca`  
		Last Modified: Fri, 29 Mar 2019 11:50:22 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb66fdd5285e708847aed39335ba2e389eafb7b0699d4d43846bc6ef99650af8`  
		Last Modified: Fri, 29 Mar 2019 11:50:29 GMT  
		Size: 17.5 MB (17510514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
