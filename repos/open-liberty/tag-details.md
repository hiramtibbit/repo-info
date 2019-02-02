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
$ docker pull open-liberty@sha256:32ac2a4f10873b937ad24e7940da3faa0ce81faac113cdded13850c2e1accbf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:5716b3cd5e7fb20701bf9faf54f7b0c5d9860f0244725b27b840e3f323fcfed9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316206887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf9ca8b9d4a4964cf41bb34fb67d02468dd98e727ea2631ccf9b7b64b01257e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:37:26 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 09:37:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:37:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 09:37:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 09:37:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 09:37:47 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 09:37:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 09:37:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 09:38:32 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 09:38:33 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Wed, 23 Jan 2019 22:24:14 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173ea93a5f0b4358df1d4f104dbd64b3a147f86f5f3d26f434d16bb7efa21f2`  
		Last Modified: Wed, 23 Jan 2019 09:42:12 GMT  
		Size: 126.7 MB (126746674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef4e6cb6a52943825200306892c223a0fca39d5065f1a8bd3f5c60bedb7b87`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a9f9419b34224c7f1e758ba72768190e8620cdb746006b6a9bbf81132aff2`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f8547f639f18941b330d4c447c1bfc8fbd8a09cb13e2b5f6686c08549b72e2`  
		Last Modified: Wed, 23 Jan 2019 09:42:25 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834d1440efe6a94703d2fc3eeb23fa67d28d76f653fc087f025147991f97ca`  
		Last Modified: Wed, 23 Jan 2019 22:49:00 GMT  
		Size: 14.8 MB (14830674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; 386

```console
$ docker pull open-liberty@sha256:ef72ac49638381fd27e5ca1e1fa6b8abf5572e1b35e743b467cc2d9f14c86e57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304679486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a168ca6770e07e163f09cbb77ec7c640fc56b0e6ac8df08c916defc09ef9410f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:58:53 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 24 Jan 2019 03:58:54 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:59:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9622134654625c2c71f293018bc5a374937e1da065d2e1b8fe1163e0632249`  
		Last Modified: Thu, 24 Jan 2019 04:01:23 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71d5546c5f4ed89a18e763a4d4cefb93abce8fc5f489edcad51be32fa082b02`  
		Last Modified: Thu, 24 Jan 2019 04:01:27 GMT  
		Size: 15.0 MB (15036765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9accf7c84d5c4c82ba79660d1d6cf58c2835f0680310f412190dc88a9b2a2ff7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332089853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6591601e336eea238484153c80960e7400306a4580a2fdf4b40f628e85fc0fc`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:16:47 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 15:16:56 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:26:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7530f556a961f8ff4248a1faf20ff9323d8967633b933facf621685a5cc63441`  
		Last Modified: Wed, 23 Jan 2019 15:24:57 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33b2f3a19d22fd91d2d334cc38fab1939dac2bb12ef3352684c0c21a6099852`  
		Last Modified: Thu, 24 Jan 2019 09:29:18 GMT  
		Size: 14.8 MB (14792641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:3f0eabed6a11f4fda1d5786705bb34d47f43bf1a657a111607c7659947de4b80
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.2 MB (314165359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4689405cd7f937e0b6469d7c8891057623f075e7ac403e7b100d50f6f6861f7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:01 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 19:48:02 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:56:06 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a0a8e24dee3d6e473466fdd2fc11be0c44309e11d06250067fd69dba10f50e`  
		Last Modified: Wed, 23 Jan 2019 19:50:56 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302645ecc539417ad4662d5be649f319074a1c4a1fa19c56c8c22d002295fbff`  
		Last Modified: Thu, 24 Jan 2019 12:58:44 GMT  
		Size: 14.9 MB (14939527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibm`

```console
$ docker pull open-liberty@sha256:32ac2a4f10873b937ad24e7940da3faa0ce81faac113cdded13850c2e1accbf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:5716b3cd5e7fb20701bf9faf54f7b0c5d9860f0244725b27b840e3f323fcfed9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.2 MB (316206887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abf9ca8b9d4a4964cf41bb34fb67d02468dd98e727ea2631ccf9b7b64b01257e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:37:26 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 09:37:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:37:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 09:37:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 09:37:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 09:37:47 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 09:37:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 09:37:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 09:38:32 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 09:38:33 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Wed, 23 Jan 2019 22:24:14 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173ea93a5f0b4358df1d4f104dbd64b3a147f86f5f3d26f434d16bb7efa21f2`  
		Last Modified: Wed, 23 Jan 2019 09:42:12 GMT  
		Size: 126.7 MB (126746674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef4e6cb6a52943825200306892c223a0fca39d5065f1a8bd3f5c60bedb7b87`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a9f9419b34224c7f1e758ba72768190e8620cdb746006b6a9bbf81132aff2`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f8547f639f18941b330d4c447c1bfc8fbd8a09cb13e2b5f6686c08549b72e2`  
		Last Modified: Wed, 23 Jan 2019 09:42:25 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1834d1440efe6a94703d2fc3eeb23fa67d28d76f653fc087f025147991f97ca`  
		Last Modified: Wed, 23 Jan 2019 22:49:00 GMT  
		Size: 14.8 MB (14830674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:ef72ac49638381fd27e5ca1e1fa6b8abf5572e1b35e743b467cc2d9f14c86e57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304679486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a168ca6770e07e163f09cbb77ec7c640fc56b0e6ac8df08c916defc09ef9410f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:58:53 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 24 Jan 2019 03:58:54 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:59:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9622134654625c2c71f293018bc5a374937e1da065d2e1b8fe1163e0632249`  
		Last Modified: Thu, 24 Jan 2019 04:01:23 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71d5546c5f4ed89a18e763a4d4cefb93abce8fc5f489edcad51be32fa082b02`  
		Last Modified: Thu, 24 Jan 2019 04:01:27 GMT  
		Size: 15.0 MB (15036765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9accf7c84d5c4c82ba79660d1d6cf58c2835f0680310f412190dc88a9b2a2ff7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332089853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6591601e336eea238484153c80960e7400306a4580a2fdf4b40f628e85fc0fc`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:16:47 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 15:16:56 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:26:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7530f556a961f8ff4248a1faf20ff9323d8967633b933facf621685a5cc63441`  
		Last Modified: Wed, 23 Jan 2019 15:24:57 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33b2f3a19d22fd91d2d334cc38fab1939dac2bb12ef3352684c0c21a6099852`  
		Last Modified: Thu, 24 Jan 2019 09:29:18 GMT  
		Size: 14.8 MB (14792641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:3f0eabed6a11f4fda1d5786705bb34d47f43bf1a657a111607c7659947de4b80
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.2 MB (314165359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4689405cd7f937e0b6469d7c8891057623f075e7ac403e7b100d50f6f6861f7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:01 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 19:48:02 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:56:06 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a0a8e24dee3d6e473466fdd2fc11be0c44309e11d06250067fd69dba10f50e`  
		Last Modified: Wed, 23 Jan 2019 19:50:56 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302645ecc539417ad4662d5be649f319074a1c4a1fa19c56c8c22d002295fbff`  
		Last Modified: Thu, 24 Jan 2019 12:58:44 GMT  
		Size: 14.9 MB (14939527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:9495b235d469dea5e13c1164576763b6dba365386395908fe32df91653721120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:7ce9287a93ef9c7854174a25dd4603a50ce9d63127c12c2c5139bfd6a34dbc98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209812452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c21948012603202ae5d350f65fc66da571de3b44c95b023f10146cee42cee7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 31 Jan 2019 03:19:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 31 Jan 2019 03:20:06 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 31 Jan 2019 03:20:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 31 Jan 2019 03:20:07 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 31 Jan 2019 03:20:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 31 Jan 2019 03:20:08 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 03:20:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 31 Jan 2019 03:20:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 03:20:39 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 31 Jan 2019 03:20:40 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 31 Jan 2019 03:21:00 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502d69c0996b02dd1b2c04798fec1b1f05034bac2235c5db45ccf0248a96658a`  
		Last Modified: Thu, 31 Jan 2019 03:23:15 GMT  
		Size: 126.5 MB (126526493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f1033d4f09c4d21df2340e01311f0b4d61f0c268fbc7640061122e78e303`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb74cf092128d4e44b79587f25656d0ed9b13da2b061217ab6346862a04a26f`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd64eada7165ccb674a168638577d099c8861c749cc43a1d52b23eae4b49d6f2`  
		Last Modified: Thu, 31 Jan 2019 03:23:25 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69a6897824420b2ea53e89e194ed71f8255c3055dc1c5245dc4158a7819d937`  
		Last Modified: Thu, 31 Jan 2019 03:23:28 GMT  
		Size: 14.3 MB (14320521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8`

```console
$ docker pull open-liberty@sha256:1d17b9855bfe8c1e262900e63b08e5b903d08d2ec2cf83c0c6989b6769171953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8` - linux; amd64

```console
$ docker pull open-liberty@sha256:7b80f18d83e36340229c5842605df58233d14df12559e37293031dc5ebe22653
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302251269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d09c2bd2e76a174440c8626923cca365094326d0bd0323dd8b6c85dc9761e4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:20:58 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c0804d8e17f716134c2aec3e23280a0bb73fa450
# Fri, 01 Feb 2019 23:21:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:21:10 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 01 Feb 2019 23:21:11 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:21:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Fri, 01 Feb 2019 23:21:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:21:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:21:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aacd589597ccc18cbd8f7e31c3c5909bf908f886d6948b8db29f5e12a186823`  
		Last Modified: Fri, 01 Feb 2019 23:27:16 GMT  
		Size: 112.6 MB (112636446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada853deeab8aaba4209bfefdac74b790060cbb6e8ea7bfddbb07a430cb9becd`  
		Last Modified: Fri, 01 Feb 2019 23:27:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d61679a4f620dbed0553c50e596f7dbbc9903a96f633bd096e766103a41984`  
		Last Modified: Fri, 01 Feb 2019 23:27:10 GMT  
		Size: 15.0 MB (14986991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; 386

```console
$ docker pull open-liberty@sha256:ca686db09d0702696d409a69faa1c437939a2a45c15f6e7834d8af8243143a50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290621074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b076223ebb417c5c2c614262b9232ae7dc320eb98be1bb9d2c62cda3a9f3db`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:57:38 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Thu, 24 Jan 2019 03:57:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:57:49 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 24 Jan 2019 03:57:50 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:09 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 03:58:10 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:10 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebf9be761d68a52cf484759e1ec62110574fddbb26fdd4fb72f2a82b9eed170`  
		Last Modified: Thu, 24 Jan 2019 04:00:54 GMT  
		Size: 112.5 MB (112532700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca4a72a360edeb7c6ed1aca4204e1957639b35e91b307230309b79db5e0c29a`  
		Last Modified: Thu, 24 Jan 2019 04:00:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56046f44de4cdd7662c0298088c740d6a3a610faf6eb08a78686a6f60475d94`  
		Last Modified: Thu, 24 Jan 2019 04:00:49 GMT  
		Size: 15.2 MB (15194010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:123bdcd230a4510f9433eda3422599b98c0f5c45cf8714d76da7645e2dde7a1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318027574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e0acd70173e8e1e7b2823de83971c7258e676f5ea24ae769666b10bf44e0e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:13:32 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 15:13:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 15:14:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 09:24:27 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 09:24:32 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 09:24:38 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 09:24:41 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c40fedc929d01babea4ef2c815ac5eea694ec774ffcf734073bf0905b1f776`  
		Last Modified: Wed, 23 Jan 2019 15:23:36 GMT  
		Size: 112.5 MB (112532652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a0f7092041cf080f4d24f12af125c90ac5720ca021b8a7ff8f9495e5c630a8`  
		Last Modified: Wed, 23 Jan 2019 15:23:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe119229ed7e6f35e08e31565b5464ad545e9f9cb45eac38446e375317b2535`  
		Last Modified: Thu, 24 Jan 2019 09:28:41 GMT  
		Size: 14.9 MB (14946224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; s390x

```console
$ docker pull open-liberty@sha256:01d4336bd3c0eb3a02f34be8e9a6c9af8757deccd3d56e8444985cf25de63304
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300074362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def359b470635c1d9788607a7cc1d4a73a23f13c1e3b0adebf513dc76477aafa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:46:33 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 19:46:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:46:46 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 19:46:48 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 12:55:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 12:55:05 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 12:55:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 12:55:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ca7bf8c82e5db9cd9b52fc86d1d0af3ce7c6fab999f732bbe7e6158fbb704`  
		Last Modified: Wed, 23 Jan 2019 19:50:26 GMT  
		Size: 112.5 MB (112532480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4168f3c65fc2b7370a25b5dc9cc781aa141e473b18bf8e4323a706ccda96cf7e`  
		Last Modified: Wed, 23 Jan 2019 19:50:18 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef11ab045398042bfbda7403cb1f2877b0274d965f586b975fe00b95d664b612`  
		Last Modified: Thu, 24 Jan 2019 12:58:22 GMT  
		Size: 15.1 MB (15064277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibm`

```console
$ docker pull open-liberty@sha256:1d17b9855bfe8c1e262900e63b08e5b903d08d2ec2cf83c0c6989b6769171953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:7b80f18d83e36340229c5842605df58233d14df12559e37293031dc5ebe22653
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302251269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d09c2bd2e76a174440c8626923cca365094326d0bd0323dd8b6c85dc9761e4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:20:58 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c0804d8e17f716134c2aec3e23280a0bb73fa450
# Fri, 01 Feb 2019 23:21:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:21:10 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 01 Feb 2019 23:21:11 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:21:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Fri, 01 Feb 2019 23:21:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:21:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:21:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aacd589597ccc18cbd8f7e31c3c5909bf908f886d6948b8db29f5e12a186823`  
		Last Modified: Fri, 01 Feb 2019 23:27:16 GMT  
		Size: 112.6 MB (112636446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ada853deeab8aaba4209bfefdac74b790060cbb6e8ea7bfddbb07a430cb9becd`  
		Last Modified: Fri, 01 Feb 2019 23:27:06 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d61679a4f620dbed0553c50e596f7dbbc9903a96f633bd096e766103a41984`  
		Last Modified: Fri, 01 Feb 2019 23:27:10 GMT  
		Size: 15.0 MB (14986991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:ca686db09d0702696d409a69faa1c437939a2a45c15f6e7834d8af8243143a50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290621074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b076223ebb417c5c2c614262b9232ae7dc320eb98be1bb9d2c62cda3a9f3db`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:57:38 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Thu, 24 Jan 2019 03:57:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:57:49 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 24 Jan 2019 03:57:50 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:09 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 03:58:10 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:10 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebf9be761d68a52cf484759e1ec62110574fddbb26fdd4fb72f2a82b9eed170`  
		Last Modified: Thu, 24 Jan 2019 04:00:54 GMT  
		Size: 112.5 MB (112532700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca4a72a360edeb7c6ed1aca4204e1957639b35e91b307230309b79db5e0c29a`  
		Last Modified: Thu, 24 Jan 2019 04:00:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56046f44de4cdd7662c0298088c740d6a3a610faf6eb08a78686a6f60475d94`  
		Last Modified: Thu, 24 Jan 2019 04:00:49 GMT  
		Size: 15.2 MB (15194010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:123bdcd230a4510f9433eda3422599b98c0f5c45cf8714d76da7645e2dde7a1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318027574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e0acd70173e8e1e7b2823de83971c7258e676f5ea24ae769666b10bf44e0e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:13:32 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 15:13:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 15:14:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 09:24:27 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 09:24:32 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 09:24:38 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 09:24:41 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c40fedc929d01babea4ef2c815ac5eea694ec774ffcf734073bf0905b1f776`  
		Last Modified: Wed, 23 Jan 2019 15:23:36 GMT  
		Size: 112.5 MB (112532652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a0f7092041cf080f4d24f12af125c90ac5720ca021b8a7ff8f9495e5c630a8`  
		Last Modified: Wed, 23 Jan 2019 15:23:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe119229ed7e6f35e08e31565b5464ad545e9f9cb45eac38446e375317b2535`  
		Last Modified: Thu, 24 Jan 2019 09:28:41 GMT  
		Size: 14.9 MB (14946224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:01d4336bd3c0eb3a02f34be8e9a6c9af8757deccd3d56e8444985cf25de63304
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300074362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def359b470635c1d9788607a7cc1d4a73a23f13c1e3b0adebf513dc76477aafa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:46:33 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 19:46:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:46:46 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 19:46:48 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 12:55:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 12:55:05 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 12:55:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 12:55:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ca7bf8c82e5db9cd9b52fc86d1d0af3ce7c6fab999f732bbe7e6158fbb704`  
		Last Modified: Wed, 23 Jan 2019 19:50:26 GMT  
		Size: 112.5 MB (112532480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4168f3c65fc2b7370a25b5dc9cc781aa141e473b18bf8e4323a706ccda96cf7e`  
		Last Modified: Wed, 23 Jan 2019 19:50:18 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef11ab045398042bfbda7403cb1f2877b0274d965f586b975fe00b95d664b612`  
		Last Modified: Thu, 24 Jan 2019 12:58:22 GMT  
		Size: 15.1 MB (15064277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:18125e5e3ee4412bc76f68b7fa47992003d5ed10a32d01cad6319acf57a75df8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:0a260619b477ab193d557c02d64d22f7d152d7e1ec4047bdc9ad6d4c693c27dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195821116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39d885ed851427f10fae0be498cf8ff1568c59c3df101479580ef5c408d89b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:18:46 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:21:36 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c0804d8e17f716134c2aec3e23280a0bb73fa450
# Fri, 01 Feb 2019 23:21:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Feb 2019 23:21:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 01 Feb 2019 23:21:46 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Feb 2019 23:22:06 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Fri, 01 Feb 2019 23:22:06 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:06 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc59e4f2963c86c7082a5aed706996662b10e19ba0b12c7fa37ca190937220`  
		Last Modified: Thu, 31 Jan 2019 03:22:36 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b61d39f72dba63394231825245d7216b46a09ef0b9abab17b65f1b66adbdbc`  
		Last Modified: Fri, 01 Feb 2019 23:27:29 GMT  
		Size: 112.4 MB (112414904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dccd087c20c972f3aa781374e0f829246b4fb3d45e7355dc89528666b5fd31b`  
		Last Modified: Fri, 01 Feb 2019 23:27:21 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda3dd200c993e9737d9238621cb9ff633cb95c5283f3c1a6bd1fad8244c4ac9`  
		Last Modified: Fri, 01 Feb 2019 23:27:24 GMT  
		Size: 14.4 MB (14442473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel`

```console
$ docker pull open-liberty@sha256:4a8fb4d57391090b7763f56d0ad1f0d7cb4141222c3f9f7966b1bf8954927236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel` - linux; amd64

```console
$ docker pull open-liberty@sha256:f0328190d5076b171a4fe22ac4b5351e71050f253ea0bfcae259a4521688ebee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301569970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec24cb910c7eefad42118825b1ef3721613e2ab8253f94e0cea62f8046fb4d3`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; 386

```console
$ docker pull open-liberty@sha256:5a989d5261503b6a3aa91c949f40bb7654fdabbd8617baf8fbda79fca11311a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289641829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27feedb57772a923f510c9fffcad5ef25e71a6576c713e9110df9295f0856b4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:261e9fe39ed4cf9b39790498bb0ac6506292ee1914e0ac842581ee87a8d30847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317296323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea6710c65c9761b2512d0c9c7d892e0f16ae816c47cfebd6fef4ce0eec0e8d4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; s390x

```console
$ docker pull open-liberty@sha256:0d9ac1ce0ceedc3c32e4be4c5cad0db8066fea005ec3c9d4bfddd46769cae22d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299224938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc9c4f5e5323d3b1fbea38e4d7b62acc842e69d0bf74b5195aaae300d0e3303`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:4a8fb4d57391090b7763f56d0ad1f0d7cb4141222c3f9f7966b1bf8954927236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:f0328190d5076b171a4fe22ac4b5351e71050f253ea0bfcae259a4521688ebee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301569970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec24cb910c7eefad42118825b1ef3721613e2ab8253f94e0cea62f8046fb4d3`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:5a989d5261503b6a3aa91c949f40bb7654fdabbd8617baf8fbda79fca11311a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289641829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27feedb57772a923f510c9fffcad5ef25e71a6576c713e9110df9295f0856b4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:261e9fe39ed4cf9b39790498bb0ac6506292ee1914e0ac842581ee87a8d30847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.3 MB (317296323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea6710c65c9761b2512d0c9c7d892e0f16ae816c47cfebd6fef4ce0eec0e8d4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:0d9ac1ce0ceedc3c32e4be4c5cad0db8066fea005ec3c9d4bfddd46769cae22d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299224938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc9c4f5e5323d3b1fbea38e4d7b62acc842e69d0bf74b5195aaae300d0e3303`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:f940504bc29f17364a6ba7a9f70fad0e94b2a80ce9553a3f8096483844b885ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:kernel-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:7353d2009b8a37080ee80d3a79827fc74272c9ca38fadeece73c7fb0848fab7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.7 MB (195684361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bdb34638aff6272f5764f3f099aebc5fc4ac98e4b3582323d3cffd1bbccfb7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:33 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:39 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Feb 2019 23:22:40 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:40 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Feb 2019 23:22:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:42 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df461f15bec85bd8204907b3d8e4942e3e5f08699651ed5c22e4f603926a0a02`  
		Last Modified: Fri, 01 Feb 2019 23:27:55 GMT  
		Size: 126.7 MB (126719803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13469f414a8d92816139726620d412dd1e8315a7ee3319c7636253a4fc81ff8`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42555f0a7c46de19f0ce2d2b9f71c52799ac6f4678580a99d850faeaee005f9e`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:50db8c43a32b7163895de8872fdcc05216c2334ed73e72d5b9c31da9fa0e8a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:d49c105eb4e851e617a10db662db0b98486be3449248826381755bbce7061d65
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.1 MB (302094736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64363db9da51e474d92119b2b7b86003d90e2e3c8172042aebfdfa1f27a80418`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:36:31 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 09:36:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:36:49 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 09:36:50 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 22:22:24 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Wed, 23 Jan 2019 22:22:24 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 22:22:25 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 22:22:25 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d7c01783d626cfc610749fbd0679fcf830cb10b4115a65ab57b54edf493a2f`  
		Last Modified: Wed, 23 Jan 2019 09:41:51 GMT  
		Size: 112.5 MB (112532703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e5f6c68323f6b8318434cc5f24e8336e34df557b11424c090b6288debe3f7`  
		Last Modified: Wed, 23 Jan 2019 09:41:41 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9fc2c27b60172d9ff068df115e22b2c979667e2e0a736ccbf6a8ba67691f2e`  
		Last Modified: Wed, 23 Jan 2019 22:48:22 GMT  
		Size: 14.9 MB (14934206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:ca686db09d0702696d409a69faa1c437939a2a45c15f6e7834d8af8243143a50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290621074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b076223ebb417c5c2c614262b9232ae7dc320eb98be1bb9d2c62cda3a9f3db`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:57:38 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Thu, 24 Jan 2019 03:57:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:57:49 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 24 Jan 2019 03:57:50 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:09 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 03:58:10 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:10 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebf9be761d68a52cf484759e1ec62110574fddbb26fdd4fb72f2a82b9eed170`  
		Last Modified: Thu, 24 Jan 2019 04:00:54 GMT  
		Size: 112.5 MB (112532700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca4a72a360edeb7c6ed1aca4204e1957639b35e91b307230309b79db5e0c29a`  
		Last Modified: Thu, 24 Jan 2019 04:00:43 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56046f44de4cdd7662c0298088c740d6a3a610faf6eb08a78686a6f60475d94`  
		Last Modified: Thu, 24 Jan 2019 04:00:49 GMT  
		Size: 15.2 MB (15194010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:123bdcd230a4510f9433eda3422599b98c0f5c45cf8714d76da7645e2dde7a1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.0 MB (318027574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:808e0acd70173e8e1e7b2823de83971c7258e676f5ea24ae769666b10bf44e0e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:13:32 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 15:13:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:14:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 15:14:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 09:24:27 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 09:24:32 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 09:24:38 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 09:24:41 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c40fedc929d01babea4ef2c815ac5eea694ec774ffcf734073bf0905b1f776`  
		Last Modified: Wed, 23 Jan 2019 15:23:36 GMT  
		Size: 112.5 MB (112532652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a0f7092041cf080f4d24f12af125c90ac5720ca021b8a7ff8f9495e5c630a8`  
		Last Modified: Wed, 23 Jan 2019 15:23:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe119229ed7e6f35e08e31565b5464ad545e9f9cb45eac38446e375317b2535`  
		Last Modified: Thu, 24 Jan 2019 09:28:41 GMT  
		Size: 14.9 MB (14946224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:01d4336bd3c0eb3a02f34be8e9a6c9af8757deccd3d56e8444985cf25de63304
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300074362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def359b470635c1d9788607a7cc1d4a73a23f13c1e3b0adebf513dc76477aafa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:46:33 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=282d3cbe9d5017a3a993b91e0c651719d40afb01
# Wed, 23 Jan 2019 19:46:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:46:46 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Wed, 23 Jan 2019 19:46:48 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 12:55:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Thu, 24 Jan 2019 12:55:05 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 12:55:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 12:55:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1ca7bf8c82e5db9cd9b52fc86d1d0af3ce7c6fab999f732bbe7e6158fbb704`  
		Last Modified: Wed, 23 Jan 2019 19:50:26 GMT  
		Size: 112.5 MB (112532480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4168f3c65fc2b7370a25b5dc9cc781aa141e473b18bf8e4323a706ccda96cf7e`  
		Last Modified: Wed, 23 Jan 2019 19:50:18 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef11ab045398042bfbda7403cb1f2877b0274d965f586b975fe00b95d664b612`  
		Last Modified: Thu, 24 Jan 2019 12:58:22 GMT  
		Size: 15.1 MB (15064277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1`

```console
$ docker pull open-liberty@sha256:5ff4275ed62fe021876901f2676d2b447a280e9cdde09a38c85b544e664dfa43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1` - linux; amd64

```console
$ docker pull open-liberty@sha256:0f2f5fa7d3f8eb3535405aa7c6c9bc65fed21c5ee2121dad5b5771072bca9d01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313388260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379d71a4a8be0a114a47b061b14dcb91ef68e9bec4f4f3344f719253b151e980`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:24:43 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:24:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596365d9eadc31275cdc15e0942b270510cd7c89db032ba215dcd57c102f798`  
		Last Modified: Fri, 01 Feb 2019 23:28:32 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ce0bfe8f8c85dff49ce2846fefb5894fb93229ae7034e6bb759354626fc94f`  
		Last Modified: Fri, 01 Feb 2019 23:28:35 GMT  
		Size: 11.8 MB (11817746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; 386

```console
$ docker pull open-liberty@sha256:a0eba9e572767ac890ef6f78fcd02d8ce0f72cfa35a548079fe72fefc1e03102
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301573498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cef65e2d3bde2de0af61a9ad9fbec8e747bd86160ebb40a8a2ead9ff97445`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:32 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:59:46 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e588d883fc4745173b3d6109b35341b81e1d2faaeec48c8fa48142069fbe885`  
		Last Modified: Thu, 24 Jan 2019 04:01:38 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6410c67b4f5cb145da1045e7a77a7422a35b9ca93d180b564b489003c1c331`  
		Last Modified: Thu, 24 Jan 2019 04:01:41 GMT  
		Size: 11.9 MB (11931128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c26582ef12d0521c930e929792a09c2f26fe231bec4ce0483e504067e39005e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (329048023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e740d1048baa94545b52fa6504f54b192f84f7255821d5bf975babcc1bc25c79`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:19:29 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:27:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7786c88cd8a0fbb4ad902ccb740ac37904ccd319324d09f55a620b99d89a4682`  
		Last Modified: Wed, 23 Jan 2019 15:25:31 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf2691da839bc1fff620fb5fddc13d1459ff1a3d25229e243466d1f331e267e`  
		Last Modified: Thu, 24 Jan 2019 09:29:46 GMT  
		Size: 11.8 MB (11751163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; s390x

```console
$ docker pull open-liberty@sha256:f232ac360689c4be11ce8ad886808d5e451ffdeaa7562ed676dbd619994f3718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.5 MB (311524262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9d85767ba97c35e2273fc7648f71ca33031232e533aff1dfacd7bc342e4eaf`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:53 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:56:57 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c1813b16fddf33dbf11405e623e63582a35eb188f6bc188af86e3c259dd110`  
		Last Modified: Wed, 23 Jan 2019 19:51:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d63d776d4418a0b18f38bbdb2addf7ae1e3a1b347ff445a6e1da97dbb976bb7`  
		Last Modified: Thu, 24 Jan 2019 12:59:03 GMT  
		Size: 12.3 MB (12298782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:5ff4275ed62fe021876901f2676d2b447a280e9cdde09a38c85b544e664dfa43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:0f2f5fa7d3f8eb3535405aa7c6c9bc65fed21c5ee2121dad5b5771072bca9d01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313388260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379d71a4a8be0a114a47b061b14dcb91ef68e9bec4f4f3344f719253b151e980`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:24:43 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:24:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596365d9eadc31275cdc15e0942b270510cd7c89db032ba215dcd57c102f798`  
		Last Modified: Fri, 01 Feb 2019 23:28:32 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ce0bfe8f8c85dff49ce2846fefb5894fb93229ae7034e6bb759354626fc94f`  
		Last Modified: Fri, 01 Feb 2019 23:28:35 GMT  
		Size: 11.8 MB (11817746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:a0eba9e572767ac890ef6f78fcd02d8ce0f72cfa35a548079fe72fefc1e03102
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301573498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0cef65e2d3bde2de0af61a9ad9fbec8e747bd86160ebb40a8a2ead9ff97445`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:32 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:59:46 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e588d883fc4745173b3d6109b35341b81e1d2faaeec48c8fa48142069fbe885`  
		Last Modified: Thu, 24 Jan 2019 04:01:38 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6410c67b4f5cb145da1045e7a77a7422a35b9ca93d180b564b489003c1c331`  
		Last Modified: Thu, 24 Jan 2019 04:01:41 GMT  
		Size: 11.9 MB (11931128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c26582ef12d0521c930e929792a09c2f26fe231bec4ce0483e504067e39005e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (329048023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e740d1048baa94545b52fa6504f54b192f84f7255821d5bf975babcc1bc25c79`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:19:29 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:27:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7786c88cd8a0fbb4ad902ccb740ac37904ccd319324d09f55a620b99d89a4682`  
		Last Modified: Wed, 23 Jan 2019 15:25:31 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf2691da839bc1fff620fb5fddc13d1459ff1a3d25229e243466d1f331e267e`  
		Last Modified: Thu, 24 Jan 2019 09:29:46 GMT  
		Size: 11.8 MB (11751163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:f232ac360689c4be11ce8ad886808d5e451ffdeaa7562ed676dbd619994f3718
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.5 MB (311524262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9d85767ba97c35e2273fc7648f71ca33031232e533aff1dfacd7bc342e4eaf`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:53 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:56:57 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c1813b16fddf33dbf11405e623e63582a35eb188f6bc188af86e3c259dd110`  
		Last Modified: Wed, 23 Jan 2019 19:51:12 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d63d776d4418a0b18f38bbdb2addf7ae1e3a1b347ff445a6e1da97dbb976bb7`  
		Last Modified: Thu, 24 Jan 2019 12:59:03 GMT  
		Size: 12.3 MB (12298782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:2dc03d26ba8fb94c53ef905465c11868112bcd1d5b016bae84995f3f4e038bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:198900d24141a5fd328828a990c761b691ac7168e169b7d3ba2e2af87ab389dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207012424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f435a3317ceabb04ea69a71e0ad98544da14b3e08d3281d23adb48e548aa572e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:33 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:39 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Feb 2019 23:22:40 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:40 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Feb 2019 23:22:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:42 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:25:03 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:25:18 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df461f15bec85bd8204907b3d8e4942e3e5f08699651ed5c22e4f603926a0a02`  
		Last Modified: Fri, 01 Feb 2019 23:27:55 GMT  
		Size: 126.7 MB (126719803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13469f414a8d92816139726620d412dd1e8315a7ee3319c7636253a4fc81ff8`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42555f0a7c46de19f0ce2d2b9f71c52799ac6f4678580a99d850faeaee005f9e`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56cbc38b87002f7a2dcc4f0e059a4a818d7d60850f70e079e374473f82f00bdf`  
		Last Modified: Fri, 01 Feb 2019 23:28:39 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12722fc9c4e4492b8feb73fffa25b3e3d6e26815d7d8286dd5cb3b20273a247f`  
		Last Modified: Fri, 01 Feb 2019 23:28:42 GMT  
		Size: 11.3 MB (11327519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2`

```console
$ docker pull open-liberty@sha256:756c8257077550233f89ce30cd34f8b8b69297b22f915faf7bd6036ec99191e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2` - linux; amd64

```console
$ docker pull open-liberty@sha256:15e50e858165837edfc04909a015555fd4d26baf615f5a9fb47d8c3ac62ca397
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313558135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7a83f0ce5add4204015f5cb26d75831d7da85297405d0e82ae596b4751a026`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:25:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:25:39 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f9a9510a2965b68c4e7dd91cbaa809a7d3b25f6dae8cf3fe3ad569c21d777c`  
		Last Modified: Fri, 01 Feb 2019 23:28:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cc91965135364bdf9d985ec4e57ff6e190dc15b825e7f8dd16b2912e581110`  
		Last Modified: Fri, 01 Feb 2019 23:28:49 GMT  
		Size: 12.0 MB (11987621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; 386

```console
$ docker pull open-liberty@sha256:e298b8d5674c694f2cee65e758b8d56bd17d658f19d67a818c2f4f3e93f47b59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.7 MB (301712214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7768442eb50c7ba8676c66a479593cce02ed52cd900830150946193079c5cb66`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:50 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 24 Jan 2019 04:00:04 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e1e6f32f0187ca50483ff3221b0df9c97e83f44486d22952b0e76cc1f1827e`  
		Last Modified: Thu, 24 Jan 2019 04:01:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e277c12b4e4c5795db2aec167d133ccb01e78be752bb9e99bf906e6152554a9d`  
		Last Modified: Thu, 24 Jan 2019 04:01:49 GMT  
		Size: 12.1 MB (12069844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9f6b54021557c01fd1896565d24f1c39cb1afbe9c487260730ac0cf2578edeca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329399032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef22d035436a3369dc17c9a0cf82935cf4ac01c6be2b8ccdfdd63093cb4e622f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:20:39 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:27:37 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055b36a7820aef2cdcb5c2c66954ceb32c5f4de4f25f34eb47cc0f50a9a535d4`  
		Last Modified: Wed, 23 Jan 2019 15:25:48 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0724eb6527f3f490304482bb8b5e45fbc48c662f92759ee38b5169a959f954d8`  
		Last Modified: Thu, 24 Jan 2019 09:30:01 GMT  
		Size: 12.1 MB (12102172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; s390x

```console
$ docker pull open-liberty@sha256:26b4bb0bcbb41af98fe5cd2479907a42dda52e1d1fce9add4db482e47793d4ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.7 MB (311657997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceb765ff27044ba600e5b3adca649c27ed40c02c14e71a336bd607fcb9b709`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:49:15 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:57:24 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecefefbd58f52a2aaa33b2e8372dee42526a61c1c8f06a6ad4b98a72f20f978`  
		Last Modified: Wed, 23 Jan 2019 19:51:21 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a555019ae346cbb765f9727ac38abf9d38ffa467cec90291f23c1ae2c47204`  
		Last Modified: Thu, 24 Jan 2019 12:59:15 GMT  
		Size: 12.4 MB (12432516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibm`

```console
$ docker pull open-liberty@sha256:756c8257077550233f89ce30cd34f8b8b69297b22f915faf7bd6036ec99191e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:15e50e858165837edfc04909a015555fd4d26baf615f5a9fb47d8c3ac62ca397
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313558135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7a83f0ce5add4204015f5cb26d75831d7da85297405d0e82ae596b4751a026`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:25:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:25:39 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f9a9510a2965b68c4e7dd91cbaa809a7d3b25f6dae8cf3fe3ad569c21d777c`  
		Last Modified: Fri, 01 Feb 2019 23:28:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cc91965135364bdf9d985ec4e57ff6e190dc15b825e7f8dd16b2912e581110`  
		Last Modified: Fri, 01 Feb 2019 23:28:49 GMT  
		Size: 12.0 MB (11987621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:e298b8d5674c694f2cee65e758b8d56bd17d658f19d67a818c2f4f3e93f47b59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.7 MB (301712214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7768442eb50c7ba8676c66a479593cce02ed52cd900830150946193079c5cb66`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:50 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 24 Jan 2019 04:00:04 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e1e6f32f0187ca50483ff3221b0df9c97e83f44486d22952b0e76cc1f1827e`  
		Last Modified: Thu, 24 Jan 2019 04:01:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e277c12b4e4c5795db2aec167d133ccb01e78be752bb9e99bf906e6152554a9d`  
		Last Modified: Thu, 24 Jan 2019 04:01:49 GMT  
		Size: 12.1 MB (12069844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9f6b54021557c01fd1896565d24f1c39cb1afbe9c487260730ac0cf2578edeca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329399032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef22d035436a3369dc17c9a0cf82935cf4ac01c6be2b8ccdfdd63093cb4e622f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:20:39 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:27:37 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055b36a7820aef2cdcb5c2c66954ceb32c5f4de4f25f34eb47cc0f50a9a535d4`  
		Last Modified: Wed, 23 Jan 2019 15:25:48 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0724eb6527f3f490304482bb8b5e45fbc48c662f92759ee38b5169a959f954d8`  
		Last Modified: Thu, 24 Jan 2019 09:30:01 GMT  
		Size: 12.1 MB (12102172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:26b4bb0bcbb41af98fe5cd2479907a42dda52e1d1fce9add4db482e47793d4ea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.7 MB (311657997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ceb765ff27044ba600e5b3adca649c27ed40c02c14e71a336bd607fcb9b709`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:49:15 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:57:24 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecefefbd58f52a2aaa33b2e8372dee42526a61c1c8f06a6ad4b98a72f20f978`  
		Last Modified: Wed, 23 Jan 2019 19:51:21 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a555019ae346cbb765f9727ac38abf9d38ffa467cec90291f23c1ae2c47204`  
		Last Modified: Thu, 24 Jan 2019 12:59:15 GMT  
		Size: 12.4 MB (12432516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:84f336d7c83a3e5a6dba30be14d7780d232f52cf1abaf4943973c9bb345a06a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:c03125a99e07d05d1c2f4d081e925a7f96e55beb4e45003cbffad59ce3732473
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207205014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7eaa8ea13225e351ac374aec75a0a510861123162ae765b645c163e8552803`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:33 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:39 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Feb 2019 23:22:40 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:40 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Feb 2019 23:22:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:42 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:25:43 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:25:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df461f15bec85bd8204907b3d8e4942e3e5f08699651ed5c22e4f603926a0a02`  
		Last Modified: Fri, 01 Feb 2019 23:27:55 GMT  
		Size: 126.7 MB (126719803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13469f414a8d92816139726620d412dd1e8315a7ee3319c7636253a4fc81ff8`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42555f0a7c46de19f0ce2d2b9f71c52799ac6f4678580a99d850faeaee005f9e`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3ed5baa5a5b8012b1f1336048458e0d0f7899d46d02b577524a2c737417f9`  
		Last Modified: Fri, 01 Feb 2019 23:28:52 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143385cae65ebbcb3f590ed41f765f89bc8974bd901c98a2d4cd815ba9a3c56d`  
		Last Modified: Fri, 01 Feb 2019 23:28:55 GMT  
		Size: 11.5 MB (11520110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1`

```console
$ docker pull open-liberty@sha256:fbdfda6eb96b24ef5b8214e4398ac9b8737a3528923899e49cf000cb6ccf7cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1` - linux; amd64

```console
$ docker pull open-liberty@sha256:bd273fce372481b41e771407c196834e195a00ebbb1726febb3cad157123ed67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (309978790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a1d60c758f5a90417bff65565272b201e2cbd82cbda53634c15595d047173f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:37:26 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 09:37:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:37:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 09:37:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 09:37:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 09:37:47 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 09:37:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 09:37:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 09:39:21 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 09:39:22 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Wed, 23 Jan 2019 22:44:55 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173ea93a5f0b4358df1d4f104dbd64b3a147f86f5f3d26f434d16bb7efa21f2`  
		Last Modified: Wed, 23 Jan 2019 09:42:12 GMT  
		Size: 126.7 MB (126746674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef4e6cb6a52943825200306892c223a0fca39d5065f1a8bd3f5c60bedb7b87`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a9f9419b34224c7f1e758ba72768190e8620cdb746006b6a9bbf81132aff2`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7db3863542d2e9127681663b16e6c2f20f0e7e60a306ea64db36d6082aea37`  
		Last Modified: Wed, 23 Jan 2019 09:42:36 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfd9925c38aa5fee2ca330ab62c4f50785c00b87d9d459761fe507009e2b8a`  
		Last Modified: Wed, 23 Jan 2019 09:42:36 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce9c965bb15d4e5b23585836c4e03f39ffa1590430184a40ad412f835c644a2`  
		Last Modified: Wed, 23 Jan 2019 22:49:07 GMT  
		Size: 8.6 MB (8602679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; 386

```console
$ docker pull open-liberty@sha256:e35f62fda9a6c5930e7838d62b02b74e6bbbeb93ccb8e6ab5264fd2caf2eb80b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298393259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ba5b1cc964cdc35796113c86e906e64257e3e9b572980600bba0a6ce907033`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:17 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 24 Jan 2019 03:59:18 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:59:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73077308ede89684d363d91b1fb5af22d60230f38634ce6bb7ea68eb417e05a5`  
		Last Modified: Thu, 24 Jan 2019 04:01:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38edaf084f3dca602a7fb3fdbac0893bbfdfb9ba9de98d9d211d782c4e2b9883`  
		Last Modified: Thu, 24 Jan 2019 04:01:31 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205d5ee1148e4fe1938d1c7c867e0ebab490513c79c9e1fe1b8bdea8a806a7da`  
		Last Modified: Thu, 24 Jan 2019 04:01:34 GMT  
		Size: 8.8 MB (8750638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d3bbcfab3c6eabe1a584a70863c5f2b1290bc22a1d1983db42dcaccb1bfcaa68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325828424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271e00f0f8fd34278a7d3c953cb3a1b964c31d17ae3f8618d131fb31330f12ad`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:18:28 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 15:18:39 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:26:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376e313c870b6493640f681d29693bf8524950be658d0c58d976af5d93ca5396`  
		Last Modified: Wed, 23 Jan 2019 15:25:13 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d25a2b47d3a9e89d636c6249ec40c01e59a106720d502103caae42036d210d6`  
		Last Modified: Wed, 23 Jan 2019 15:25:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc9c466cf1cc33ade66b74c4f6865b68f1cc2c3361cf8f444abf307be6b81fe`  
		Last Modified: Thu, 24 Jan 2019 09:29:32 GMT  
		Size: 8.5 MB (8531286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; s390x

```console
$ docker pull open-liberty@sha256:1f860a428e916ba966f02ec3f9b8b0ef046a10eef42e51380d1b149699b7537b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307922476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef34cfae196f99af23b7ce9bfae4fc9b70a8819eb77797d61c1a1874761acd2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:32 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 19:48:33 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:56:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fa71a346bbff46a447c2e65d5d919c4869e3829661035ba04314f2b89a8db5`  
		Last Modified: Wed, 23 Jan 2019 19:51:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48e59c955293e4cc832e445f5f356064e685cfa19f958dc2b6a6ca1174d7454`  
		Last Modified: Wed, 23 Jan 2019 19:51:05 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdd83b6225b027754c2edac6e20a04a54b0e94bad9f124219aa73079f4c94c7`  
		Last Modified: Thu, 24 Jan 2019 12:58:53 GMT  
		Size: 8.7 MB (8696746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibm`

```console
$ docker pull open-liberty@sha256:fbdfda6eb96b24ef5b8214e4398ac9b8737a3528923899e49cf000cb6ccf7cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:bd273fce372481b41e771407c196834e195a00ebbb1726febb3cad157123ed67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.0 MB (309978790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a1d60c758f5a90417bff65565272b201e2cbd82cbda53634c15595d047173f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:37:26 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 09:37:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:37:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 09:37:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 09:37:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 09:37:47 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 09:37:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 09:37:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 09:39:21 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 09:39:22 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Wed, 23 Jan 2019 22:44:55 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173ea93a5f0b4358df1d4f104dbd64b3a147f86f5f3d26f434d16bb7efa21f2`  
		Last Modified: Wed, 23 Jan 2019 09:42:12 GMT  
		Size: 126.7 MB (126746674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef4e6cb6a52943825200306892c223a0fca39d5065f1a8bd3f5c60bedb7b87`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a9f9419b34224c7f1e758ba72768190e8620cdb746006b6a9bbf81132aff2`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7db3863542d2e9127681663b16e6c2f20f0e7e60a306ea64db36d6082aea37`  
		Last Modified: Wed, 23 Jan 2019 09:42:36 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfd9925c38aa5fee2ca330ab62c4f50785c00b87d9d459761fe507009e2b8a`  
		Last Modified: Wed, 23 Jan 2019 09:42:36 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce9c965bb15d4e5b23585836c4e03f39ffa1590430184a40ad412f835c644a2`  
		Last Modified: Wed, 23 Jan 2019 22:49:07 GMT  
		Size: 8.6 MB (8602679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:e35f62fda9a6c5930e7838d62b02b74e6bbbeb93ccb8e6ab5264fd2caf2eb80b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298393259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ba5b1cc964cdc35796113c86e906e64257e3e9b572980600bba0a6ce907033`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:17 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 24 Jan 2019 03:59:18 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:59:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73077308ede89684d363d91b1fb5af22d60230f38634ce6bb7ea68eb417e05a5`  
		Last Modified: Thu, 24 Jan 2019 04:01:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38edaf084f3dca602a7fb3fdbac0893bbfdfb9ba9de98d9d211d782c4e2b9883`  
		Last Modified: Thu, 24 Jan 2019 04:01:31 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205d5ee1148e4fe1938d1c7c867e0ebab490513c79c9e1fe1b8bdea8a806a7da`  
		Last Modified: Thu, 24 Jan 2019 04:01:34 GMT  
		Size: 8.8 MB (8750638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d3bbcfab3c6eabe1a584a70863c5f2b1290bc22a1d1983db42dcaccb1bfcaa68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.8 MB (325828424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:271e00f0f8fd34278a7d3c953cb3a1b964c31d17ae3f8618d131fb31330f12ad`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:18:28 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 15:18:39 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:26:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376e313c870b6493640f681d29693bf8524950be658d0c58d976af5d93ca5396`  
		Last Modified: Wed, 23 Jan 2019 15:25:13 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d25a2b47d3a9e89d636c6249ec40c01e59a106720d502103caae42036d210d6`  
		Last Modified: Wed, 23 Jan 2019 15:25:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc9c466cf1cc33ade66b74c4f6865b68f1cc2c3361cf8f444abf307be6b81fe`  
		Last Modified: Thu, 24 Jan 2019 09:29:32 GMT  
		Size: 8.5 MB (8531286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:1f860a428e916ba966f02ec3f9b8b0ef046a10eef42e51380d1b149699b7537b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.9 MB (307922476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef34cfae196f99af23b7ce9bfae4fc9b70a8819eb77797d61c1a1874761acd2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:32 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 19:48:33 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:56:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fa71a346bbff46a447c2e65d5d919c4869e3829661035ba04314f2b89a8db5`  
		Last Modified: Wed, 23 Jan 2019 19:51:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48e59c955293e4cc832e445f5f356064e685cfa19f958dc2b6a6ca1174d7454`  
		Last Modified: Wed, 23 Jan 2019 19:51:05 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdd83b6225b027754c2edac6e20a04a54b0e94bad9f124219aa73079f4c94c7`  
		Last Modified: Thu, 24 Jan 2019 12:58:53 GMT  
		Size: 8.7 MB (8696746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:755c7e759bb3d05822416f1fd252b880108a9f190a2a67aa6878e5f614eccc2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:b1b12b147ecaf499d65981bb49aac025e84d30fa7cefb65383802bc00e811968
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.7 MB (203690276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d17d2b34c181fec36416ba9b81c483c8503bba271a738f8b971597c4743ff21`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 31 Jan 2019 03:19:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 31 Jan 2019 03:20:06 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 31 Jan 2019 03:20:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 31 Jan 2019 03:20:07 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 31 Jan 2019 03:20:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 31 Jan 2019 03:20:08 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 03:20:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 31 Jan 2019 03:20:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 03:21:09 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 31 Jan 2019 03:21:10 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 31 Jan 2019 03:21:21 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502d69c0996b02dd1b2c04798fec1b1f05034bac2235c5db45ccf0248a96658a`  
		Last Modified: Thu, 31 Jan 2019 03:23:15 GMT  
		Size: 126.5 MB (126526493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f1033d4f09c4d21df2340e01311f0b4d61f0c268fbc7640061122e78e303`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb74cf092128d4e44b79587f25656d0ed9b13da2b061217ab6346862a04a26f`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b89e65f74677b4173d57c0803f23c577a963401bb0025a9f37c237c73a9951`  
		Last Modified: Thu, 31 Jan 2019 03:23:31 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf592d61562f12716df2cce920497adf82b36f523df1516b8714b3b85fabfe73`  
		Last Modified: Thu, 31 Jan 2019 03:23:31 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a601bb9e052f25792c95715a3c7cdd652ee5a0325287821c2692169e9accef`  
		Last Modified: Thu, 31 Jan 2019 03:23:33 GMT  
		Size: 8.2 MB (8198445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2`

```console
$ docker pull open-liberty@sha256:ce53f5fcceb23ece302ad96d997013afccbf525edd5407fcf248663f2893e7ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2` - linux; amd64

```console
$ docker pull open-liberty@sha256:5f3f5c97ca1ca39d954be23081f48304fbcb99fe3403f8e4b3317fe2aadf49d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310147989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da856d69facee31b9ce815e1f4601470ff22d60274ad8b5eb09d5c6668634c8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:24:07 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 01 Feb 2019 23:26:02 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:26:11 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37747815319496951c4213fa704194332cbee6c8b27afb6df65854b49caf3d48`  
		Last Modified: Fri, 01 Feb 2019 23:28:21 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02fca89894890a1b3208e9aa5d38aafd496b285e5ea2d29580b2746c776ef5f`  
		Last Modified: Fri, 01 Feb 2019 23:28:57 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e9ca615d3a2673a0cf8efa0919ca5d96c853f200cb74cfcc340e7bd46401fb`  
		Last Modified: Fri, 01 Feb 2019 23:28:59 GMT  
		Size: 8.6 MB (8577218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; 386

```console
$ docker pull open-liberty@sha256:0d87cfa37859021a43e1c9978230e9c514076541e602471c535b87f39f25f9cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298389785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597ab56bf5ffe2f61ec58a28d1a9fb767f09c2d756f9a62583ee632744824abc`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:17 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 24 Jan 2019 04:00:10 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 24 Jan 2019 04:00:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73077308ede89684d363d91b1fb5af22d60230f38634ce6bb7ea68eb417e05a5`  
		Last Modified: Thu, 24 Jan 2019 04:01:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ce6d78959f84997ec5672cfea4a916b1f24a092e0a891f497fa9c3d7bd659a`  
		Last Modified: Thu, 24 Jan 2019 04:01:55 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce48b8c5c97786f36b4a93282e6149999b3fca3032f0149ecfab81890e8584f`  
		Last Modified: Thu, 24 Jan 2019 04:01:59 GMT  
		Size: 8.7 MB (8747163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:dacfbf0482475cdc2a08550b0fbeba1947181a66d4964ef21205fa8cc34704b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325868165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd7bca650d97a3e52792fa52f4cc8b40fe9b93f7a600c31ebfa6a253e368037`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:18:28 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 15:21:39 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:27:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376e313c870b6493640f681d29693bf8524950be658d0c58d976af5d93ca5396`  
		Last Modified: Wed, 23 Jan 2019 15:25:13 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be331f6a3613c32df4c207aef092e9d14274b193883cee5b5f95199b4389d410`  
		Last Modified: Wed, 23 Jan 2019 15:26:05 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea204c57e3e834a969b802695c8413778abed022c68352d0f50d2edddeb817`  
		Last Modified: Thu, 24 Jan 2019 09:30:18 GMT  
		Size: 8.6 MB (8571025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; s390x

```console
$ docker pull open-liberty@sha256:ef83681a314cdd8f295629160c047dae8d19e939964a0cdd28781faa73ee48a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.0 MB (307961829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a84114495ef7af6bcb8ad8132e46a3a44040db3c32222994cdaa7cd84864ab7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:32 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 19:49:33 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:57:45 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fa71a346bbff46a447c2e65d5d919c4869e3829661035ba04314f2b89a8db5`  
		Last Modified: Wed, 23 Jan 2019 19:51:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed487285a2f15a3cc408efb43e8f07cee24197ddc00482da7fbaeea1dceb151e`  
		Last Modified: Wed, 23 Jan 2019 19:51:29 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8890e6972ccd79f08a0cf10ccc8a8ae4d8b5fe908924b922d0b0a899c8301`  
		Last Modified: Thu, 24 Jan 2019 12:59:23 GMT  
		Size: 8.7 MB (8736100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibm`

```console
$ docker pull open-liberty@sha256:ce53f5fcceb23ece302ad96d997013afccbf525edd5407fcf248663f2893e7ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:5f3f5c97ca1ca39d954be23081f48304fbcb99fe3403f8e4b3317fe2aadf49d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.1 MB (310147989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da856d69facee31b9ce815e1f4601470ff22d60274ad8b5eb09d5c6668634c8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:14 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:22:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:22:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:30 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:24:07 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 01 Feb 2019 23:26:02 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:26:11 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f1b019efff919b6575e5f608c36590075c8388c15d02732a3daa1b70c28c63`  
		Last Modified: Fri, 01 Feb 2019 23:27:41 GMT  
		Size: 126.9 MB (126941318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f40bd2e8174ff5fb67651d2a98746d44da0516d1b254081519ae9cf71bb0768`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92c69f7a72f6a8b828429da00bd0635c0fc8186b0b5a2e2f6cc2526e3c586b6`  
		Last Modified: Fri, 01 Feb 2019 23:27:32 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37747815319496951c4213fa704194332cbee6c8b27afb6df65854b49caf3d48`  
		Last Modified: Fri, 01 Feb 2019 23:28:21 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02fca89894890a1b3208e9aa5d38aafd496b285e5ea2d29580b2746c776ef5f`  
		Last Modified: Fri, 01 Feb 2019 23:28:57 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e9ca615d3a2673a0cf8efa0919ca5d96c853f200cb74cfcc340e7bd46401fb`  
		Last Modified: Fri, 01 Feb 2019 23:28:59 GMT  
		Size: 8.6 MB (8577218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:0d87cfa37859021a43e1c9978230e9c514076541e602471c535b87f39f25f9cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298389785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:597ab56bf5ffe2f61ec58a28d1a9fb767f09c2d756f9a62583ee632744824abc`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:59:17 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 24 Jan 2019 04:00:10 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 24 Jan 2019 04:00:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73077308ede89684d363d91b1fb5af22d60230f38634ce6bb7ea68eb417e05a5`  
		Last Modified: Thu, 24 Jan 2019 04:01:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ce6d78959f84997ec5672cfea4a916b1f24a092e0a891f497fa9c3d7bd659a`  
		Last Modified: Thu, 24 Jan 2019 04:01:55 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce48b8c5c97786f36b4a93282e6149999b3fca3032f0149ecfab81890e8584f`  
		Last Modified: Thu, 24 Jan 2019 04:01:59 GMT  
		Size: 8.7 MB (8747163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:dacfbf0482475cdc2a08550b0fbeba1947181a66d4964ef21205fa8cc34704b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325868165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd7bca650d97a3e52792fa52f4cc8b40fe9b93f7a600c31ebfa6a253e368037`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:18:28 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 15:21:39 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:27:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376e313c870b6493640f681d29693bf8524950be658d0c58d976af5d93ca5396`  
		Last Modified: Wed, 23 Jan 2019 15:25:13 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be331f6a3613c32df4c207aef092e9d14274b193883cee5b5f95199b4389d410`  
		Last Modified: Wed, 23 Jan 2019 15:26:05 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ea204c57e3e834a969b802695c8413778abed022c68352d0f50d2edddeb817`  
		Last Modified: Thu, 24 Jan 2019 09:30:18 GMT  
		Size: 8.6 MB (8571025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:ef83681a314cdd8f295629160c047dae8d19e939964a0cdd28781faa73ee48a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.0 MB (307961829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a84114495ef7af6bcb8ad8132e46a3a44040db3c32222994cdaa7cd84864ab7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:48:32 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Wed, 23 Jan 2019 19:49:33 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:57:45 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fa71a346bbff46a447c2e65d5d919c4869e3829661035ba04314f2b89a8db5`  
		Last Modified: Wed, 23 Jan 2019 19:51:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed487285a2f15a3cc408efb43e8f07cee24197ddc00482da7fbaeea1dceb151e`  
		Last Modified: Wed, 23 Jan 2019 19:51:29 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8890e6972ccd79f08a0cf10ccc8a8ae4d8b5fe908924b922d0b0a899c8301`  
		Last Modified: Thu, 24 Jan 2019 12:59:23 GMT  
		Size: 8.7 MB (8736100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:b5e669fb71055f3be01157ed712978a34614bc1312fbdc23b4677891cbd18c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:29be7a849f654164a7e7f0678c4a003818a41e22fead675b670f26c2ef570ee4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203802458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f457a899dc617fe2de7ebe2b38c0c27b5b87b063ba652277ce7f5787e2185afa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:22:33 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=c7b741b3a2c1e93d7e1c652377a212d23025a7be
# Fri, 01 Feb 2019 23:22:39 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Feb 2019 23:22:40 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:22:40 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Feb 2019 23:22:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Feb 2019 23:22:42 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:22:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:22:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Feb 2019 23:24:24 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 01 Feb 2019 23:26:16 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 01 Feb 2019 23:26:26 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df461f15bec85bd8204907b3d8e4942e3e5f08699651ed5c22e4f603926a0a02`  
		Last Modified: Fri, 01 Feb 2019 23:27:55 GMT  
		Size: 126.7 MB (126719803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13469f414a8d92816139726620d412dd1e8315a7ee3319c7636253a4fc81ff8`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42555f0a7c46de19f0ce2d2b9f71c52799ac6f4678580a99d850faeaee005f9e`  
		Last Modified: Fri, 01 Feb 2019 23:27:45 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a78a83c12a13356c289120255fd1fdcd6a6addb07612fc4054d5d115a53be5`  
		Last Modified: Fri, 01 Feb 2019 23:28:27 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2086366f1a3bb3a00eff78c527400532fbdbf790f308a55df7ce533c72c20`  
		Last Modified: Fri, 01 Feb 2019 23:29:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df33c75153c4b667b8c026db31107698cbba794f4028f475916f6f9af6d66ac`  
		Last Modified: Fri, 01 Feb 2019 23:29:05 GMT  
		Size: 8.1 MB (8117299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7`

```console
$ docker pull open-liberty@sha256:477e70b1132d824042230ea23ded786c2b1131fa42a989d4cfb1532a9400f064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7` - linux; amd64

```console
$ docker pull open-liberty@sha256:dcdf0633bc86f9ff7783ffc85916fd17404ee862a2522bfce4dacc0d3edd5ceb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312794862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedace0fd8af32a599f7a456803051dfcb3896f3f8da2f5e8057bc8c3dfc039`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:37:26 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 09:37:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:37:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 09:37:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 09:37:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 09:37:47 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 09:37:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 09:37:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 09:37:57 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Wed, 23 Jan 2019 22:23:26 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173ea93a5f0b4358df1d4f104dbd64b3a147f86f5f3d26f434d16bb7efa21f2`  
		Last Modified: Wed, 23 Jan 2019 09:42:12 GMT  
		Size: 126.7 MB (126746674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef4e6cb6a52943825200306892c223a0fca39d5065f1a8bd3f5c60bedb7b87`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a9f9419b34224c7f1e758ba72768190e8620cdb746006b6a9bbf81132aff2`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7697063813c5770d3ebb515f1faf6743f361aeae1d9f7af88d9dfb60ffb1e04`  
		Last Modified: Wed, 23 Jan 2019 09:42:17 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a3024a6c51e98f4f69922b25713f3269f7d72f357195056a996b6f8c90d279`  
		Last Modified: Wed, 23 Jan 2019 22:48:43 GMT  
		Size: 11.4 MB (11419005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; 386

```console
$ docker pull open-liberty@sha256:89e81150129accc6c73dcd8c7a0b7b8ed585332ff40293ede2bf7032c817c80c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.1 MB (301103880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c044051db328e03fba35b8abf0b07428934a2cb1ec273a8c9ce361ee7aa67129`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:58:34 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:58:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ef5cdce96e9e69f6db329a6d99ab7116478236c33f93e745b5a13ac19cdf9`  
		Last Modified: Thu, 24 Jan 2019 04:01:14 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c207eea6fd789d051bb656fdc6fa563a899b3f62a0dbc82ff365175d16b27ea`  
		Last Modified: Thu, 24 Jan 2019 04:01:18 GMT  
		Size: 11.5 MB (11461514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b2c8190029352da94347956e9f2217f48ee1fbfc53d05d5e7e3f7bbdd0206481
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328602933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abf62ea67b3e0bd555d5557abbc4d3dd283b434d30a5f71169a2fa20d6840e9`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:16:09 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:25:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d323cca9da00c2bd3f16c03ca0cc3057de87afc8945c4d8c8a609b0df66c3`  
		Last Modified: Wed, 23 Jan 2019 15:24:38 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaafae092e940e7f34a325306c9c147ef90a338e0e38e314cafd5028acbcf61`  
		Last Modified: Thu, 24 Jan 2019 09:29:02 GMT  
		Size: 11.3 MB (11306076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; s390x

```console
$ docker pull open-liberty@sha256:d189f0e905caa9ca5ca8e277f4e4a6671595937df1f396ca88e67d6194c6b518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.8 MB (310790759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c4f2204d4d8116ee38daab24a4958a7a18d3320ae702ab2364dfe5696bf442`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:47:42 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:55:38 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2ae667068f2cd2215a736efda2435f9f2d1e341c9bb18b3a6592ec67ab3462`  
		Last Modified: Wed, 23 Jan 2019 19:50:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b32b282171f146967a878683f08a027e9b6f1e993d54bc9b5607a8a399a7b5`  
		Last Modified: Thu, 24 Jan 2019 12:58:34 GMT  
		Size: 11.6 MB (11565283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:477e70b1132d824042230ea23ded786c2b1131fa42a989d4cfb1532a9400f064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:dcdf0633bc86f9ff7783ffc85916fd17404ee862a2522bfce4dacc0d3edd5ceb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312794862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eedace0fd8af32a599f7a456803051dfcb3896f3f8da2f5e8057bc8c3dfc039`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 09:37:26 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 09:37:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 09:37:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 09:37:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 09:37:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 09:37:47 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 09:37:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 09:37:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 09:37:57 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Wed, 23 Jan 2019 22:23:26 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173ea93a5f0b4358df1d4f104dbd64b3a147f86f5f3d26f434d16bb7efa21f2`  
		Last Modified: Wed, 23 Jan 2019 09:42:12 GMT  
		Size: 126.7 MB (126746674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cef4e6cb6a52943825200306892c223a0fca39d5065f1a8bd3f5c60bedb7b87`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386a9f9419b34224c7f1e758ba72768190e8620cdb746006b6a9bbf81132aff2`  
		Last Modified: Wed, 23 Jan 2019 09:41:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7697063813c5770d3ebb515f1faf6743f361aeae1d9f7af88d9dfb60ffb1e04`  
		Last Modified: Wed, 23 Jan 2019 09:42:17 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a3024a6c51e98f4f69922b25713f3269f7d72f357195056a996b6f8c90d279`  
		Last Modified: Wed, 23 Jan 2019 22:48:43 GMT  
		Size: 11.4 MB (11419005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:89e81150129accc6c73dcd8c7a0b7b8ed585332ff40293ede2bf7032c817c80c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.1 MB (301103880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c044051db328e03fba35b8abf0b07428934a2cb1ec273a8c9ce361ee7aa67129`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:58:16 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 24 Jan 2019 03:58:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:58:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:58:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:58:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 24 Jan 2019 03:58:30 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:58:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:58:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 24 Jan 2019 03:58:34 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 24 Jan 2019 03:58:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2883caae66e2d6fe33be9a665b8fe3c1ccdd06965b2d60702d4b7dd4470dc89`  
		Last Modified: Thu, 24 Jan 2019 04:01:09 GMT  
		Size: 126.7 MB (126746645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2647feb3217f954176fa0b371669db27b2a845a04dfd319bde4a57dfb63b11`  
		Last Modified: Thu, 24 Jan 2019 04:00:59 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d724afad49fd98a41aadddf1e1e85e4358b352bea77a9007d896f65fb059882e`  
		Last Modified: Thu, 24 Jan 2019 04:01:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972ef5cdce96e9e69f6db329a6d99ab7116478236c33f93e745b5a13ac19cdf9`  
		Last Modified: Thu, 24 Jan 2019 04:01:14 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c207eea6fd789d051bb656fdc6fa563a899b3f62a0dbc82ff365175d16b27ea`  
		Last Modified: Thu, 24 Jan 2019 04:01:18 GMT  
		Size: 11.5 MB (11461514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b2c8190029352da94347956e9f2217f48ee1fbfc53d05d5e7e3f7bbdd0206481
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328602933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abf62ea67b3e0bd555d5557abbc4d3dd283b434d30a5f71169a2fa20d6840e9`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:14:55 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 15:15:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:15:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:15:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 15:15:42 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 15:15:48 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 15:15:53 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 15:15:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 15:16:09 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 24 Jan 2019 09:25:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758821407d01c0c2f2e80499169f46911b674a7adfd473bc7c4bb2bea936a6e7`  
		Last Modified: Wed, 23 Jan 2019 15:24:22 GMT  
		Size: 126.7 MB (126746775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937c0586e4ad5ee5b7b081938cfd8fc1e0053229a77df9959f8972b2715366b9`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baa9b46a59ccda2cafc8152fe7dbe0d18ce669428d36204f940a63014e8833b`  
		Last Modified: Wed, 23 Jan 2019 15:24:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d323cca9da00c2bd3f16c03ca0cc3057de87afc8945c4d8c8a609b0df66c3`  
		Last Modified: Wed, 23 Jan 2019 15:24:38 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecaafae092e940e7f34a325306c9c147ef90a338e0e38e314cafd5028acbcf61`  
		Last Modified: Thu, 24 Jan 2019 09:29:02 GMT  
		Size: 11.3 MB (11306076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:d189f0e905caa9ca5ca8e277f4e4a6671595937df1f396ca88e67d6194c6b518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.8 MB (310790759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4c4f2204d4d8116ee38daab24a4958a7a18d3320ae702ab2364dfe5696bf442`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:47:21 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Wed, 23 Jan 2019 19:47:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:47:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:47:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 23 Jan 2019 19:47:36 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 23 Jan 2019 19:47:36 GMT
EXPOSE 9080 9443
# Wed, 23 Jan 2019 19:47:37 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 23 Jan 2019 19:47:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 23 Jan 2019 19:47:42 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 24 Jan 2019 12:55:38 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55134273c007e9df73a5dc4f37c9710a2e5849cda1884b37f1b903ff76a99f57`  
		Last Modified: Wed, 23 Jan 2019 19:50:42 GMT  
		Size: 126.7 MB (126746515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c3f0ab4c71af922ca609fddc5b6d2326ef3f5f59445dab6bb68ad2ca53bd9`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a93b847c42704928648026d37da3aedf771034bfd5d413444b318f3af10e3`  
		Last Modified: Wed, 23 Jan 2019 19:50:34 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2ae667068f2cd2215a736efda2435f9f2d1e341c9bb18b3a6592ec67ab3462`  
		Last Modified: Wed, 23 Jan 2019 19:50:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b32b282171f146967a878683f08a027e9b6f1e993d54bc9b5607a8a399a7b5`  
		Last Modified: Thu, 24 Jan 2019 12:58:34 GMT  
		Size: 11.6 MB (11565283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:c6b839e32fdb3b6beada042d388683de0d13acdb65f6c53eee32fde555e1f09c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:48f4c7aeaa2c7a08534c0020b0df3e402a5c6ccd35574e3fa82dd065fbc30b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.5 MB (206456041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b810abbcb73fe527322d6a4ccb15f78f79332c077dd7b4dfadd37c04ac9f259`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:19:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 31 Jan 2019 03:19:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 31 Jan 2019 03:19:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Thu, 31 Jan 2019 03:20:06 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 31 Jan 2019 03:20:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 31 Jan 2019 03:20:07 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 31 Jan 2019 03:20:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 31 Jan 2019 03:20:08 GMT
EXPOSE 9080 9443
# Thu, 31 Jan 2019 03:20:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 31 Jan 2019 03:20:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 31 Jan 2019 03:20:17 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 31 Jan 2019 03:20:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a33289e5c1fea058e10c41f38d97ed371e92d9a9d108829cec1c1b0e91882a`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502d69c0996b02dd1b2c04798fec1b1f05034bac2235c5db45ccf0248a96658a`  
		Last Modified: Thu, 31 Jan 2019 03:23:15 GMT  
		Size: 126.5 MB (126526493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f1033d4f09c4d21df2340e01311f0b4d61f0c268fbc7640061122e78e303`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb74cf092128d4e44b79587f25656d0ed9b13da2b061217ab6346862a04a26f`  
		Last Modified: Thu, 31 Jan 2019 03:23:04 GMT  
		Size: 808.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df87b3cd1526dc75cd266a6e6b321fafde1e036014fb1885c5f7a92b716c05e5`  
		Last Modified: Thu, 31 Jan 2019 03:23:19 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5688c8a43c6b4477c5918ec8404ff820df10a16dbedd4b10693193bb50a4f7b2`  
		Last Modified: Thu, 31 Jan 2019 03:23:21 GMT  
		Size: 11.0 MB (10964466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8`

```console
$ docker pull open-liberty@sha256:09d0efb5edd34b40e992edb598f1c9bd41a23eddad0e11aafff9ff7f0ee35230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8` - linux; amd64

```console
$ docker pull open-liberty@sha256:4cfc58fccdcc4f653f4cb4e4452f5619386e387e543cd22a2d4dd19add41c8d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268159316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a20c7bf4b5f0f35d0cf34c81b51b8ac0bc7d4f02394a2c70a0bf1cfac5fa13`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:19:49 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=fec518cac15255d71415b8a748ad243f871f29d4
# Fri, 01 Feb 2019 23:20:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:20:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:20:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:20:18 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Fri, 01 Feb 2019 23:20:19 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:20:19 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:20:19 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4aff004987f3b3d05844fbe4e7dacaff92e51200e1447f97d88cade330dde1`  
		Last Modified: Fri, 01 Feb 2019 23:26:48 GMT  
		Size: 81.9 MB (81935537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0a1a79c5a0ceb2be6c3889e5aec998ee706f2ac6dd323297b6f09ef5850350`  
		Last Modified: Fri, 01 Feb 2019 23:26:40 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c9118831ad7987e73939c5c866ab5fca712ebaf1519f6239291b89d9f4696d`  
		Last Modified: Fri, 01 Feb 2019 23:26:44 GMT  
		Size: 11.6 MB (11595949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; 386

```console
$ docker pull open-liberty@sha256:5bdcd766b2b63f50989340b26bf66f78aab79598000be3a812599464a1ff2a39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256421492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafe98cb39f45d029e1e1b5ec0ad17b484b211f59b07981186114b2680ef2569`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:56:54 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=74c2bea67cfe8eff003893228b9afa9324aa9157
# Thu, 24 Jan 2019 03:57:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:57:18 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:57:19 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:57:34 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Thu, 24 Jan 2019 03:57:35 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:57:35 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:57:35 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9983216cdd060393b113da43e4e43d4b68b2230de1e499ca371ce080c8abeb`  
		Last Modified: Thu, 24 Jan 2019 04:00:38 GMT  
		Size: 81.9 MB (81916367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598faaecddef20dd247003d1068691a507ad8a23450c7363dd4e08b9e903409b`  
		Last Modified: Thu, 24 Jan 2019 04:00:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6920822534911786f4cdaf8ed46d458a71622e9f174fab89af66318628b481`  
		Last Modified: Thu, 24 Jan 2019 04:00:35 GMT  
		Size: 11.6 MB (11610761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f3679c7ea69ccecae190f53b47aea0852341d20d688b4e7254d8274f6c8c87fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.9 MB (283928481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca71c0935d7dd5baadb49dbb4d979847cbba7b16b7adace5b33548841a472c9e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:11:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=74c2bea67cfe8eff003893228b9afa9324aa9157
# Wed, 23 Jan 2019 15:12:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:12:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:12:37 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 09:23:26 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Thu, 24 Jan 2019 09:23:29 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 09:23:33 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 09:23:34 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd59cbd0e69b6c264c736411caa3aaaf0e2f6261bbf6b0dcd6d13bbd274b0dd9`  
		Last Modified: Wed, 23 Jan 2019 15:23:10 GMT  
		Size: 81.9 MB (81916457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760f1c25bb509ad1663aefd94b3f07f5927683319899e2ea3f69912212e3d74d`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc44b4c2d74493689082f5a4bc94e4463a13331d3f864385e628ea4d7c80188`  
		Last Modified: Thu, 24 Jan 2019 09:28:25 GMT  
		Size: 11.5 MB (11463327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; s390x

```console
$ docker pull open-liberty@sha256:f1733d2cbbe2f1a3768d8fcd8edb48baeeb63d787f61ac3099d68d3f610dea93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265996106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da6a1370cc3766cf5832b70135577a1f00af901aaa3ee873c85596714b6d01a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:45:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=74c2bea67cfe8eff003893228b9afa9324aa9157
# Wed, 23 Jan 2019 19:46:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:46:08 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:46:09 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 12:54:31 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Thu, 24 Jan 2019 12:54:31 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 12:54:32 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 12:54:32 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae7429898343388fdc420f651d19c36407707509c260a4d4e77dbd524e7315f`  
		Last Modified: Wed, 23 Jan 2019 19:50:12 GMT  
		Size: 81.9 MB (81916143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eacf083321d2433d778b6170d11cb5c628dc35b9e876f82a2db029fdc8e18eb`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb18c62d5f2c94bfeca5761768fe70915a9a907369c17bbecc3376bbf750a2dc`  
		Last Modified: Thu, 24 Jan 2019 12:58:11 GMT  
		Size: 11.6 MB (11602358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibm`

```console
$ docker pull open-liberty@sha256:09d0efb5edd34b40e992edb598f1c9bd41a23eddad0e11aafff9ff7f0ee35230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:4cfc58fccdcc4f653f4cb4e4452f5619386e387e543cd22a2d4dd19add41c8d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268159316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a20c7bf4b5f0f35d0cf34c81b51b8ac0bc7d4f02394a2c70a0bf1cfac5fa13`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 09:35:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 09:35:35 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:19:49 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=fec518cac15255d71415b8a748ad243f871f29d4
# Fri, 01 Feb 2019 23:20:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Feb 2019 23:20:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:20:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Feb 2019 23:20:18 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Fri, 01 Feb 2019 23:20:19 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:20:19 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:20:19 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:70ecbc63b9d8b7da53f8a06645be7cb5a1afd2cae0af4934ed2476d8575ee946`  
		Last Modified: Wed, 23 Jan 2019 09:41:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4aff004987f3b3d05844fbe4e7dacaff92e51200e1447f97d88cade330dde1`  
		Last Modified: Fri, 01 Feb 2019 23:26:48 GMT  
		Size: 81.9 MB (81935537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0a1a79c5a0ceb2be6c3889e5aec998ee706f2ac6dd323297b6f09ef5850350`  
		Last Modified: Fri, 01 Feb 2019 23:26:40 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c9118831ad7987e73939c5c866ab5fca712ebaf1519f6239291b89d9f4696d`  
		Last Modified: Fri, 01 Feb 2019 23:26:44 GMT  
		Size: 11.6 MB (11595949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:5bdcd766b2b63f50989340b26bf66f78aab79598000be3a812599464a1ff2a39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256421492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafe98cb39f45d029e1e1b5ec0ad17b484b211f59b07981186114b2680ef2569`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 24 Jan 2019 03:56:53 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 24 Jan 2019 03:56:54 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Thu, 24 Jan 2019 03:56:54 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=74c2bea67cfe8eff003893228b9afa9324aa9157
# Thu, 24 Jan 2019 03:57:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 03:57:18 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 24 Jan 2019 03:57:19 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 03:57:34 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Thu, 24 Jan 2019 03:57:35 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 03:57:35 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 03:57:35 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:e938199b8c60210b49af0b969a66abd4d74cdf401910ec2fd2f38f0f4aad33c7`  
		Last Modified: Thu, 24 Jan 2019 04:00:30 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9983216cdd060393b113da43e4e43d4b68b2230de1e499ca371ce080c8abeb`  
		Last Modified: Thu, 24 Jan 2019 04:00:38 GMT  
		Size: 81.9 MB (81916367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598faaecddef20dd247003d1068691a507ad8a23450c7363dd4e08b9e903409b`  
		Last Modified: Thu, 24 Jan 2019 04:00:33 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6920822534911786f4cdaf8ed46d458a71622e9f174fab89af66318628b481`  
		Last Modified: Thu, 24 Jan 2019 04:00:35 GMT  
		Size: 11.6 MB (11610761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f3679c7ea69ccecae190f53b47aea0852341d20d688b4e7254d8274f6c8c87fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.9 MB (283928481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca71c0935d7dd5baadb49dbb4d979847cbba7b16b7adace5b33548841a472c9e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 15:11:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 15:11:56 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 15:11:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=74c2bea67cfe8eff003893228b9afa9324aa9157
# Wed, 23 Jan 2019 15:12:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:12:30 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 15:12:37 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 09:23:26 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Thu, 24 Jan 2019 09:23:29 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 09:23:33 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 09:23:34 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:3b9fbd83413e496736dd613beb9305f10e436748b670cf45d5b8e6cf89abc44a`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd59cbd0e69b6c264c736411caa3aaaf0e2f6261bbf6b0dcd6d13bbd274b0dd9`  
		Last Modified: Wed, 23 Jan 2019 15:23:10 GMT  
		Size: 81.9 MB (81916457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760f1c25bb509ad1663aefd94b3f07f5927683319899e2ea3f69912212e3d74d`  
		Last Modified: Wed, 23 Jan 2019 15:23:00 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc44b4c2d74493689082f5a4bc94e4463a13331d3f864385e628ea4d7c80188`  
		Last Modified: Thu, 24 Jan 2019 09:28:25 GMT  
		Size: 11.5 MB (11463327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:f1733d2cbbe2f1a3768d8fcd8edb48baeeb63d787f61ac3099d68d3f610dea93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265996106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da6a1370cc3766cf5832b70135577a1f00af901aaa3ee873c85596714b6d01a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 23 Jan 2019 19:45:57 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 23 Jan 2019 19:45:57 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Wed, 23 Jan 2019 19:45:57 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=74c2bea67cfe8eff003893228b9afa9324aa9157
# Wed, 23 Jan 2019 19:46:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:46:08 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 23 Jan 2019 19:46:09 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 24 Jan 2019 12:54:31 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Thu, 24 Jan 2019 12:54:31 GMT
EXPOSE 9080 9443
# Thu, 24 Jan 2019 12:54:32 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 24 Jan 2019 12:54:32 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:7fb460544aa592f150b3d123a5338a6b1778bf94f1dc014fb44c85354f648de4`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae7429898343388fdc420f651d19c36407707509c260a4d4e77dbd524e7315f`  
		Last Modified: Wed, 23 Jan 2019 19:50:12 GMT  
		Size: 81.9 MB (81916143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eacf083321d2433d778b6170d11cb5c628dc35b9e876f82a2db029fdc8e18eb`  
		Last Modified: Wed, 23 Jan 2019 19:50:04 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb18c62d5f2c94bfeca5761768fe70915a9a907369c17bbecc3376bbf750a2dc`  
		Last Modified: Thu, 24 Jan 2019 12:58:11 GMT  
		Size: 11.6 MB (11602358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:e722107417fcbb53328e2e50d1ef8d1bec37c2bb41578e4e40aa34c08833ea24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:bdfb9fdadfb4a064d01a5ff850e8e67470521973b744dcf2ed732735552effd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161820002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff32df0ec1248c83cd3ce942376631ef8dbf847bc5fecaa7db43e45b5acc87a8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 31 Jan 2019 03:18:46 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Feb 2019 23:20:26 GMT
ENV LIBERTY_VERSION=19.0.0.1 LIBERTY_SHA=fec518cac15255d71415b8a748ad243f871f29d4
# Fri, 01 Feb 2019 23:20:32 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Feb 2019 23:20:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Feb 2019 23:20:33 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Feb 2019 23:20:51 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Fri, 01 Feb 2019 23:20:51 GMT
EXPOSE 9080 9443
# Fri, 01 Feb 2019 23:20:52 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Feb 2019 23:20:52 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edc59e4f2963c86c7082a5aed706996662b10e19ba0b12c7fa37ca190937220`  
		Last Modified: Thu, 31 Jan 2019 03:22:36 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888ebfed2d27f782540aec389ff8e4d9e67bf3a3e89693a12ee9ac32f5ba75bb`  
		Last Modified: Fri, 01 Feb 2019 23:27:00 GMT  
		Size: 81.7 MB (81714226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d7e6d9d4af78879ce917f31fd83140380d5b1271d5f52bc66d9d7fc9a9569c`  
		Last Modified: Fri, 01 Feb 2019 23:26:52 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6375aa4298f0edcf0e3feef478ce2c58da0b423ec04489d7494fa624ed75813c`  
		Last Modified: Fri, 01 Feb 2019 23:26:55 GMT  
		Size: 11.1 MB (11142036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
