<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `open-liberty`

-	[`open-liberty:javaee7`](#open-libertyjavaee7)
-	[`open-liberty:javaee7-java8-ibm`](#open-libertyjavaee7-java8-ibm)
-	[`open-liberty:javaee7-java8-ibmsfj`](#open-libertyjavaee7-java8-ibmsfj)
-	[`open-liberty:javaee8`](#open-libertyjavaee8)
-	[`open-liberty:javaee8-java8-ibm`](#open-libertyjavaee8-java8-ibm)
-	[`open-liberty:javaee8-java8-ibmsfj`](#open-libertyjavaee8-java8-ibmsfj)
-	[`open-liberty:kernel`](#open-libertykernel)
-	[`open-liberty:kernel-java8-ibm`](#open-libertykernel-java8-ibm)
-	[`open-liberty:kernel-java8-ibmsfj`](#open-libertykernel-java8-ibmsfj)
-	[`open-liberty:latest`](#open-libertylatest)
-	[`open-liberty:microProfile1`](#open-libertymicroprofile1)
-	[`open-liberty:microProfile1-java8-ibm`](#open-libertymicroprofile1-java8-ibm)
-	[`open-liberty:microProfile1-java8-ibmsfj`](#open-libertymicroprofile1-java8-ibmsfj)
-	[`open-liberty:microProfile2`](#open-libertymicroprofile2)
-	[`open-liberty:microProfile2-java8-ibm`](#open-libertymicroprofile2-java8-ibm)
-	[`open-liberty:microProfile2-java8-ibmsfj`](#open-libertymicroprofile2-java8-ibmsfj)
-	[`open-liberty:springBoot1`](#open-libertyspringboot1)
-	[`open-liberty:springBoot1-java8-ibm`](#open-libertyspringboot1-java8-ibm)
-	[`open-liberty:springBoot1-java8-ibmsfj`](#open-libertyspringboot1-java8-ibmsfj)
-	[`open-liberty:springBoot2`](#open-libertyspringboot2)
-	[`open-liberty:springBoot2-java8-ibm`](#open-libertyspringboot2-java8-ibm)
-	[`open-liberty:springBoot2-java8-ibmsfj`](#open-libertyspringboot2-java8-ibmsfj)
-	[`open-liberty:webProfile7`](#open-libertywebprofile7)
-	[`open-liberty:webProfile7-java8-ibm`](#open-libertywebprofile7-java8-ibm)
-	[`open-liberty:webProfile7-java8-ibmsfj`](#open-libertywebprofile7-java8-ibmsfj)
-	[`open-liberty:webProfile8`](#open-libertywebprofile8)
-	[`open-liberty:webProfile8-java8-ibm`](#open-libertywebprofile8-java8-ibm)
-	[`open-liberty:webProfile8-java8-ibmsfj`](#open-libertywebprofile8-java8-ibmsfj)

## `open-liberty:javaee7`

```console
$ docker pull open-liberty@sha256:1c3abb411dbd1d04c4df3850cd8fc2cc5b547e238f4cee1b4b8c52aad666d04f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:ffb0a64cf71b9df479b0220e0239b8e2f50498ce7d5de96ad6064a4a806b90d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.0 MB (323040594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad338cc6740f28a419ce5f604928c010faaa53f5482ca9d51745d8f641db7b1`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:26:34 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:26:35 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:27:28 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1f6f4c27559b7b0cc97945b6936c1dfa243758871059b016cc2803b499a693`  
		Last Modified: Thu, 28 Mar 2019 21:31:11 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8047837ca1b4a1da3b682858de0a8b00aaf420f1fea33b9deeab297b363e3`  
		Last Modified: Thu, 28 Mar 2019 21:31:14 GMT  
		Size: 19.0 MB (19008807 bytes)  
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
$ docker pull open-liberty@sha256:4dceef03cd6fb6742fafec88ba83b42ed3a3f22126a48d108ca440223f9e3e6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325908864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477b029b06028f15f9637b6b91e553aed4f3a33949891d9329bc4b78bdfb766b`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:24:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:24:41 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:25:07 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027ccc5e4002b941c3eddb70306482be0bb77e02a6f3a3e6afc497a59f1085e`  
		Last Modified: Fri, 29 Mar 2019 08:29:23 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ccbd97a3f1e8477824d33d3feef4dd3a5ddd3cd28ab9fb5ea94faaf3ce7948`  
		Last Modified: Fri, 29 Mar 2019 08:29:25 GMT  
		Size: 7.1 MB (7057456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:5b35a4732d4f6820094252cb6e17e52c3a4a2896577e7d301968fb87ba04fd2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317752120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7adcc897dd413b95942dfedf23c6f47c7cfa6e968e356445156846a1c2eab`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:50:49 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:50:52 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:51:29 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3419feca245d8a87c14add8f3786305f511c9e71ae4ef81172b65249aeca95b3`  
		Last Modified: Tue, 26 Mar 2019 11:54:34 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec4071df051bb0e1da3d078c53e136f9075babb73f77900e837842a8b672d2`  
		Last Modified: Tue, 26 Mar 2019 11:54:41 GMT  
		Size: 18.1 MB (18061863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibm`

```console
$ docker pull open-liberty@sha256:1c3abb411dbd1d04c4df3850cd8fc2cc5b547e238f4cee1b4b8c52aad666d04f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:ffb0a64cf71b9df479b0220e0239b8e2f50498ce7d5de96ad6064a4a806b90d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.0 MB (323040594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad338cc6740f28a419ce5f604928c010faaa53f5482ca9d51745d8f641db7b1`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:26:34 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:26:35 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:27:28 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1f6f4c27559b7b0cc97945b6936c1dfa243758871059b016cc2803b499a693`  
		Last Modified: Thu, 28 Mar 2019 21:31:11 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde8047837ca1b4a1da3b682858de0a8b00aaf420f1fea33b9deeab297b363e3`  
		Last Modified: Thu, 28 Mar 2019 21:31:14 GMT  
		Size: 19.0 MB (19008807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; 386

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

### `open-liberty:javaee7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:4dceef03cd6fb6742fafec88ba83b42ed3a3f22126a48d108ca440223f9e3e6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325908864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477b029b06028f15f9637b6b91e553aed4f3a33949891d9329bc4b78bdfb766b`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:24:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:24:41 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:25:07 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027ccc5e4002b941c3eddb70306482be0bb77e02a6f3a3e6afc497a59f1085e`  
		Last Modified: Fri, 29 Mar 2019 08:29:23 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ccbd97a3f1e8477824d33d3feef4dd3a5ddd3cd28ab9fb5ea94faaf3ce7948`  
		Last Modified: Fri, 29 Mar 2019 08:29:25 GMT  
		Size: 7.1 MB (7057456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:5b35a4732d4f6820094252cb6e17e52c3a4a2896577e7d301968fb87ba04fd2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.8 MB (317752120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa7adcc897dd413b95942dfedf23c6f47c7cfa6e968e356445156846a1c2eab`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:50:49 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:50:52 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:51:29 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3419feca245d8a87c14add8f3786305f511c9e71ae4ef81172b65249aeca95b3`  
		Last Modified: Tue, 26 Mar 2019 11:54:34 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec4071df051bb0e1da3d078c53e136f9075babb73f77900e837842a8b672d2`  
		Last Modified: Tue, 26 Mar 2019 11:54:41 GMT  
		Size: 18.1 MB (18061863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:36b1ef105ebf3cb40bdad4b4641e25b8f3f943c1bdee0612aedb286f0e2bc977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:158ba3422c3e61d259755cf57c96ea9e564c7546b5bef14da4210ead51e9b5b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (215984353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e100e602ffdfae5e2e6b5bbadf72e153f20ee0b9aae0e4b296f6cff7d41eba3`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:27:37 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:27:37 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:28:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d693e5544d38b704f72484b4d6f7c409de892a5ab149156e3dd5fa9cfec2ff10`  
		Last Modified: Thu, 28 Mar 2019 21:31:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aad7e36d00bc9c3e6017b679a1274f7a642fb7133aec18a90208c886cf3cb38`  
		Last Modified: Thu, 28 Mar 2019 21:31:21 GMT  
		Size: 18.2 MB (18243402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8`

```console
$ docker pull open-liberty@sha256:f36f1c48d4971a30b7a76f13c242974f560549a8fcadab4c96dd26bcfb64c1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8` - linux; amd64

```console
$ docker pull open-liberty@sha256:dd3077cda3a536b621989ab2be16abdbf0ac886f7fd2752267ea97c8465dfbc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307929927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d447e301fe7ce5145701106fff9adad0a3ecd9470bf4bd388e9b232810e1ea2c`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:21:52 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Thu, 28 Mar 2019 21:21:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:21:53 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:21:53 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:22:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:22:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:22:04 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:22:05 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:22:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:22:59 GMT
USER 1001
# Thu, 28 Mar 2019 21:22:59 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:22:59 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:22:59 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:22:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1e83387c8e4b34035efabeb4f4b92d36ddad424b2e670635488ac2c533aa71`  
		Last Modified: Thu, 28 Mar 2019 21:30:08 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b27fcdaef2a9cd197fb907891cd0d53363c771b0c13f05b025e59d7a4afff02`  
		Last Modified: Thu, 28 Mar 2019 21:30:15 GMT  
		Size: 113.4 MB (113362690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44410177b99dbc733b03eb105094c25fb67d32e1184042fabc6528238fe1a67`  
		Last Modified: Thu, 28 Mar 2019 21:30:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6751cfdcfe55670183a41467f5f01511a27b262e8215c998bd1cb553e6596`  
		Last Modified: Thu, 28 Mar 2019 21:30:12 GMT  
		Size: 18.7 MB (18711665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; 386

```console
$ docker pull open-liberty@sha256:6e70d982dfbe7fd053e64d0ce710f80594d276cbcff6592cef0ae567b716b888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285544369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65f2ec3627a6e5c8af54288ef6296300535fa0313476692c2bbca8c6fd30dfd`
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
# Fri, 29 Mar 2019 10:39:49 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Fri, 29 Mar 2019 10:39:49 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Fri, 29 Mar 2019 10:39:49 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 10:39:49 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 10:40:00 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 10:40:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 10:40:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 10:40:02 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 10:40:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 10:40:22 GMT
USER 1001
# Fri, 29 Mar 2019 10:40:22 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 10:40:23 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 10:40:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 10:40:23 GMT
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
	-	`sha256:06661439ea7bbea6c263c2e9f93c31db01bd11e9cb721a4dd137674b76f5cdf1`  
		Last Modified: Tue, 12 Mar 2019 12:19:33 GMT  
		Size: 117.8 MB (117760797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f619b60575fb0749b464e00bda126dbe83f56ad61d6c18a798eaba77361e03`  
		Last Modified: Fri, 29 Mar 2019 10:43:49 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691f7c23827a21074bcd4a45f1877bd51953a96eccf4c98acea6bfe6da61a7a`  
		Last Modified: Fri, 29 Mar 2019 10:43:59 GMT  
		Size: 113.4 MB (113362658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5326bf0b0a62f29a29ea62856e7d129ef873ab1e58cc5e0d686f707f02448e29`  
		Last Modified: Fri, 29 Mar 2019 10:43:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29527bbbff427110a0df91ab55bb56ae32a355a4c30ab61ed98f9167402ee090`  
		Last Modified: Fri, 29 Mar 2019 10:43:52 GMT  
		Size: 7.8 MB (7780662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:85cfeb527438d8cebe46371c3922e4b4473c6122d0a1e4ca3d7edfda267409eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (319982949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2291abd272ffa80dba7baf810c4f41f3db5d31d03beea784b5d24fbb31d7bb7`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:21:00 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Fri, 29 Mar 2019 08:21:02 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Fri, 29 Mar 2019 08:21:04 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:21:06 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:21:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:21:46 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:21:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:21:54 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:22:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 08:22:25 GMT
USER 1001
# Fri, 29 Mar 2019 08:22:27 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:22:28 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:22:30 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:22:31 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa0aeb6a42f39ac5e65b558d4eb7bf0580ff98f82421591989b12b8570fd68`  
		Last Modified: Fri, 29 Mar 2019 08:27:42 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c7a19ec6a04e15fad167df60b331b5ac9ca97565d4f370b10f298378e3b80d`  
		Last Modified: Fri, 29 Mar 2019 08:28:16 GMT  
		Size: 113.4 MB (113362695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66812f3be43b3e78edeffe62e7e4620b6e6f9c5ce362c96019e545a97b971835`  
		Last Modified: Fri, 29 Mar 2019 08:27:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d3ad9a8b1efee03a0d296053d67896e8186cbaba08e5ba647734d8c1476f7d`  
		Last Modified: Fri, 29 Mar 2019 08:27:47 GMT  
		Size: 15.9 MB (15945319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; s390x

```console
$ docker pull open-liberty@sha256:90f61b7645b12dedd796f6b15ece87cb1af74fff40e8d32be5f8203bb8fb8a14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303066639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20114eed99d357292655974183e2fc631e4f97ba9cd3687e90f0624cb1298b38`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:48:56 GMT
ARG LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439
# Tue, 12 Mar 2019 12:48:56 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip
# Tue, 26 Mar 2019 11:46:24 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:46:25 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:46:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:46:38 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:46:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:46:41 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:47:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Tue, 26 Mar 2019 11:47:20 GMT
USER 1001
# Tue, 26 Mar 2019 11:47:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:47:21 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:47:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:47:22 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb262d4eed22dceb52b362a2ae86c0f59d2629ea4a78da3eff134677505802`  
		Last Modified: Tue, 26 Mar 2019 11:53:24 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e56b0a9d19926753f6c2261d2665a0414dfa2a63e0c94a4a1242e9fe425929a`  
		Last Modified: Tue, 26 Mar 2019 11:53:39 GMT  
		Size: 112.7 MB (112658220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0d39d3264f9096c68f687c43678c676064a91b543ad7167c1d597e6694553d`  
		Last Modified: Tue, 26 Mar 2019 11:53:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cb34a9e26da4ed8f46aa2dc30483bdb1472f9e0333d85fde77971a4de00e11`  
		Last Modified: Tue, 26 Mar 2019 11:53:32 GMT  
		Size: 18.2 MB (18165914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibm`

```console
$ docker pull open-liberty@sha256:f36f1c48d4971a30b7a76f13c242974f560549a8fcadab4c96dd26bcfb64c1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:dd3077cda3a536b621989ab2be16abdbf0ac886f7fd2752267ea97c8465dfbc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307929927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d447e301fe7ce5145701106fff9adad0a3ecd9470bf4bd388e9b232810e1ea2c`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:21:52 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Thu, 28 Mar 2019 21:21:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:21:53 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:21:53 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:22:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:22:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:22:04 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:22:05 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:22:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:22:59 GMT
USER 1001
# Thu, 28 Mar 2019 21:22:59 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:22:59 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:22:59 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:22:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1e83387c8e4b34035efabeb4f4b92d36ddad424b2e670635488ac2c533aa71`  
		Last Modified: Thu, 28 Mar 2019 21:30:08 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b27fcdaef2a9cd197fb907891cd0d53363c771b0c13f05b025e59d7a4afff02`  
		Last Modified: Thu, 28 Mar 2019 21:30:15 GMT  
		Size: 113.4 MB (113362690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44410177b99dbc733b03eb105094c25fb67d32e1184042fabc6528238fe1a67`  
		Last Modified: Thu, 28 Mar 2019 21:30:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6751cfdcfe55670183a41467f5f01511a27b262e8215c998bd1cb553e6596`  
		Last Modified: Thu, 28 Mar 2019 21:30:12 GMT  
		Size: 18.7 MB (18711665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:6e70d982dfbe7fd053e64d0ce710f80594d276cbcff6592cef0ae567b716b888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285544369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65f2ec3627a6e5c8af54288ef6296300535fa0313476692c2bbca8c6fd30dfd`
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
# Fri, 29 Mar 2019 10:39:49 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Fri, 29 Mar 2019 10:39:49 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Fri, 29 Mar 2019 10:39:49 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 10:39:49 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 10:40:00 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 10:40:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 10:40:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 10:40:02 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 10:40:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 10:40:22 GMT
USER 1001
# Fri, 29 Mar 2019 10:40:22 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 10:40:23 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 10:40:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 10:40:23 GMT
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
	-	`sha256:06661439ea7bbea6c263c2e9f93c31db01bd11e9cb721a4dd137674b76f5cdf1`  
		Last Modified: Tue, 12 Mar 2019 12:19:33 GMT  
		Size: 117.8 MB (117760797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f619b60575fb0749b464e00bda126dbe83f56ad61d6c18a798eaba77361e03`  
		Last Modified: Fri, 29 Mar 2019 10:43:49 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691f7c23827a21074bcd4a45f1877bd51953a96eccf4c98acea6bfe6da61a7a`  
		Last Modified: Fri, 29 Mar 2019 10:43:59 GMT  
		Size: 113.4 MB (113362658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5326bf0b0a62f29a29ea62856e7d129ef873ab1e58cc5e0d686f707f02448e29`  
		Last Modified: Fri, 29 Mar 2019 10:43:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29527bbbff427110a0df91ab55bb56ae32a355a4c30ab61ed98f9167402ee090`  
		Last Modified: Fri, 29 Mar 2019 10:43:52 GMT  
		Size: 7.8 MB (7780662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:85cfeb527438d8cebe46371c3922e4b4473c6122d0a1e4ca3d7edfda267409eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (319982949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2291abd272ffa80dba7baf810c4f41f3db5d31d03beea784b5d24fbb31d7bb7`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:21:00 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Fri, 29 Mar 2019 08:21:02 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Fri, 29 Mar 2019 08:21:04 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:21:06 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:21:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:21:46 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:21:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:21:54 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:22:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 08:22:25 GMT
USER 1001
# Fri, 29 Mar 2019 08:22:27 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:22:28 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:22:30 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:22:31 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa0aeb6a42f39ac5e65b558d4eb7bf0580ff98f82421591989b12b8570fd68`  
		Last Modified: Fri, 29 Mar 2019 08:27:42 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c7a19ec6a04e15fad167df60b331b5ac9ca97565d4f370b10f298378e3b80d`  
		Last Modified: Fri, 29 Mar 2019 08:28:16 GMT  
		Size: 113.4 MB (113362695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66812f3be43b3e78edeffe62e7e4620b6e6f9c5ce362c96019e545a97b971835`  
		Last Modified: Fri, 29 Mar 2019 08:27:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d3ad9a8b1efee03a0d296053d67896e8186cbaba08e5ba647734d8c1476f7d`  
		Last Modified: Fri, 29 Mar 2019 08:27:47 GMT  
		Size: 15.9 MB (15945319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:90f61b7645b12dedd796f6b15ece87cb1af74fff40e8d32be5f8203bb8fb8a14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303066639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20114eed99d357292655974183e2fc631e4f97ba9cd3687e90f0624cb1298b38`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:48:56 GMT
ARG LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439
# Tue, 12 Mar 2019 12:48:56 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip
# Tue, 26 Mar 2019 11:46:24 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:46:25 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:46:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:46:38 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:46:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:46:41 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:47:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Tue, 26 Mar 2019 11:47:20 GMT
USER 1001
# Tue, 26 Mar 2019 11:47:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:47:21 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:47:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:47:22 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb262d4eed22dceb52b362a2ae86c0f59d2629ea4a78da3eff134677505802`  
		Last Modified: Tue, 26 Mar 2019 11:53:24 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e56b0a9d19926753f6c2261d2665a0414dfa2a63e0c94a4a1242e9fe425929a`  
		Last Modified: Tue, 26 Mar 2019 11:53:39 GMT  
		Size: 112.7 MB (112658220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0d39d3264f9096c68f687c43678c676064a91b543ad7167c1d597e6694553d`  
		Last Modified: Tue, 26 Mar 2019 11:53:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cb34a9e26da4ed8f46aa2dc30483bdb1472f9e0333d85fde77971a4de00e11`  
		Last Modified: Tue, 26 Mar 2019 11:53:32 GMT  
		Size: 18.2 MB (18165914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:df112b86df7f8e0afec74d438d436124bd595b7cf282d40d54c932ff0df20b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:48a728ade4bd34eec93d266cad994f38eb3a2b19a5ce31b99f34a93af7b1b26b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.9 MB (189900226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80aef81edc2dc10f7776c4bd455150c7bda6f95f5842296cb2202d725cc3f437`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:23:07 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Thu, 28 Mar 2019 21:23:07 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:23:07 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:23:07 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:23:15 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:23:15 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:23:16 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:23:17 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:23:36 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:23:36 GMT
USER 1001
# Thu, 28 Mar 2019 21:23:36 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:23:36 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:23:36 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:23:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8c8de54b75ebcbc890a6ef712cb6a4d03f14eafbacb001a168816da16d58eb`  
		Last Modified: Thu, 28 Mar 2019 21:30:20 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291dce25633a61d59cfe0cc9c236d94975bb13ff640aaad7fd36df6769bc8a5d`  
		Last Modified: Thu, 28 Mar 2019 21:30:28 GMT  
		Size: 113.4 MB (113386428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc45a1a1ba974227a9f21a72ced10421edd3231f9ae6e7e78ffbd0bb135a9b5`  
		Last Modified: Thu, 28 Mar 2019 21:30:20 GMT  
		Size: 1.2 KB (1221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e6fbf5318aec24dd6b1ee93fb46656337d1912bd58ea769162541b69cf08d3`  
		Last Modified: Thu, 28 Mar 2019 21:30:22 GMT  
		Size: 7.0 MB (6975507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel`

```console
$ docker pull open-liberty@sha256:5daa324b9c9cc0134fbbe589b958399fce874763bc71508431ba6ca78d1be95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel` - linux; amd64

```console
$ docker pull open-liberty@sha256:659251aa2bffbf65eb51c465d4f153edd0efea9d03b168bd00d10f807a51ee38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.0 MB (304030887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6351b9faf5e1f814165a925bd51e30b6eafe27f20c08603162d689e34d9fd6bc`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; 386

```console
$ docker pull open-liberty@sha256:1f99f4a17a2facbfec22886b06dcf4de2f343b9c5bb0212bb97a51e74a626806
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 MB (292576443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea6210bfca8265d21bc4391f8f8baf9178ea1e9601caa699394577b01ce9d67`
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

### `open-liberty:kernel` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:3b2d6ec4d483a76ac3b22df97341c07c040816c2138003f84b369f720775f9aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.9 MB (318850512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4109752ed01084a0eced9560be3dc904223ffdeabdfea14ff4277880b3738534`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; s390x

```console
$ docker pull open-liberty@sha256:2639adccd9b5fd50fef2c51fcfc04f67bd961d07b11203914a13a1e0117d3a9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299689358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664fae43fd8f51d84f214cb9493cc9ac630f6d73341f02baa44e2bb90586b299`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:5daa324b9c9cc0134fbbe589b958399fce874763bc71508431ba6ca78d1be95c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:659251aa2bffbf65eb51c465d4f153edd0efea9d03b168bd00d10f807a51ee38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.0 MB (304030887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6351b9faf5e1f814165a925bd51e30b6eafe27f20c08603162d689e34d9fd6bc`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:1f99f4a17a2facbfec22886b06dcf4de2f343b9c5bb0212bb97a51e74a626806
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 MB (292576443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea6210bfca8265d21bc4391f8f8baf9178ea1e9601caa699394577b01ce9d67`
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

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:3b2d6ec4d483a76ac3b22df97341c07c040816c2138003f84b369f720775f9aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.9 MB (318850512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4109752ed01084a0eced9560be3dc904223ffdeabdfea14ff4277880b3738534`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:2639adccd9b5fd50fef2c51fcfc04f67bd961d07b11203914a13a1e0117d3a9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.7 MB (299689358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664fae43fd8f51d84f214cb9493cc9ac630f6d73341f02baa44e2bb90586b299`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:000665ca9c5f69134e127c7c35c530a83010e311497aa8f6117118e9e4f52887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:kernel-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:61cfb6fdb3547818ea7a000de90ea5fdb2ec81fda33cb41de992301719e4147c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197740052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad6c119a3d3a7fd4ffbba7b877bcf3beb87447c8a3a748f70dc57662304b4e73`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:f36f1c48d4971a30b7a76f13c242974f560549a8fcadab4c96dd26bcfb64c1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:dd3077cda3a536b621989ab2be16abdbf0ac886f7fd2752267ea97c8465dfbc0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307929927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d447e301fe7ce5145701106fff9adad0a3ecd9470bf4bd388e9b232810e1ea2c`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:21:52 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Thu, 28 Mar 2019 21:21:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:21:53 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:21:53 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:22:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:22:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:22:04 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:22:05 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:22:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:22:59 GMT
USER 1001
# Thu, 28 Mar 2019 21:22:59 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:22:59 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:22:59 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:22:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1e83387c8e4b34035efabeb4f4b92d36ddad424b2e670635488ac2c533aa71`  
		Last Modified: Thu, 28 Mar 2019 21:30:08 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b27fcdaef2a9cd197fb907891cd0d53363c771b0c13f05b025e59d7a4afff02`  
		Last Modified: Thu, 28 Mar 2019 21:30:15 GMT  
		Size: 113.4 MB (113362690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44410177b99dbc733b03eb105094c25fb67d32e1184042fabc6528238fe1a67`  
		Last Modified: Thu, 28 Mar 2019 21:30:07 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d6751cfdcfe55670183a41467f5f01511a27b262e8215c998bd1cb553e6596`  
		Last Modified: Thu, 28 Mar 2019 21:30:12 GMT  
		Size: 18.7 MB (18711665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:6e70d982dfbe7fd053e64d0ce710f80594d276cbcff6592cef0ae567b716b888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.5 MB (285544369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65f2ec3627a6e5c8af54288ef6296300535fa0313476692c2bbca8c6fd30dfd`
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
# Fri, 29 Mar 2019 10:39:49 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Fri, 29 Mar 2019 10:39:49 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Fri, 29 Mar 2019 10:39:49 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 10:39:49 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 10:40:00 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 10:40:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 10:40:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 10:40:02 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 10:40:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 10:40:22 GMT
USER 1001
# Fri, 29 Mar 2019 10:40:22 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 10:40:23 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 10:40:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 10:40:23 GMT
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
	-	`sha256:06661439ea7bbea6c263c2e9f93c31db01bd11e9cb721a4dd137674b76f5cdf1`  
		Last Modified: Tue, 12 Mar 2019 12:19:33 GMT  
		Size: 117.8 MB (117760797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f619b60575fb0749b464e00bda126dbe83f56ad61d6c18a798eaba77361e03`  
		Last Modified: Fri, 29 Mar 2019 10:43:49 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691f7c23827a21074bcd4a45f1877bd51953a96eccf4c98acea6bfe6da61a7a`  
		Last Modified: Fri, 29 Mar 2019 10:43:59 GMT  
		Size: 113.4 MB (113362658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5326bf0b0a62f29a29ea62856e7d129ef873ab1e58cc5e0d686f707f02448e29`  
		Last Modified: Fri, 29 Mar 2019 10:43:50 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29527bbbff427110a0df91ab55bb56ae32a355a4c30ab61ed98f9167402ee090`  
		Last Modified: Fri, 29 Mar 2019 10:43:52 GMT  
		Size: 7.8 MB (7780662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:85cfeb527438d8cebe46371c3922e4b4473c6122d0a1e4ca3d7edfda267409eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (319982949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2291abd272ffa80dba7baf810c4f41f3db5d31d03beea784b5d24fbb31d7bb7`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:21:00 GMT
ARG LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464
# Fri, 29 Mar 2019 08:21:02 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip
# Fri, 29 Mar 2019 08:21:04 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:21:06 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:21:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:21:46 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:21:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:21:54 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:22:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.3/openliberty-javaee8-19.0.0.3.zip LIBERTY_SHA=3f625c2fe05b5443f61d71832ca38c3d72564464 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 08:22:25 GMT
USER 1001
# Fri, 29 Mar 2019 08:22:27 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:22:28 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:22:30 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:22:31 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71aa0aeb6a42f39ac5e65b558d4eb7bf0580ff98f82421591989b12b8570fd68`  
		Last Modified: Fri, 29 Mar 2019 08:27:42 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c7a19ec6a04e15fad167df60b331b5ac9ca97565d4f370b10f298378e3b80d`  
		Last Modified: Fri, 29 Mar 2019 08:28:16 GMT  
		Size: 113.4 MB (113362695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66812f3be43b3e78edeffe62e7e4620b6e6f9c5ce362c96019e545a97b971835`  
		Last Modified: Fri, 29 Mar 2019 08:27:42 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d3ad9a8b1efee03a0d296053d67896e8186cbaba08e5ba647734d8c1476f7d`  
		Last Modified: Fri, 29 Mar 2019 08:27:47 GMT  
		Size: 15.9 MB (15945319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:90f61b7645b12dedd796f6b15ece87cb1af74fff40e8d32be5f8203bb8fb8a14
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303066639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20114eed99d357292655974183e2fc631e4f97ba9cd3687e90f0624cb1298b38`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:48:56 GMT
ARG LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439
# Tue, 12 Mar 2019 12:48:56 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip
# Tue, 26 Mar 2019 11:46:24 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:46:25 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:46:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:46:38 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:46:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:46:41 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:47:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Tue, 26 Mar 2019 11:47:20 GMT
USER 1001
# Tue, 26 Mar 2019 11:47:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:47:21 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:47:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:47:22 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bb262d4eed22dceb52b362a2ae86c0f59d2629ea4a78da3eff134677505802`  
		Last Modified: Tue, 26 Mar 2019 11:53:24 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e56b0a9d19926753f6c2261d2665a0414dfa2a63e0c94a4a1242e9fe425929a`  
		Last Modified: Tue, 26 Mar 2019 11:53:39 GMT  
		Size: 112.7 MB (112658220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0d39d3264f9096c68f687c43678c676064a91b543ad7167c1d597e6694553d`  
		Last Modified: Tue, 26 Mar 2019 11:53:24 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cb34a9e26da4ed8f46aa2dc30483bdb1472f9e0333d85fde77971a4de00e11`  
		Last Modified: Tue, 26 Mar 2019 11:53:32 GMT  
		Size: 18.2 MB (18165914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1`

```console
$ docker pull open-liberty@sha256:3bed924f2b9294c5bfda7ad4e796f3815e1a17230175c332dd5de18d5133aec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1` - linux; amd64

```console
$ docker pull open-liberty@sha256:72be4e013d23221c13d2ceb2e855d884986ff3b46ff7e81119103d9d0fb7157b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319368941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19028f48e05fb4de91b957bb48b35d0a259a5344a1089dd278e6bc8b15ccb60`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:23:45 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:24:05 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0173386d5b3900b35a60fd9b5263b0dae03af9dcb0a08658ebc1b26289a1cff`  
		Last Modified: Thu, 28 Mar 2019 21:30:31 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c055b51fe7de96a7411c3051988388df7e4d7baa0b34513d5dc33629e7426`  
		Last Modified: Thu, 28 Mar 2019 21:30:34 GMT  
		Size: 15.3 MB (15337508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; 386

```console
$ docker pull open-liberty@sha256:db98d4c770709ea56151e1e8ddc3a746b8f233c2cb248d35084b17ba533c16be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300182706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00feef75c836613e160822f331b927305c63a78d43b43fef0a4bcf58ea352cd5`
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
# Fri, 29 Mar 2019 10:40:26 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:40:43 GMT
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
	-	`sha256:457c2f5463d4eb73c72406d77b778d88f0f8d2fbd04f467c0eaf2a2477277256`  
		Last Modified: Fri, 29 Mar 2019 10:44:05 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d5e65a60e3af8f0898691860add3d19cde6f4af2dd193eb2b3ce48793c522`  
		Last Modified: Fri, 29 Mar 2019 10:44:06 GMT  
		Size: 7.6 MB (7605716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:41e674bf6447a459c0d30829c8b985cd88cbca35df289d08396efcab98381c25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325756110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55629aa90a85195260b59c6688b5e145b656b9ff8db4e69cbb83fa49e7bb4ec`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:22:41 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:22:58 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042204538d5ead8ab83b81e73f9faf24b48bdbb8d18ff5b70dd57bee91a1291`  
		Last Modified: Fri, 29 Mar 2019 08:28:31 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c23678106cc4963a9402582de590d3203ce4b78d2226c0824e446671168689`  
		Last Modified: Fri, 29 Mar 2019 08:28:32 GMT  
		Size: 6.9 MB (6905054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; s390x

```console
$ docker pull open-liberty@sha256:c8efaa279233b09fd28aa60c0410c96d1484feaaa45f4d691936a5b917e29911
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314333398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3235477bf0a351d88eee0d65e5f6ef79778259f218492dc06a8ed71a6804be8`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:47:34 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:48:18 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b283bbb3942d4c834a4cbbafea4c187003725c611683e07fae42e9be25e6734b`  
		Last Modified: Tue, 26 Mar 2019 11:53:48 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a4066a2c70cb8305b6187686778f1fb5158ae95653bf45ae6540ad75606e85`  
		Last Modified: Tue, 26 Mar 2019 11:53:53 GMT  
		Size: 14.6 MB (14643493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:3bed924f2b9294c5bfda7ad4e796f3815e1a17230175c332dd5de18d5133aec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:72be4e013d23221c13d2ceb2e855d884986ff3b46ff7e81119103d9d0fb7157b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.4 MB (319368941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19028f48e05fb4de91b957bb48b35d0a259a5344a1089dd278e6bc8b15ccb60`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:23:45 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:24:05 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0173386d5b3900b35a60fd9b5263b0dae03af9dcb0a08658ebc1b26289a1cff`  
		Last Modified: Thu, 28 Mar 2019 21:30:31 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2c055b51fe7de96a7411c3051988388df7e4d7baa0b34513d5dc33629e7426`  
		Last Modified: Thu, 28 Mar 2019 21:30:34 GMT  
		Size: 15.3 MB (15337508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:db98d4c770709ea56151e1e8ddc3a746b8f233c2cb248d35084b17ba533c16be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300182706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00feef75c836613e160822f331b927305c63a78d43b43fef0a4bcf58ea352cd5`
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
# Fri, 29 Mar 2019 10:40:26 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:40:43 GMT
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
	-	`sha256:457c2f5463d4eb73c72406d77b778d88f0f8d2fbd04f467c0eaf2a2477277256`  
		Last Modified: Fri, 29 Mar 2019 10:44:05 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181d5e65a60e3af8f0898691860add3d19cde6f4af2dd193eb2b3ce48793c522`  
		Last Modified: Fri, 29 Mar 2019 10:44:06 GMT  
		Size: 7.6 MB (7605716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:41e674bf6447a459c0d30829c8b985cd88cbca35df289d08396efcab98381c25
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325756110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55629aa90a85195260b59c6688b5e145b656b9ff8db4e69cbb83fa49e7bb4ec`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:22:41 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:22:58 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042204538d5ead8ab83b81e73f9faf24b48bdbb8d18ff5b70dd57bee91a1291`  
		Last Modified: Fri, 29 Mar 2019 08:28:31 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c23678106cc4963a9402582de590d3203ce4b78d2226c0824e446671168689`  
		Last Modified: Fri, 29 Mar 2019 08:28:32 GMT  
		Size: 6.9 MB (6905054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:c8efaa279233b09fd28aa60c0410c96d1484feaaa45f4d691936a5b917e29911
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314333398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3235477bf0a351d88eee0d65e5f6ef79778259f218492dc06a8ed71a6804be8`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:47:34 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:48:18 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b283bbb3942d4c834a4cbbafea4c187003725c611683e07fae42e9be25e6734b`  
		Last Modified: Tue, 26 Mar 2019 11:53:48 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a4066a2c70cb8305b6187686778f1fb5158ae95653bf45ae6540ad75606e85`  
		Last Modified: Tue, 26 Mar 2019 11:53:53 GMT  
		Size: 14.6 MB (14643493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:b893cf23e19dee0656f2bf4d697821d4c5b95456e35094b110b7e93910ed40b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:0a65317c2f9bbd98728eb54acefeee6ee4f78fe3cb49b12fce54884abf4b3861
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 MB (204535679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e40ea841eddaaac3e4007c3087887dfe0beed7ec36e56c4ca7ee8b87db057c4`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:24:08 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:24:23 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571e92e1ba14a08812e0b3c566a4150d210966f2582cb6e77f3f7be441f95313`  
		Last Modified: Thu, 28 Mar 2019 21:30:37 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040b2eeee284f64028312922e675a42007c82783940e20fdb94c0e30751395bd`  
		Last Modified: Thu, 28 Mar 2019 21:30:38 GMT  
		Size: 6.8 MB (6795083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2`

```console
$ docker pull open-liberty@sha256:72d14205b64f1db8b5f7ed15c275b0bd5524638036e0409c496b108e03794ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2` - linux; amd64

```console
$ docker pull open-liberty@sha256:175b7c4909df748062cb78ca64c9dd225034b12b9b3fc8d9cc337340ff048ad0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319578152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a483bb23e36a7ba01d63b4ea3a724d0b3812e1246006271b96e5b4dafde6ad`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:24:27 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:24:48 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a3410f916b6cec57ed83549728ee9857ad80d79362692665b1e43f3d0c6bd5`  
		Last Modified: Thu, 28 Mar 2019 21:30:40 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c6e7c462c15a8691f479548a290f6552f215b64bf1ad74d53991696da844d1`  
		Last Modified: Thu, 28 Mar 2019 21:30:43 GMT  
		Size: 15.5 MB (15546720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; 386

```console
$ docker pull open-liberty@sha256:2f86d1de01f9bc3bd7b5582200704717ad2047acdd2b487053299fc18798f899
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300197762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aab8424e7cb4aa46a38cde58564619e3c0b0e1d813ad2c7f67ef2eacd134ef2`
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
# Fri, 29 Mar 2019 10:40:49 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:41:06 GMT
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
	-	`sha256:ec1acc1a1d423611b56d28a96ce36248d72c39db019733d9b9f912ad4e8c14a3`  
		Last Modified: Fri, 29 Mar 2019 10:44:10 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5e6500220c27b6c095a7ca1914f90a91828f89b216423be65b3e97a795bdb6`  
		Last Modified: Fri, 29 Mar 2019 10:44:11 GMT  
		Size: 7.6 MB (7620772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:e90236e92690339bd7564b5d29aab4a9746596e8c13eae28b27f24c74cdb392d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331694058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e40b4cd28710ec2eda9d35b742287604f7bc8b15277db57ba8a4a6b64ba53f9`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:23:05 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:23:27 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6d061c1daf52b0425b632a93c41d216df368bdb31fae6ea7ac3ee2dc1d431`  
		Last Modified: Fri, 29 Mar 2019 08:28:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee060a46762765b1f45f1fc4381d5d195ce641ab4a42a051a737016fec892570`  
		Last Modified: Fri, 29 Mar 2019 08:28:47 GMT  
		Size: 12.8 MB (12843002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; s390x

```console
$ docker pull open-liberty@sha256:104f19155917495e5e93926f4b2304de530043c5e461d91c8b1114792e3bd4d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.6 MB (314601843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d225acad0f0767ed156150a3e88eca2849cbd7afcc7f531dd8d2ebed2d102e93`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:48:33 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:49:19 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df55f723f2a5ce22ac8683a1f82d748900901d8a2f86bbf035a2017ecb1ce36f`  
		Last Modified: Tue, 26 Mar 2019 11:54:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17546e900f3a783547cb88046d37686952eae6aa6725389fcb86478de7bb531`  
		Last Modified: Tue, 26 Mar 2019 11:54:06 GMT  
		Size: 14.9 MB (14911940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibm`

```console
$ docker pull open-liberty@sha256:72d14205b64f1db8b5f7ed15c275b0bd5524638036e0409c496b108e03794ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:175b7c4909df748062cb78ca64c9dd225034b12b9b3fc8d9cc337340ff048ad0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319578152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a483bb23e36a7ba01d63b4ea3a724d0b3812e1246006271b96e5b4dafde6ad`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:24:27 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:24:48 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a3410f916b6cec57ed83549728ee9857ad80d79362692665b1e43f3d0c6bd5`  
		Last Modified: Thu, 28 Mar 2019 21:30:40 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c6e7c462c15a8691f479548a290f6552f215b64bf1ad74d53991696da844d1`  
		Last Modified: Thu, 28 Mar 2019 21:30:43 GMT  
		Size: 15.5 MB (15546720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:2f86d1de01f9bc3bd7b5582200704717ad2047acdd2b487053299fc18798f899
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300197762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aab8424e7cb4aa46a38cde58564619e3c0b0e1d813ad2c7f67ef2eacd134ef2`
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
# Fri, 29 Mar 2019 10:40:49 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:41:06 GMT
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
	-	`sha256:ec1acc1a1d423611b56d28a96ce36248d72c39db019733d9b9f912ad4e8c14a3`  
		Last Modified: Fri, 29 Mar 2019 10:44:10 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5e6500220c27b6c095a7ca1914f90a91828f89b216423be65b3e97a795bdb6`  
		Last Modified: Fri, 29 Mar 2019 10:44:11 GMT  
		Size: 7.6 MB (7620772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:e90236e92690339bd7564b5d29aab4a9746596e8c13eae28b27f24c74cdb392d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331694058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e40b4cd28710ec2eda9d35b742287604f7bc8b15277db57ba8a4a6b64ba53f9`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:23:05 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:23:27 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6d061c1daf52b0425b632a93c41d216df368bdb31fae6ea7ac3ee2dc1d431`  
		Last Modified: Fri, 29 Mar 2019 08:28:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee060a46762765b1f45f1fc4381d5d195ce641ab4a42a051a737016fec892570`  
		Last Modified: Fri, 29 Mar 2019 08:28:47 GMT  
		Size: 12.8 MB (12843002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:104f19155917495e5e93926f4b2304de530043c5e461d91c8b1114792e3bd4d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.6 MB (314601843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d225acad0f0767ed156150a3e88eca2849cbd7afcc7f531dd8d2ebed2d102e93`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:48:33 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:49:19 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df55f723f2a5ce22ac8683a1f82d748900901d8a2f86bbf035a2017ecb1ce36f`  
		Last Modified: Tue, 26 Mar 2019 11:54:00 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17546e900f3a783547cb88046d37686952eae6aa6725389fcb86478de7bb531`  
		Last Modified: Tue, 26 Mar 2019 11:54:06 GMT  
		Size: 14.9 MB (14911940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:7da056d1b8f0c4bfe3da10aacddf5720bacd9f92e803a5ce9638b0699aec1ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:0408963589e48ab9bef441c997b0abb5e32d56eb97e5c6f20b2268b4fc414fc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 MB (204548844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a019c6611d2d533cf7e5a7606df225f3755881eafde2dcbe150d2f62722ae4`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:24:55 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:25:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30db34ce7d42696bfc0501b2e7e483941f7be67142ac57cc3f2a3a2b39cd327c`  
		Last Modified: Thu, 28 Mar 2019 21:30:46 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79719b4c9386d0762e93b4e94dc74183ee4e0688ee21f145ae9e5a9aeea8d3cc`  
		Last Modified: Thu, 28 Mar 2019 21:30:48 GMT  
		Size: 6.8 MB (6808248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1`

```console
$ docker pull open-liberty@sha256:93e574d154dc2cdb0a6430226bca1919a3de5c59fe216cd638ec350eca0bd9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1` - linux; amd64

```console
$ docker pull open-liberty@sha256:1a65f976d50de1dd2c814053de6f0db919e4d13061b4452562ab9f57ebcb6aed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.1 MB (314120510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c642c8756b8da77dea2213780a9785de8330321635ba7dc1771c591308ebd925`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:14 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 28 Mar 2019 21:28:40 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:28:51 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8e817d405a8c0f91ef19025fc04cdb3a1b0e6b198178dd3674e4a79b7f2f9`  
		Last Modified: Thu, 28 Mar 2019 21:30:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bebf6fd12ba33981c85fd02836c8f045e63dbb39837058eea55287bd258725`  
		Last Modified: Thu, 28 Mar 2019 21:31:23 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55be225baabd0878faea9948db9ec5d281656045a8dc3bbb5c0afa84d80c22`  
		Last Modified: Thu, 28 Mar 2019 21:31:26 GMT  
		Size: 10.1 MB (10088796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; 386

```console
$ docker pull open-liberty@sha256:e3b79afbaff1ce3f9872b14d8a3e29fab26daceade4a8e13f699515a63ec1dde
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303139761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c62fec9a5d587b8159839149b384d7f0210f4d72cf8e43c730e86d214d7e8bd`
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
# Fri, 29 Mar 2019 10:41:10 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 10:42:55 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:43:10 GMT
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
	-	`sha256:edc85c438b1adb9f3f21a154c8e18b70a09d27f0c5603423ed402c4206b214b5`  
		Last Modified: Fri, 29 Mar 2019 10:44:15 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b800e43ec2674de14f6d7f818cd55ef3e42cd6cdca4206f333edab41daf67ecf`  
		Last Modified: Fri, 29 Mar 2019 10:44:35 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9712bb79c4c762131ffc5ff258862ef6ab1d0ae2eb4f40d7ce2b5b4455ddb`  
		Last Modified: Fri, 29 Mar 2019 10:44:39 GMT  
		Size: 10.6 MB (10562491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:5ab1783cc90b72a421f343dbcba129b5a91bda976f3e768785cdfdbaa3a924de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325743466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb943f3f6a00fee4da5f7330dd8ebf63350a2dcf30ad8a9ea7236fe6cced7e5f`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:23:37 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 08:25:20 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:25:34 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c804950f8ad83a14dc2fa81b1a45707b9ad6bb89d6b16c0b4bc96e82ecda38b1`  
		Last Modified: Fri, 29 Mar 2019 08:28:57 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05caa301cd2e6f51662686eb5ffd047e306004fed07610d9fd893ee87a6ebc1b`  
		Last Modified: Fri, 29 Mar 2019 08:29:36 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cea3e5749634445798d7b9c6b24b51a6357222ecedad2ce67c1d133aede2789`  
		Last Modified: Fri, 29 Mar 2019 08:29:38 GMT  
		Size: 6.9 MB (6892101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; s390x

```console
$ docker pull open-liberty@sha256:9b89481eeb832b62f9ff67438703f5c0b21f22c95a812e4fa1af5617eed58c64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309577789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66848c1d175a7323b15c375ff0553406d3261c856a6b24ce383e933856f370d9`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:49:31 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Tue, 26 Mar 2019 11:51:39 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:52:08 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94633f2f6d3d5a73bb2ff2b712e102b142cc6bc4594183a73c54baeab2dbcc99`  
		Last Modified: Tue, 26 Mar 2019 11:54:12 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a338e121866d68ee74dbc23ff5419a2a0647f2ab53d7abec2c0a883012ab3e3c`  
		Last Modified: Tue, 26 Mar 2019 11:54:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e570dedd4db3dda9bdb0e7a0f9c5877190ab4cb60e94786c24e2e46e4ff325`  
		Last Modified: Tue, 26 Mar 2019 11:54:51 GMT  
		Size: 9.9 MB (9887604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibm`

```console
$ docker pull open-liberty@sha256:93e574d154dc2cdb0a6430226bca1919a3de5c59fe216cd638ec350eca0bd9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:1a65f976d50de1dd2c814053de6f0db919e4d13061b4452562ab9f57ebcb6aed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.1 MB (314120510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c642c8756b8da77dea2213780a9785de8330321635ba7dc1771c591308ebd925`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:14 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 28 Mar 2019 21:28:40 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:28:51 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8e817d405a8c0f91ef19025fc04cdb3a1b0e6b198178dd3674e4a79b7f2f9`  
		Last Modified: Thu, 28 Mar 2019 21:30:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8bebf6fd12ba33981c85fd02836c8f045e63dbb39837058eea55287bd258725`  
		Last Modified: Thu, 28 Mar 2019 21:31:23 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b55be225baabd0878faea9948db9ec5d281656045a8dc3bbb5c0afa84d80c22`  
		Last Modified: Thu, 28 Mar 2019 21:31:26 GMT  
		Size: 10.1 MB (10088796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:e3b79afbaff1ce3f9872b14d8a3e29fab26daceade4a8e13f699515a63ec1dde
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303139761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c62fec9a5d587b8159839149b384d7f0210f4d72cf8e43c730e86d214d7e8bd`
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
# Fri, 29 Mar 2019 10:41:10 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 10:42:55 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:43:10 GMT
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
	-	`sha256:edc85c438b1adb9f3f21a154c8e18b70a09d27f0c5603423ed402c4206b214b5`  
		Last Modified: Fri, 29 Mar 2019 10:44:15 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b800e43ec2674de14f6d7f818cd55ef3e42cd6cdca4206f333edab41daf67ecf`  
		Last Modified: Fri, 29 Mar 2019 10:44:35 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b9712bb79c4c762131ffc5ff258862ef6ab1d0ae2eb4f40d7ce2b5b4455ddb`  
		Last Modified: Fri, 29 Mar 2019 10:44:39 GMT  
		Size: 10.6 MB (10562491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:5ab1783cc90b72a421f343dbcba129b5a91bda976f3e768785cdfdbaa3a924de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325743466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb943f3f6a00fee4da5f7330dd8ebf63350a2dcf30ad8a9ea7236fe6cced7e5f`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:23:37 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 08:25:20 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:25:34 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c804950f8ad83a14dc2fa81b1a45707b9ad6bb89d6b16c0b4bc96e82ecda38b1`  
		Last Modified: Fri, 29 Mar 2019 08:28:57 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05caa301cd2e6f51662686eb5ffd047e306004fed07610d9fd893ee87a6ebc1b`  
		Last Modified: Fri, 29 Mar 2019 08:29:36 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cea3e5749634445798d7b9c6b24b51a6357222ecedad2ce67c1d133aede2789`  
		Last Modified: Fri, 29 Mar 2019 08:29:38 GMT  
		Size: 6.9 MB (6892101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:9b89481eeb832b62f9ff67438703f5c0b21f22c95a812e4fa1af5617eed58c64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309577789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66848c1d175a7323b15c375ff0553406d3261c856a6b24ce383e933856f370d9`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:49:31 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Tue, 26 Mar 2019 11:51:39 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:52:08 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94633f2f6d3d5a73bb2ff2b712e102b142cc6bc4594183a73c54baeab2dbcc99`  
		Last Modified: Tue, 26 Mar 2019 11:54:12 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a338e121866d68ee74dbc23ff5419a2a0647f2ab53d7abec2c0a883012ab3e3c`  
		Last Modified: Tue, 26 Mar 2019 11:54:47 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e570dedd4db3dda9bdb0e7a0f9c5877190ab4cb60e94786c24e2e46e4ff325`  
		Last Modified: Tue, 26 Mar 2019 11:54:51 GMT  
		Size: 9.9 MB (9887604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:5eb037141ab76c7fc692fe317865e15eabb0c481dcf8eafe61b58aba9cf59341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:2da2e0f0137b8256b9c0c0ea3b082e9cffc8b2745e7cfde9278858e2addeaa8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207181850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad94fe9e9146231d4d77ae3aa918c56ed8ffe64cc6b1b8430bd6b9c0b1bf28c6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:31 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 28 Mar 2019 21:28:54 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:29:05 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fbda557c28aa80da23e716836fbe81dc2eaa57be6d32a19bed08e5a018ce86`  
		Last Modified: Thu, 28 Mar 2019 21:30:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122ae06cf6122c1a141f8fffa5c96cd12367dc44bfad095926fe6ce83e621d4f`  
		Last Modified: Thu, 28 Mar 2019 21:31:33 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d18fe45b557476a91d1b4b212ddccb64ccdd7b8ef6dbe5dafa68b1e0bdbeb7`  
		Last Modified: Thu, 28 Mar 2019 21:31:35 GMT  
		Size: 9.4 MB (9440974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2`

```console
$ docker pull open-liberty@sha256:438700193f6e799939326e57dea419fe2c444d0cabfce1180fe837c23adc0243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2` - linux; amd64

```console
$ docker pull open-liberty@sha256:b7002ab3c7d4ccb7801d9de9cf264a1a2e3a9c7d6de2c914b7488b94c58c6b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (313988234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089290e26aa0deb81ca1c09d8b2ef5b528e25fc8b944a06d9ef1efffafb48d78`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:14 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 28 Mar 2019 21:25:15 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:25:27 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8e817d405a8c0f91ef19025fc04cdb3a1b0e6b198178dd3674e4a79b7f2f9`  
		Last Modified: Thu, 28 Mar 2019 21:30:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cbdd44157c9e7cf2600e259a892784c6ff992d143e7f122eead06bfaab3e23`  
		Last Modified: Thu, 28 Mar 2019 21:30:50 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651160a46ba709113330435eae523a55e822edce0d17934c117ecfaf3e8ea79c`  
		Last Modified: Thu, 28 Mar 2019 21:30:52 GMT  
		Size: 10.0 MB (9956521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; 386

```console
$ docker pull open-liberty@sha256:f0a149826ad8f040c8c5e63cc952a472d4b7246cf5bf5b022a8101c9a957c3ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (299992619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d820b628a8f40edc6a7a90f7a72a94e7bb8a324f12dbb4c6660a03a70fc662`
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
# Fri, 29 Mar 2019 10:41:10 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 10:41:10 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:41:22 GMT
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
	-	`sha256:edc85c438b1adb9f3f21a154c8e18b70a09d27f0c5603423ed402c4206b214b5`  
		Last Modified: Fri, 29 Mar 2019 10:44:15 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7662bdc9af720d3c4f4bf613b129319a1ee381737f0b074dc0f67c23b9252c5b`  
		Last Modified: Fri, 29 Mar 2019 10:44:15 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e52a3f60b4376447e8697cf50cf548756205182f425bad2638993b05283b7`  
		Last Modified: Fri, 29 Mar 2019 10:44:17 GMT  
		Size: 7.4 MB (7415350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b88cafb36f41f0c304e3321ed91117ef73bb32dc76b7299b62d3a0e1da74bdf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327339397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0957916bac535a15a5e908ef83d40ab4abe36647a2bf61d8503787ddc2db4d8`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:23:37 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 08:23:43 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:23:57 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c804950f8ad83a14dc2fa81b1a45707b9ad6bb89d6b16c0b4bc96e82ecda38b1`  
		Last Modified: Fri, 29 Mar 2019 08:28:57 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c02f774f96637ed99c6614ae4f05cea916b546b545738592c7f316ca11167`  
		Last Modified: Fri, 29 Mar 2019 08:28:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4b32083e6d7624ec84729e39bf4906b8ff52463a2ef42fbfb9a44d51e2bee5`  
		Last Modified: Fri, 29 Mar 2019 08:29:00 GMT  
		Size: 8.5 MB (8488031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; s390x

```console
$ docker pull open-liberty@sha256:74001c4c000c0c1ceb40e7d42287efed8993d7d125d46b122b52e534bd07d3e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309491096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b22b9d9f8861d4399db343f03d584ddec444d942f5e1eecdfb455aa17f035`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:49:31 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Tue, 26 Mar 2019 11:49:34 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:49:52 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94633f2f6d3d5a73bb2ff2b712e102b142cc6bc4594183a73c54baeab2dbcc99`  
		Last Modified: Tue, 26 Mar 2019 11:54:12 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1a23c5d79c18f0a5b37ab4c96da5ca1b37483996e9581e5a0458bc56d77b8e`  
		Last Modified: Tue, 26 Mar 2019 11:54:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8182c725edec311843e2a1176f561ed3d4bee1798e0191912255829c79d2de`  
		Last Modified: Tue, 26 Mar 2019 11:54:17 GMT  
		Size: 9.8 MB (9800911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibm`

```console
$ docker pull open-liberty@sha256:438700193f6e799939326e57dea419fe2c444d0cabfce1180fe837c23adc0243
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:b7002ab3c7d4ccb7801d9de9cf264a1a2e3a9c7d6de2c914b7488b94c58c6b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (313988234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:089290e26aa0deb81ca1c09d8b2ef5b528e25fc8b944a06d9ef1efffafb48d78`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:14 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 28 Mar 2019 21:25:15 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:25:27 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b8e817d405a8c0f91ef19025fc04cdb3a1b0e6b198178dd3674e4a79b7f2f9`  
		Last Modified: Thu, 28 Mar 2019 21:30:50 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cbdd44157c9e7cf2600e259a892784c6ff992d143e7f122eead06bfaab3e23`  
		Last Modified: Thu, 28 Mar 2019 21:30:50 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651160a46ba709113330435eae523a55e822edce0d17934c117ecfaf3e8ea79c`  
		Last Modified: Thu, 28 Mar 2019 21:30:52 GMT  
		Size: 10.0 MB (9956521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:f0a149826ad8f040c8c5e63cc952a472d4b7246cf5bf5b022a8101c9a957c3ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (299992619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d820b628a8f40edc6a7a90f7a72a94e7bb8a324f12dbb4c6660a03a70fc662`
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
# Fri, 29 Mar 2019 10:41:10 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 10:41:10 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:41:22 GMT
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
	-	`sha256:edc85c438b1adb9f3f21a154c8e18b70a09d27f0c5603423ed402c4206b214b5`  
		Last Modified: Fri, 29 Mar 2019 10:44:15 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7662bdc9af720d3c4f4bf613b129319a1ee381737f0b074dc0f67c23b9252c5b`  
		Last Modified: Fri, 29 Mar 2019 10:44:15 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e52a3f60b4376447e8697cf50cf548756205182f425bad2638993b05283b7`  
		Last Modified: Fri, 29 Mar 2019 10:44:17 GMT  
		Size: 7.4 MB (7415350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b88cafb36f41f0c304e3321ed91117ef73bb32dc76b7299b62d3a0e1da74bdf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327339397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0957916bac535a15a5e908ef83d40ab4abe36647a2bf61d8503787ddc2db4d8`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:23:37 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 29 Mar 2019 08:23:43 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:23:57 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c804950f8ad83a14dc2fa81b1a45707b9ad6bb89d6b16c0b4bc96e82ecda38b1`  
		Last Modified: Fri, 29 Mar 2019 08:28:57 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08c02f774f96637ed99c6614ae4f05cea916b546b545738592c7f316ca11167`  
		Last Modified: Fri, 29 Mar 2019 08:28:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4b32083e6d7624ec84729e39bf4906b8ff52463a2ef42fbfb9a44d51e2bee5`  
		Last Modified: Fri, 29 Mar 2019 08:29:00 GMT  
		Size: 8.5 MB (8488031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:74001c4c000c0c1ceb40e7d42287efed8993d7d125d46b122b52e534bd07d3e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309491096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b22b9d9f8861d4399db343f03d584ddec444d942f5e1eecdfb455aa17f035`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:49:31 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Tue, 26 Mar 2019 11:49:34 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:49:52 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94633f2f6d3d5a73bb2ff2b712e102b142cc6bc4594183a73c54baeab2dbcc99`  
		Last Modified: Tue, 26 Mar 2019 11:54:12 GMT  
		Size: 285.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1a23c5d79c18f0a5b37ab4c96da5ca1b37483996e9581e5a0458bc56d77b8e`  
		Last Modified: Tue, 26 Mar 2019 11:54:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8182c725edec311843e2a1176f561ed3d4bee1798e0191912255829c79d2de`  
		Last Modified: Tue, 26 Mar 2019 11:54:17 GMT  
		Size: 9.8 MB (9800911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:3997bb42397ea96da9266cd9e8bdabb9e2a33bb22cce416063b92c37b40a0cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:9baf2b3e35d993af95378e426c3c325cdefb24d2aa1e938448556ea76afc1c94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207392691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4bcf0ef7126114efea6764a6ed4ae733698b5983b007f23d78c273031f48bb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:31 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 28 Mar 2019 21:25:32 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:25:44 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fbda557c28aa80da23e716836fbe81dc2eaa57be6d32a19bed08e5a018ce86`  
		Last Modified: Thu, 28 Mar 2019 21:30:55 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976319dbecc5150ead72970330c825e5980dac8341c87db473f0ae9422cee87a`  
		Last Modified: Thu, 28 Mar 2019 21:30:55 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee874eb334810714b10c2db58476947ae1112d09f256a60f81cf90a966a12260`  
		Last Modified: Thu, 28 Mar 2019 21:30:58 GMT  
		Size: 9.7 MB (9651822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7`

```console
$ docker pull open-liberty@sha256:30e0b9961af8b451ddb0d42792c5b4f4243d82e56df8b2a7b338d35b37c8fa2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7` - linux; amd64

```console
$ docker pull open-liberty@sha256:d0c42cab0be7640ef82d6001c8a126e8458867e85ece0be72fde90561c52ec97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.7 MB (317739521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e44e07086dfea068d3b8a494bfafee0f35487fd8a886d8a0c6c3507687e217`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:48 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:26:06 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4278b981df6c8540de28e746a3dd326bb213aec337a03ab272fa682b0a93f783`  
		Last Modified: Thu, 28 Mar 2019 21:31:00 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152d68f9cd0af9bbbe42420cdb24b66ad2f1c06a39c97b2d04106e937f69f252`  
		Last Modified: Thu, 28 Mar 2019 21:31:03 GMT  
		Size: 13.7 MB (13708091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; 386

```console
$ docker pull open-liberty@sha256:2c6817a4cd4c42c14b22b2ccb9cdbf36c3a2ef85fdfc0ed403260b3d01f0379f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.9 MB (306854157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1169256d8e44207d1acb73697fe3d9c7f5ea2823fd422b56ec6d61ebc07b3e97`
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
# Fri, 29 Mar 2019 10:41:26 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:41:49 GMT
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
	-	`sha256:8d2a09f54d2c4642f835f6aea3bb8ad410d778a088c70e3b7278d47225aa4d40`  
		Last Modified: Fri, 29 Mar 2019 10:44:21 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8792184c4283fec0b5b1ce6e793759c9f67ed50e5c3456bf597a3ec261be9e`  
		Last Modified: Fri, 29 Mar 2019 10:44:25 GMT  
		Size: 14.3 MB (14277171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f5095eddef31c7f83f76926b514184bb7157d47224e66449c38777ff6323d281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325772386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b23bd6d81c1c0339ecfd3597710445251eb5bd2801630e712601512156e86b87`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:24:10 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:24:27 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fea31658dd687bff16531613b1fba70ae9121b2ef3689cad1f51e19787f6138`  
		Last Modified: Fri, 29 Mar 2019 08:29:11 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0c4355616a88eb772939df3d893343425c6352cfbb82a6bfb3d220fe0865f6`  
		Last Modified: Fri, 29 Mar 2019 08:29:13 GMT  
		Size: 6.9 MB (6921333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; s390x

```console
$ docker pull open-liberty@sha256:c62e07a28301e5c5db51a887993c8cb2654fb50c980c4190d2620263727509c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313224324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ba9568fe30f135609df1979d518432a961f6e1a344d43feccd310ca3602fe8`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:50:01 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:50:38 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcc488caa3c1615cd4759f587cf2696320a41ff4ccf26b53c5bce69226005e6`  
		Last Modified: Tue, 26 Mar 2019 11:54:23 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0876cc2db936decb565a7f50133427176191690050a8ffb6929d52ea916ef7b`  
		Last Modified: Tue, 26 Mar 2019 11:54:27 GMT  
		Size: 13.5 MB (13534423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:30e0b9961af8b451ddb0d42792c5b4f4243d82e56df8b2a7b338d35b37c8fa2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:d0c42cab0be7640ef82d6001c8a126e8458867e85ece0be72fde90561c52ec97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.7 MB (317739521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e44e07086dfea068d3b8a494bfafee0f35487fd8a886d8a0c6c3507687e217`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:19:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:19:47 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:19:47 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:21 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:22 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:22 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:25:48 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:26:06 GMT
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc3b9d22bbfd3432ddc380efc43a22f7b1558cb63f096bab3447c818ee3ce8`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d754bdc1c00af5678aad8abfa9975caa38b4389c947f602187814deb3acd04`  
		Last Modified: Thu, 28 Mar 2019 21:29:28 GMT  
		Size: 128.2 MB (128172748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef457d1d199ba8fd3e8dc7e6cf72cb465b3afca5f792c67e3391f68a411ebb`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6268d828fdf1f43506dd92623373d443233bc22ba3e2b12cb0c7a751bb3727`  
		Last Modified: Thu, 28 Mar 2019 21:29:18 GMT  
		Size: 2.9 KB (2941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4278b981df6c8540de28e746a3dd326bb213aec337a03ab272fa682b0a93f783`  
		Last Modified: Thu, 28 Mar 2019 21:31:00 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152d68f9cd0af9bbbe42420cdb24b66ad2f1c06a39c97b2d04106e937f69f252`  
		Last Modified: Thu, 28 Mar 2019 21:31:03 GMT  
		Size: 13.7 MB (13708091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:2c6817a4cd4c42c14b22b2ccb9cdbf36c3a2ef85fdfc0ed403260b3d01f0379f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.9 MB (306854157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1169256d8e44207d1acb73697fe3d9c7f5ea2823fd422b56ec6d61ebc07b3e97`
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
# Fri, 29 Mar 2019 10:41:26 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 29 Mar 2019 10:41:49 GMT
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
	-	`sha256:8d2a09f54d2c4642f835f6aea3bb8ad410d778a088c70e3b7278d47225aa4d40`  
		Last Modified: Fri, 29 Mar 2019 10:44:21 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8792184c4283fec0b5b1ce6e793759c9f67ed50e5c3456bf597a3ec261be9e`  
		Last Modified: Fri, 29 Mar 2019 10:44:25 GMT  
		Size: 14.3 MB (14277171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f5095eddef31c7f83f76926b514184bb7157d47224e66449c38777ff6323d281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325772386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b23bd6d81c1c0339ecfd3597710445251eb5bd2801630e712601512156e86b87`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:17:43 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Fri, 29 Mar 2019 08:17:47 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Fri, 29 Mar 2019 08:17:50 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:17:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:18:26 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:18:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:18:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:18:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 29 Mar 2019 08:18:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:18:58 GMT
USER 1001
# Fri, 29 Mar 2019 08:19:01 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:19:04 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:19:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 29 Mar 2019 08:24:10 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 29 Mar 2019 08:24:27 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554cbc2b0408d82c92c4b217aa230cae9e95ef40f63e366f6b980913f53526da`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3b6f823d980ba8397da34ee04be623cf6112e5dc2f171ce461084dbeaf34f1`  
		Last Modified: Fri, 29 Mar 2019 08:26:59 GMT  
		Size: 128.2 MB (128172901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe4a0826e33e9eb9547844d69293f1dfca3015b4093e7348cd907f5bd4e6c9`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56b3d8fb499c32da7d06f17d8d8572d81b2f486b6669709d90cdf0b25f2df61`  
		Last Modified: Fri, 29 Mar 2019 08:25:57 GMT  
		Size: 3.0 KB (3041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fea31658dd687bff16531613b1fba70ae9121b2ef3689cad1f51e19787f6138`  
		Last Modified: Fri, 29 Mar 2019 08:29:11 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0c4355616a88eb772939df3d893343425c6352cfbb82a6bfb3d220fe0865f6`  
		Last Modified: Fri, 29 Mar 2019 08:29:13 GMT  
		Size: 6.9 MB (6921333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:c62e07a28301e5c5db51a887993c8cb2654fb50c980c4190d2620263727509c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313224324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ba9568fe30f135609df1979d518432a961f6e1a344d43feccd310ca3602fe8`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Tue, 12 Mar 2019 12:47:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 11:44:58 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:44:58 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:14 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 11:45:20 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:45:21 GMT
USER 1001
# Tue, 26 Mar 2019 11:45:21 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:45:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:45:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 11:50:01 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Tue, 26 Mar 2019 11:50:38 GMT
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
	-	`sha256:32e7734c325b6172b35d718b89b178bd94bfdd6a4416f29756ddd59630b8a28b`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d42b52bf0e2d72d257b73ef17c19adee3a61f59f0ec7e2a3f6cbba0df72d97`  
		Last Modified: Tue, 26 Mar 2019 11:52:49 GMT  
		Size: 127.4 MB (127444254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b624b43f06f11be6f1bd1f6e8d913b37015f3bde3a88bcc2836947062463cb94`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b3c48569d45721dd006931991a3d41acb7d68343e396282a6c54bd364df150`  
		Last Modified: Tue, 26 Mar 2019 11:52:35 GMT  
		Size: 3.0 KB (2970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcc488caa3c1615cd4759f587cf2696320a41ff4ccf26b53c5bce69226005e6`  
		Last Modified: Tue, 26 Mar 2019 11:54:23 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0876cc2db936decb565a7f50133427176191690050a8ffb6929d52ea916ef7b`  
		Last Modified: Tue, 26 Mar 2019 11:54:27 GMT  
		Size: 13.5 MB (13534423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:9e56fc55afaaf9ee289bf1b1f3b2c5648db2a429a846a7728c062119e4782170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:d24c8b9ed94141e6a6e37c2c519156e401e04a7314393c22c85ccf11af40c0b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211131169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4879d4ddd56808d40e321ddff60b089815e7a12fe7bf795a11b5a0f6481c298`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:32 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:41 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.3/openliberty-runtime-19.0.0.3.zip LIBERTY_SHA=ba3d67231db1d00fff562cdc27e17588e9215164 LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 28 Mar 2019 21:20:43 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:20:44 GMT
USER 1001
# Thu, 28 Mar 2019 21:20:44 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:20:44 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:20:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:20:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 28 Mar 2019 21:26:11 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 28 Mar 2019 21:26:31 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef244431fc01957043b64341f9bfeb5f5a0c04a0ba8eab20d4d50ff94c228b93`  
		Last Modified: Thu, 28 Mar 2019 21:29:33 GMT  
		Size: 2.2 KB (2163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ea3d81bce659979081a168a7af59931d1cd7285213f8a7b6e9e3dab4494760`  
		Last Modified: Thu, 28 Mar 2019 21:29:42 GMT  
		Size: 128.2 MB (128199193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73e4e2ab1a74d7ebcc1ce6241d02530ec3ba760e4727550329ba7ac1ccd11c2`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f24a2dc2f1959c65c3e3f0f7492dbdfa9aba6b9291abc4aabe11481cf07c9b`  
		Last Modified: Thu, 28 Mar 2019 21:29:34 GMT  
		Size: 2.9 KB (2938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f7c49e21182c5d0d72d229743837b95c3795b3f2f7029a881b05d27f85169c`  
		Last Modified: Thu, 28 Mar 2019 21:31:06 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2653ded20c542a9a78a7e6e36093c7c570f2b2d4f3c8c8153939220054bc3de2`  
		Last Modified: Thu, 28 Mar 2019 21:31:09 GMT  
		Size: 13.4 MB (13390575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8`

```console
$ docker pull open-liberty@sha256:46faf39bb1effb46ca03d24cbbeb8be7fe65e7ef997e1eb9d65349bc0fb0d0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8` - linux; amd64

```console
$ docker pull open-liberty@sha256:c8f81a65430e3eae140390c05b6a93491f5385eec1486c728a6cafcf49b67d37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272595187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e283684790cf8e776a7ba367aec10ded3501a9cb04837fbfd7ff44f9aa059ad`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:48 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Thu, 28 Mar 2019 21:20:48 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:48 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:48 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:57 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:58 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:59 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:21:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:21:19 GMT
USER 1001
# Thu, 28 Mar 2019 21:21:19 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:21:19 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:21:19 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:21:19 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2bce237ab977d05fe43185986c8ddc8a5d58d591b3cc3138fa655b3cd6669`  
		Last Modified: Thu, 28 Mar 2019 21:29:45 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21942266b7935c4d494cb821e5dbbd5dcca65694cfe0d1221534e7c4920402a0`  
		Last Modified: Thu, 28 Mar 2019 21:29:52 GMT  
		Size: 82.7 MB (82658291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d337cfa8fb7bcd7624c5cdcf1128f83f2cae821d72dea97f89f88266a20a34`  
		Last Modified: Thu, 28 Mar 2019 21:29:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd857c48f6e97a9d1a30302894642eb64efd851235bb9471f7bbd54927e2e71`  
		Last Modified: Thu, 28 Mar 2019 21:29:49 GMT  
		Size: 14.1 MB (14081685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; 386

```console
$ docker pull open-liberty@sha256:eb1b0c28880f903e69a84f5fd52362904e7f1ef930c9e9f72bfcfef3c49cdd64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254715765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82bdf566ce2aa106257397e98e2858d543d44fd9da0116e09a38b1ccb35af5f`
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
# Fri, 29 Mar 2019 10:39:11 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Fri, 29 Mar 2019 10:39:11 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Fri, 29 Mar 2019 10:39:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 10:39:12 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 10:39:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 10:39:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 10:39:24 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 10:39:24 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 10:39:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 10:39:40 GMT
USER 1001
# Fri, 29 Mar 2019 10:39:41 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 10:39:41 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 10:39:41 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 10:39:41 GMT
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
	-	`sha256:06661439ea7bbea6c263c2e9f93c31db01bd11e9cb721a4dd137674b76f5cdf1`  
		Last Modified: Tue, 12 Mar 2019 12:19:33 GMT  
		Size: 117.8 MB (117760797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd95f1ac72c37581be4526ab22c0cba7ef819665ef6e63ac5bf1b0d51d4a687`  
		Last Modified: Fri, 29 Mar 2019 10:43:38 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3da662845aa4a371ad9340a729e8d1d3a857946b86e833c737df87dda25daa`  
		Last Modified: Fri, 29 Mar 2019 10:43:45 GMT  
		Size: 82.7 MB (82658306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b1ec67ed4aea682b5f191905efc431fcb0a96f9c479179c0e3d4e9e739b86`  
		Last Modified: Fri, 29 Mar 2019 10:43:38 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc0609aad7cece01403a580f087d0dc865a511b88cce08a7f8432fdc90a0ef0`  
		Last Modified: Fri, 29 Mar 2019 10:43:40 GMT  
		Size: 7.7 MB (7656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:accc35f86a0744e195be65108d74798cca61a60539d207a873e8f10f92d1f0db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280293790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb9279afa80283dda950b03730ef429c7babc7d8d1e2d6a8ea318a3d07f91e8`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:19:20 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Fri, 29 Mar 2019 08:19:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Fri, 29 Mar 2019 08:19:26 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:19:27 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:19:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:20:04 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:20:13 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:20:15 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:20:39 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 08:20:42 GMT
USER 1001
# Fri, 29 Mar 2019 08:20:45 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:20:48 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:20:51 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:20:53 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ce1f87252f019977ab6d07cded145cc2b9d3d15baa68904202186b470080e5`  
		Last Modified: Fri, 29 Mar 2019 08:27:09 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95958a9a6f6d8b647f539d67efce7bf2f2ed3076597c9997f9a7284fafa9cb96`  
		Last Modified: Fri, 29 Mar 2019 08:27:32 GMT  
		Size: 82.7 MB (82658219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d1a8ccba737c4300c92a30a593f8cd1a8f8d44c8cce0154d2f894ed0207549`  
		Last Modified: Fri, 29 Mar 2019 08:27:10 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd918d244156d6b7841163f513bfa80637d0c1a538379e37a2ea104dd7020e1`  
		Last Modified: Fri, 29 Mar 2019 08:27:11 GMT  
		Size: 7.0 MB (6960988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; s390x

```console
$ docker pull open-liberty@sha256:0876ae5775295eb0498fc82659e6626c475016d94273538d7559d2ea79f586f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267645091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efc2ab97be0431738ec78bc29d01eeba263bccf1a874d0c4439f45798e7a44f`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:48:08 GMT
ARG LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09
# Tue, 12 Mar 2019 12:48:09 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip
# Tue, 26 Mar 2019 11:45:28 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:45:28 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:40 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:45 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:46:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Tue, 26 Mar 2019 11:46:14 GMT
USER 1001
# Tue, 26 Mar 2019 11:46:14 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:46:15 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:46:15 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:46:15 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57fd84e514bc894485266e82cb0440e534740c776573d817fd305747f5ae058`  
		Last Modified: Tue, 26 Mar 2019 11:53:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c55f1259bce463395c07b3e1d245fb2d170b9d73396b5570402b64107f07256`  
		Last Modified: Tue, 26 Mar 2019 11:53:17 GMT  
		Size: 82.0 MB (81954165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e153ebcd608075dd8970327cb0474db3d234218331a265a042c41a40219335ef`  
		Last Modified: Tue, 26 Mar 2019 11:53:06 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72687614045be316cbe0d19fd3d2f6484cdd68436c46a0d5ca44e2dbce46fa8f`  
		Last Modified: Tue, 26 Mar 2019 11:53:13 GMT  
		Size: 13.4 MB (13448778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibm`

```console
$ docker pull open-liberty@sha256:46faf39bb1effb46ca03d24cbbeb8be7fe65e7ef997e1eb9d65349bc0fb0d0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:c8f81a65430e3eae140390c05b6a93491f5385eec1486c728a6cafcf49b67d37
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272595187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e283684790cf8e776a7ba367aec10ded3501a9cb04837fbfd7ff44f9aa059ad`
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
# Tue, 12 Mar 2019 00:41:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 00:42:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 00:42:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:19:46 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:20:48 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Thu, 28 Mar 2019 21:20:48 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:20:48 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:20:48 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:20:57 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:20:58 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:20:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:20:59 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:21:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:21:19 GMT
USER 1001
# Thu, 28 Mar 2019 21:21:19 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:21:19 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:21:19 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:21:19 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a17724bc52ae2b6b566e0776a86a3cb25eb2c65e45f544b5832cc72a8d4a1e01`  
		Last Modified: Tue, 12 Mar 2019 00:44:57 GMT  
		Size: 129.3 MB (129267854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2bce237ab977d05fe43185986c8ddc8a5d58d591b3cc3138fa655b3cd6669`  
		Last Modified: Thu, 28 Mar 2019 21:29:45 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21942266b7935c4d494cb821e5dbbd5dcca65694cfe0d1221534e7c4920402a0`  
		Last Modified: Thu, 28 Mar 2019 21:29:52 GMT  
		Size: 82.7 MB (82658291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d337cfa8fb7bcd7624c5cdcf1128f83f2cae821d72dea97f89f88266a20a34`  
		Last Modified: Thu, 28 Mar 2019 21:29:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd857c48f6e97a9d1a30302894642eb64efd851235bb9471f7bbd54927e2e71`  
		Last Modified: Thu, 28 Mar 2019 21:29:49 GMT  
		Size: 14.1 MB (14081685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:eb1b0c28880f903e69a84f5fd52362904e7f1ef930c9e9f72bfcfef3c49cdd64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254715765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82bdf566ce2aa106257397e98e2858d543d44fd9da0116e09a38b1ccb35af5f`
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
# Fri, 29 Mar 2019 10:39:11 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Fri, 29 Mar 2019 10:39:11 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Fri, 29 Mar 2019 10:39:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 10:39:12 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 10:39:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 10:39:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 10:39:24 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 10:39:24 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 10:39:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 10:39:40 GMT
USER 1001
# Fri, 29 Mar 2019 10:39:41 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 10:39:41 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 10:39:41 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 10:39:41 GMT
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
	-	`sha256:06661439ea7bbea6c263c2e9f93c31db01bd11e9cb721a4dd137674b76f5cdf1`  
		Last Modified: Tue, 12 Mar 2019 12:19:33 GMT  
		Size: 117.8 MB (117760797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd95f1ac72c37581be4526ab22c0cba7ef819665ef6e63ac5bf1b0d51d4a687`  
		Last Modified: Fri, 29 Mar 2019 10:43:38 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3da662845aa4a371ad9340a729e8d1d3a857946b86e833c737df87dda25daa`  
		Last Modified: Fri, 29 Mar 2019 10:43:45 GMT  
		Size: 82.7 MB (82658306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b1ec67ed4aea682b5f191905efc431fcb0a96f9c479179c0e3d4e9e739b86`  
		Last Modified: Fri, 29 Mar 2019 10:43:38 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc0609aad7cece01403a580f087d0dc865a511b88cce08a7f8432fdc90a0ef0`  
		Last Modified: Fri, 29 Mar 2019 10:43:40 GMT  
		Size: 7.7 MB (7656765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:accc35f86a0744e195be65108d74798cca61a60539d207a873e8f10f92d1f0db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280293790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb9279afa80283dda950b03730ef429c7babc7d8d1e2d6a8ea318a3d07f91e8`
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
# Tue, 12 Mar 2019 08:58:03 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Tue, 12 Mar 2019 09:00:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 12 Mar 2019 09:00:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 29 Mar 2019 08:17:40 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Fri, 29 Mar 2019 08:19:20 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Fri, 29 Mar 2019 08:19:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Fri, 29 Mar 2019 08:19:26 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 29 Mar 2019 08:19:27 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 29 Mar 2019 08:19:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 29 Mar 2019 08:20:04 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 29 Mar 2019 08:20:13 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 29 Mar 2019 08:20:15 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 29 Mar 2019 08:20:39 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 29 Mar 2019 08:20:42 GMT
USER 1001
# Fri, 29 Mar 2019 08:20:45 GMT
EXPOSE 9080 9443
# Fri, 29 Mar 2019 08:20:48 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 29 Mar 2019 08:20:51 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 29 Mar 2019 08:20:53 GMT
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
	-	`sha256:38ba0636cc1f43adf8fcf484d8e01eaa092e4acc36f33ac80e651b607994d947`  
		Last Modified: Tue, 12 Mar 2019 09:12:03 GMT  
		Size: 142.0 MB (142013707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ce1f87252f019977ab6d07cded145cc2b9d3d15baa68904202186b470080e5`  
		Last Modified: Fri, 29 Mar 2019 08:27:09 GMT  
		Size: 2.2 KB (2199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95958a9a6f6d8b647f539d67efce7bf2f2ed3076597c9997f9a7284fafa9cb96`  
		Last Modified: Fri, 29 Mar 2019 08:27:32 GMT  
		Size: 82.7 MB (82658219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d1a8ccba737c4300c92a30a593f8cd1a8f8d44c8cce0154d2f894ed0207549`  
		Last Modified: Fri, 29 Mar 2019 08:27:10 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd918d244156d6b7841163f513bfa80637d0c1a538379e37a2ea104dd7020e1`  
		Last Modified: Fri, 29 Mar 2019 08:27:11 GMT  
		Size: 7.0 MB (6960988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:0876ae5775295eb0498fc82659e6626c475016d94273538d7559d2ea79f586f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267645091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6efc2ab97be0431738ec78bc29d01eeba263bccf1a874d0c4439f45798e7a44f`
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
# Tue, 12 Mar 2019 12:47:42 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 12 Mar 2019 12:48:08 GMT
ARG LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09
# Tue, 12 Mar 2019 12:48:09 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip
# Tue, 26 Mar 2019 11:45:28 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 11:45:28 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Tue, 26 Mar 2019 11:45:40 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 11:45:40 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 11:45:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 11:45:45 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 11:46:14 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Tue, 26 Mar 2019 11:46:14 GMT
USER 1001
# Tue, 26 Mar 2019 11:46:14 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 11:46:15 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 11:46:15 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 11:46:15 GMT
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
	-	`sha256:1933609b225b6f9e012a85f906645d1c7904a0d7aa2594a02b4bf0bd05987b38`  
		Last Modified: Tue, 12 Mar 2019 12:31:30 GMT  
		Size: 127.0 MB (127016654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57fd84e514bc894485266e82cb0440e534740c776573d817fd305747f5ae058`  
		Last Modified: Tue, 26 Mar 2019 11:53:06 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c55f1259bce463395c07b3e1d245fb2d170b9d73396b5570402b64107f07256`  
		Last Modified: Tue, 26 Mar 2019 11:53:17 GMT  
		Size: 82.0 MB (81954165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e153ebcd608075dd8970327cb0474db3d234218331a265a042c41a40219335ef`  
		Last Modified: Tue, 26 Mar 2019 11:53:06 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72687614045be316cbe0d19fd3d2f6484cdd68436c46a0d5ca44e2dbce46fa8f`  
		Last Modified: Tue, 26 Mar 2019 11:53:13 GMT  
		Size: 13.4 MB (13448778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:a63c8b01ce3fc20cb04ea558664fab8292a4b46899ec408b9d9c606956be7f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:48a22a4bbd12bf05a716922b192b850609fb7b76510d5025124cc080dc404d0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159065645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cad58f0d78aecb1a762e6342554df9d22afa2f05f3a3aaf3d6f0095810a2503f`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 28 Mar 2019 21:20:31 GMT
ARG LIBERTY_VERSION=19.0.0.3
# Thu, 28 Mar 2019 21:21:25 GMT
ARG LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b
# Thu, 28 Mar 2019 21:21:25 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip
# Thu, 28 Mar 2019 21:21:25 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 28 Mar 2019 21:21:26 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Thu, 28 Mar 2019 21:21:32 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Thu, 28 Mar 2019 21:21:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 28 Mar 2019 21:21:34 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 28 Mar 2019 21:21:34 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 28 Mar 2019 21:21:48 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.3/openliberty-webProfile8-19.0.0.3.zip LIBERTY_SHA=427699c02263c6861bfbffcf6df15ef95989074b LIBERTY_VERSION=19.0.0.3
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Thu, 28 Mar 2019 21:21:48 GMT
USER 1001
# Thu, 28 Mar 2019 21:21:48 GMT
EXPOSE 9080 9443
# Thu, 28 Mar 2019 21:21:48 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 28 Mar 2019 21:21:48 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 28 Mar 2019 21:21:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb602c22be6a9367aac971fcce9252696ba1dc83d81172fa12b82ca0085685`  
		Last Modified: Thu, 28 Mar 2019 21:29:55 GMT  
		Size: 2.2 KB (2164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf97c51360e65b1f125bde9fe5f350bee7868faa0a4b1c2bc3382d7c22b95fb`  
		Last Modified: Thu, 28 Mar 2019 21:30:01 GMT  
		Size: 82.7 MB (82682635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff007cfa7aa05af7905b747c7bdc5fe15b766dcbd6ec600665db4b5ce7d6f32`  
		Last Modified: Thu, 28 Mar 2019 21:29:55 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f69c4e8d46fb59e6f97a5038c389f3a996cde23a91de5d8ed24a5c4aa9aab3`  
		Last Modified: Thu, 28 Mar 2019 21:29:56 GMT  
		Size: 6.8 MB (6845083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
