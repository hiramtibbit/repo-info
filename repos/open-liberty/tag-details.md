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
$ docker pull open-liberty@sha256:b9d03cae513eb71eb8cd3912034cb8c0fabb7fb01655e4f4d445a723642380a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:22aab285f20740ead6fc4b21d3389410b768c29b08d86efa3d5b166ff9ec3734
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (314028663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714f212762a1b6f15820947e5f73243babae6440d7b8c0a14a709b7b7f5533bc`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:55:42 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:55:43 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 22:56:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9993e95b28324a47684317b8654c31464b7e3503395ee43f4ef0c2d4cd674f7`  
		Last Modified: Fri, 24 May 2019 23:00:55 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d487c3e4550feb4f67b3fcec28540e3debf6a804edf7bf985cdd92996995c4`  
		Last Modified: Fri, 24 May 2019 23:01:06 GMT  
		Size: 7.2 MB (7243205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; 386

```console
$ docker pull open-liberty@sha256:756d1b0c63ba0ad02188acb17011a3748ab55c20c9138fa8b34dd3a7b737e22b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.9 MB (314885669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc72850d2cae10af5f7ecba05c9a4f39d816c154caa196e86c3bdb8c3967679`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:03:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:03:37 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 23:04:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74adee27d5c825a3bed16b4c37dc2f27de0134e83252d2cc18bb7d401ea3792`  
		Last Modified: Fri, 24 May 2019 23:06:58 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fea4d83825a73d2ac3d761cc213f8695fc13c862b17f76de372b21a65bb60a`  
		Last Modified: Fri, 24 May 2019 23:07:04 GMT  
		Size: 19.7 MB (19689773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:8d1e4e649985f82e57cc19907c80551a6c1a64bfbab55715aac34237426920a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.5 MB (328540260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec5cb080032b30f9cad3f86482702c500a541197d8149784ba71c3f9c923784`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:02:12 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 16 May 2019 00:02:18 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 16 May 2019 00:02:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a068b4c12748a5595074f49c5fce04fbaad097abed43eba58f018772f700dc2`  
		Last Modified: Thu, 16 May 2019 00:06:18 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ff6efa85d406d2fb3005178854a906b5a6acae2571e8cea1d170e29d828344`  
		Last Modified: Thu, 16 May 2019 00:06:24 GMT  
		Size: 7.0 MB (6998851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:b9e0c370caa299f694d805b39f0810f0ac7fc6282eb330c8738fe5da8ab2df00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.8 MB (309784626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd5ec6eba80e6ce3b35e6a37f6b7dd1c61d562883103f76aaf7cc7ef98836e7`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:39 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:02:40 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a56e17a8c5f37fbac2902cecd43e8cb481a317baaff4ae75f07dba6dfbe67c`  
		Last Modified: Fri, 24 May 2019 22:04:24 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3f14b5a40b7724843d798df6d2e5b2ebbcc17be9e0e288f1c97b8fa6dfab3c`  
		Last Modified: Fri, 24 May 2019 22:04:26 GMT  
		Size: 7.1 MB (7137989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibm`

```console
$ docker pull open-liberty@sha256:b9d03cae513eb71eb8cd3912034cb8c0fabb7fb01655e4f4d445a723642380a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:22aab285f20740ead6fc4b21d3389410b768c29b08d86efa3d5b166ff9ec3734
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (314028663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714f212762a1b6f15820947e5f73243babae6440d7b8c0a14a709b7b7f5533bc`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:55:42 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:55:43 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 22:56:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9993e95b28324a47684317b8654c31464b7e3503395ee43f4ef0c2d4cd674f7`  
		Last Modified: Fri, 24 May 2019 23:00:55 GMT  
		Size: 903.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d487c3e4550feb4f67b3fcec28540e3debf6a804edf7bf985cdd92996995c4`  
		Last Modified: Fri, 24 May 2019 23:01:06 GMT  
		Size: 7.2 MB (7243205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:756d1b0c63ba0ad02188acb17011a3748ab55c20c9138fa8b34dd3a7b737e22b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.9 MB (314885669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc72850d2cae10af5f7ecba05c9a4f39d816c154caa196e86c3bdb8c3967679`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:03:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:03:37 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 23:04:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74adee27d5c825a3bed16b4c37dc2f27de0134e83252d2cc18bb7d401ea3792`  
		Last Modified: Fri, 24 May 2019 23:06:58 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fea4d83825a73d2ac3d761cc213f8695fc13c862b17f76de372b21a65bb60a`  
		Last Modified: Fri, 24 May 2019 23:07:04 GMT  
		Size: 19.7 MB (19689773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:8d1e4e649985f82e57cc19907c80551a6c1a64bfbab55715aac34237426920a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.5 MB (328540260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec5cb080032b30f9cad3f86482702c500a541197d8149784ba71c3f9c923784`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:02:12 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 16 May 2019 00:02:18 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 16 May 2019 00:02:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a068b4c12748a5595074f49c5fce04fbaad097abed43eba58f018772f700dc2`  
		Last Modified: Thu, 16 May 2019 00:06:18 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ff6efa85d406d2fb3005178854a906b5a6acae2571e8cea1d170e29d828344`  
		Last Modified: Thu, 16 May 2019 00:06:24 GMT  
		Size: 7.0 MB (6998851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:b9e0c370caa299f694d805b39f0810f0ac7fc6282eb330c8738fe5da8ab2df00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.8 MB (309784626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd5ec6eba80e6ce3b35e6a37f6b7dd1c61d562883103f76aaf7cc7ef98836e7`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:39 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:02:40 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a56e17a8c5f37fbac2902cecd43e8cb481a317baaff4ae75f07dba6dfbe67c`  
		Last Modified: Fri, 24 May 2019 22:04:24 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3f14b5a40b7724843d798df6d2e5b2ebbcc17be9e0e288f1c97b8fa6dfab3c`  
		Last Modified: Fri, 24 May 2019 22:04:26 GMT  
		Size: 7.1 MB (7137989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:facc1ce5646d06fcbeafe2f3ad578ddaa95523761293a59f805a4f82d1c31cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:e4ca3ab285681bfcbdb94be44311048bf77d527378bd23c6a023d5434f4f4217
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218038208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87337f5e36ff5cfdf8c7a93a805a0cfdf9e568f9d2ade32e92fdeb81f283aec`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:56:28 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:56:28 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 24 May 2019 22:57:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446f4517a9b2efed4b68150e5b29190cdb9df6ccf52106a3f24d5a5e567acd07`  
		Last Modified: Fri, 24 May 2019 23:01:11 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad242a7848ec3a9f69379a74ca289bf7d420ad35ed05bb09a27cc8d00b2217bb`  
		Last Modified: Fri, 24 May 2019 23:01:15 GMT  
		Size: 18.0 MB (18032527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8`

```console
$ docker pull open-liberty@sha256:c4799963f5a44b4145bb5140d0500055332fa8fbe4cc03fec645deabf144f24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8` - linux; amd64

```console
$ docker pull open-liberty@sha256:c7d0eb4d164511e31b010cb4615066e04f2a1315351ae9dc551538cd77380a2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297068676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98e0c5b24e431fece461e7566deaa783c34860e089094e05b9a07a820a38b31`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:47:31 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:47:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:47:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:47:31 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:47:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:47:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:47:45 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:47:45 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:48:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:48:58 GMT
USER 1001
# Fri, 24 May 2019 22:48:58 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:48:58 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:48:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:48:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52704782381175c22f05b692c0dc717b57d1acfe4ce3ceaf02637048cb2a77ea`  
		Last Modified: Fri, 24 May 2019 22:59:33 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723b440fdb3a370851602ec90cd3e9113fce6af53b2430ba8baebd434da8cb2c`  
		Last Modified: Fri, 24 May 2019 22:59:42 GMT  
		Size: 113.0 MB (113013868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ee02a02235dad81444c1790b7c054163af2417f3197e93515c9ee9b87b5543`  
		Last Modified: Fri, 24 May 2019 22:59:33 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6be703e9026ddff6e110b63ef5fa131648ea4c635b2f007cc1c0e50d04bfcb3`  
		Last Modified: Fri, 24 May 2019 22:59:35 GMT  
		Size: 7.3 MB (7275806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; 386

```console
$ docker pull open-liberty@sha256:4d98ac43369c6fdcb7d67c3cfc8f1f8ea5a217bc19a1af9f849e94d14281b0b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.0 MB (286011270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8990124ee82331336192ae30de4ee570e2b615186aa3d7a0f9015638c91f87`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 23:01:11 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 23:01:11 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 23:01:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:01:12 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:01:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:01:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:01:24 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:01:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:01:48 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 23:01:48 GMT
USER 1001
# Fri, 24 May 2019 23:01:49 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:01:49 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:01:49 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:01:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8311dd31b2abb7193d2235dd546895dd0db7d40f623bb44df00e8dfcb2e678df`  
		Last Modified: Fri, 24 May 2019 23:06:11 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addb0b2d8e539e82c6aae2fe2d27f2c87fe4e282e664ce9ebb6c0256ce3979a9`  
		Last Modified: Fri, 24 May 2019 23:06:23 GMT  
		Size: 113.0 MB (113013861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d65ce3de81698e77cc55bbff08d14b37cf3091bf3c5c31d4039a66fc502d9c`  
		Last Modified: Fri, 24 May 2019 23:06:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fce097988150c56e51cdbc0fae6884fca5ae3581b3427b1439080e677334e6`  
		Last Modified: Fri, 24 May 2019 23:06:13 GMT  
		Size: 7.8 MB (7807947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:92e2663ed1bd513166293b377b2f27e81d00399579c44e9022ca8aa01c53d2a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.6 MB (311577189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d729f7557b610bb9095fe2f495b2a1023eba5d682103564832a0d3dc68498f`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:57:46 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Wed, 15 May 2019 23:57:50 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Wed, 15 May 2019 23:57:52 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:57:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:59:08 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:59:12 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:59:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:59:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:59:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Wed, 15 May 2019 23:59:54 GMT
USER 1001
# Wed, 15 May 2019 23:59:56 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:59:57 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 15 May 2019 23:59:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 16 May 2019 00:00:00 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f053e2ac51429fdb98b995b4ca90f5eff921534037b2b2304d612d67c6daf`  
		Last Modified: Thu, 16 May 2019 00:04:43 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd03d97591010349c5fc16c81159f19b251178ccd3dd1500a65974a75fdf673d`  
		Last Modified: Thu, 16 May 2019 00:05:05 GMT  
		Size: 113.0 MB (113013778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e16dc45fad9a45f6ad3fc0847cbe3b2054ab8215b186eadb92224487e78751`  
		Last Modified: Thu, 16 May 2019 00:04:43 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97429af3b8f965f37ff1379e5f4c56dbf30ed3642b2af3948f5d13050bbeeff`  
		Last Modified: Thu, 16 May 2019 00:04:45 GMT  
		Size: 7.0 MB (7028486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; s390x

```console
$ docker pull open-liberty@sha256:74adfb6dea33dd1d7a6bce2305af04a2bdba9545052527f9bc8137ef3a33c7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303796569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c632f2662d93e442fcb98dd53f27bfa7299b787a371266b1611a5b3e5cc253e0`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:01:07 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:01:07 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:01:07 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:01:07 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:01:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:01:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:01:18 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:01:19 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:01:36 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:01:37 GMT
USER 1001
# Fri, 24 May 2019 22:01:37 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:01:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:01:37 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:01:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b653bee668d3b21a7ce017de7199d39bb5895650c31bafb0b44fb8a863f021`  
		Last Modified: Fri, 24 May 2019 22:03:43 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f7a4314b7d9c2b0048eb7efaef6ea161e3c593a92488b080b0309f2467728`  
		Last Modified: Fri, 24 May 2019 22:03:53 GMT  
		Size: 113.0 MB (113013587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab4574f3a16836b4026731ae9f524485438928913a24449fbe08928314081d`  
		Last Modified: Fri, 24 May 2019 22:03:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeeee3512a87e4010a86ecbc53f1fd609b9f75fefbb811e24f14933d980dfc4`  
		Last Modified: Fri, 24 May 2019 22:03:50 GMT  
		Size: 18.1 MB (18142566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibm`

```console
$ docker pull open-liberty@sha256:c4799963f5a44b4145bb5140d0500055332fa8fbe4cc03fec645deabf144f24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:c7d0eb4d164511e31b010cb4615066e04f2a1315351ae9dc551538cd77380a2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297068676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98e0c5b24e431fece461e7566deaa783c34860e089094e05b9a07a820a38b31`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:47:31 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:47:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:47:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:47:31 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:47:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:47:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:47:45 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:47:45 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:48:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:48:58 GMT
USER 1001
# Fri, 24 May 2019 22:48:58 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:48:58 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:48:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:48:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52704782381175c22f05b692c0dc717b57d1acfe4ce3ceaf02637048cb2a77ea`  
		Last Modified: Fri, 24 May 2019 22:59:33 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723b440fdb3a370851602ec90cd3e9113fce6af53b2430ba8baebd434da8cb2c`  
		Last Modified: Fri, 24 May 2019 22:59:42 GMT  
		Size: 113.0 MB (113013868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ee02a02235dad81444c1790b7c054163af2417f3197e93515c9ee9b87b5543`  
		Last Modified: Fri, 24 May 2019 22:59:33 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6be703e9026ddff6e110b63ef5fa131648ea4c635b2f007cc1c0e50d04bfcb3`  
		Last Modified: Fri, 24 May 2019 22:59:35 GMT  
		Size: 7.3 MB (7275806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:4d98ac43369c6fdcb7d67c3cfc8f1f8ea5a217bc19a1af9f849e94d14281b0b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.0 MB (286011270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8990124ee82331336192ae30de4ee570e2b615186aa3d7a0f9015638c91f87`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 23:01:11 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 23:01:11 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 23:01:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:01:12 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:01:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:01:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:01:24 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:01:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:01:48 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 23:01:48 GMT
USER 1001
# Fri, 24 May 2019 23:01:49 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:01:49 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:01:49 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:01:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8311dd31b2abb7193d2235dd546895dd0db7d40f623bb44df00e8dfcb2e678df`  
		Last Modified: Fri, 24 May 2019 23:06:11 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addb0b2d8e539e82c6aae2fe2d27f2c87fe4e282e664ce9ebb6c0256ce3979a9`  
		Last Modified: Fri, 24 May 2019 23:06:23 GMT  
		Size: 113.0 MB (113013861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d65ce3de81698e77cc55bbff08d14b37cf3091bf3c5c31d4039a66fc502d9c`  
		Last Modified: Fri, 24 May 2019 23:06:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fce097988150c56e51cdbc0fae6884fca5ae3581b3427b1439080e677334e6`  
		Last Modified: Fri, 24 May 2019 23:06:13 GMT  
		Size: 7.8 MB (7807947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:92e2663ed1bd513166293b377b2f27e81d00399579c44e9022ca8aa01c53d2a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.6 MB (311577189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d729f7557b610bb9095fe2f495b2a1023eba5d682103564832a0d3dc68498f`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:57:46 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Wed, 15 May 2019 23:57:50 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Wed, 15 May 2019 23:57:52 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:57:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:59:08 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:59:12 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:59:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:59:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:59:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Wed, 15 May 2019 23:59:54 GMT
USER 1001
# Wed, 15 May 2019 23:59:56 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:59:57 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 15 May 2019 23:59:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 16 May 2019 00:00:00 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f053e2ac51429fdb98b995b4ca90f5eff921534037b2b2304d612d67c6daf`  
		Last Modified: Thu, 16 May 2019 00:04:43 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd03d97591010349c5fc16c81159f19b251178ccd3dd1500a65974a75fdf673d`  
		Last Modified: Thu, 16 May 2019 00:05:05 GMT  
		Size: 113.0 MB (113013778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e16dc45fad9a45f6ad3fc0847cbe3b2054ab8215b186eadb92224487e78751`  
		Last Modified: Thu, 16 May 2019 00:04:43 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97429af3b8f965f37ff1379e5f4c56dbf30ed3642b2af3948f5d13050bbeeff`  
		Last Modified: Thu, 16 May 2019 00:04:45 GMT  
		Size: 7.0 MB (7028486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:74adfb6dea33dd1d7a6bce2305af04a2bdba9545052527f9bc8137ef3a33c7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303796569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c632f2662d93e442fcb98dd53f27bfa7299b787a371266b1611a5b3e5cc253e0`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:01:07 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:01:07 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:01:07 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:01:07 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:01:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:01:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:01:18 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:01:19 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:01:36 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:01:37 GMT
USER 1001
# Fri, 24 May 2019 22:01:37 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:01:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:01:37 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:01:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b653bee668d3b21a7ce017de7199d39bb5895650c31bafb0b44fb8a863f021`  
		Last Modified: Fri, 24 May 2019 22:03:43 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f7a4314b7d9c2b0048eb7efaef6ea161e3c593a92488b080b0309f2467728`  
		Last Modified: Fri, 24 May 2019 22:03:53 GMT  
		Size: 113.0 MB (113013587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab4574f3a16836b4026731ae9f524485438928913a24449fbe08928314081d`  
		Last Modified: Fri, 24 May 2019 22:03:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeeee3512a87e4010a86ecbc53f1fd609b9f75fefbb811e24f14933d980dfc4`  
		Last Modified: Fri, 24 May 2019 22:03:50 GMT  
		Size: 18.1 MB (18142566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:5f2d06b02a1492b09c6dd2e66ace5da5b5d5efd795e64a8e1d0a63942307f6bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:58ef1504e30025f2e14458f0b051ddc4d22ea0a68b33bfa01cf2d051034e88e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.0 MB (189996284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36d761c02e29ebf9dc5b8a1d729135e5bbb8610f43133303f4c432d5754e066`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:49:14 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:49:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:49:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:49:15 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:49:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:49:28 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:49:31 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:49:32 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:50:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:50:21 GMT
USER 1001
# Fri, 24 May 2019 22:50:21 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:50:22 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:50:22 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:50:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228063daa94e55476bf3bbc8fe66fb22beeda0886492d9dc501c1822b1e2a382`  
		Last Modified: Fri, 24 May 2019 22:59:47 GMT  
		Size: 2.2 KB (2161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755e1c2bd2f04df3ed1dfb241bb47418ed7391712a1a2df0f06d9d4331030d1c`  
		Last Modified: Fri, 24 May 2019 22:59:58 GMT  
		Size: 113.0 MB (113036862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cfd48c983f0a4cf9c64214391116ee5379a59a6f0f88f51166a34ebd31ecc0`  
		Last Modified: Fri, 24 May 2019 22:59:47 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4988d9eff92386e7578dea44110851ad8494c8a7b2331e30f7c5903f452bcdc3`  
		Last Modified: Fri, 24 May 2019 22:59:49 GMT  
		Size: 7.0 MB (6985066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel`

```console
$ docker pull open-liberty@sha256:b01752d18bf77cc8f314840a43a00d6ce9c4932e2c49127752f5b05afc6c0d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel` - linux; amd64

```console
$ docker pull open-liberty@sha256:2a0b09943c8f15d23a0bbfc2e9f3d930d066605aebd283b061beba53a9b84058
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306784555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ede9e97d0f43e205a811b086b45cad0faa37c03548a257ad642a05fb636cb6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; 386

```console
$ docker pull open-liberty@sha256:d8d4266c725a4e1624b8f5d3c989dc293f4453237beaf229d9af0957d2568c97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295194995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99655c259447db954c98ba39b79633beb95b5ea9c6f27c1e5bb1c665e670a45`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:25534d500bb4190a323dcf66c8cc55536e56d88ac9cd5ade30202b163f8a9bd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321540504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53b602a74e43a8145a84b6bffa7da21775468798a6929333ae6c4fcf9618367`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; s390x

```console
$ docker pull open-liberty@sha256:744196283f1dddd02b2ea034dfcb11e752877c0dfaf195033dda41aa5241ba32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302645738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e9eaf4120b57597a643b9d5f4f11c80211f1711b5c13ce94ff6443abfd9a5d`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:b01752d18bf77cc8f314840a43a00d6ce9c4932e2c49127752f5b05afc6c0d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:2a0b09943c8f15d23a0bbfc2e9f3d930d066605aebd283b061beba53a9b84058
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306784555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ede9e97d0f43e205a811b086b45cad0faa37c03548a257ad642a05fb636cb6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:d8d4266c725a4e1624b8f5d3c989dc293f4453237beaf229d9af0957d2568c97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.2 MB (295194995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99655c259447db954c98ba39b79633beb95b5ea9c6f27c1e5bb1c665e670a45`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:25534d500bb4190a323dcf66c8cc55536e56d88ac9cd5ade30202b163f8a9bd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321540504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53b602a74e43a8145a84b6bffa7da21775468798a6929333ae6c4fcf9618367`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:744196283f1dddd02b2ea034dfcb11e752877c0dfaf195033dda41aa5241ba32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302645738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e9eaf4120b57597a643b9d5f4f11c80211f1711b5c13ce94ff6443abfd9a5d`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:acc9dee00664680998fd480276dcf7f7480958511a86cebc2a176faa15e0f9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:kernel-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:f1492f0579e45aefea4d43ed9a0b9f20f6a7898d26896ef196fd14f78ddf75d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200004777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24efe8b13c34c179a8023418c2b9fa254be0f4937843858a68d07da5a4463dcb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:c4799963f5a44b4145bb5140d0500055332fa8fbe4cc03fec645deabf144f24d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:c7d0eb4d164511e31b010cb4615066e04f2a1315351ae9dc551538cd77380a2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 MB (297068676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98e0c5b24e431fece461e7566deaa783c34860e089094e05b9a07a820a38b31`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:47:31 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:47:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:47:31 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:47:31 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:47:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:47:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:47:45 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:47:45 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:48:58 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:48:58 GMT
USER 1001
# Fri, 24 May 2019 22:48:58 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:48:58 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:48:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:48:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52704782381175c22f05b692c0dc717b57d1acfe4ce3ceaf02637048cb2a77ea`  
		Last Modified: Fri, 24 May 2019 22:59:33 GMT  
		Size: 2.2 KB (2167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723b440fdb3a370851602ec90cd3e9113fce6af53b2430ba8baebd434da8cb2c`  
		Last Modified: Fri, 24 May 2019 22:59:42 GMT  
		Size: 113.0 MB (113013868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ee02a02235dad81444c1790b7c054163af2417f3197e93515c9ee9b87b5543`  
		Last Modified: Fri, 24 May 2019 22:59:33 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6be703e9026ddff6e110b63ef5fa131648ea4c635b2f007cc1c0e50d04bfcb3`  
		Last Modified: Fri, 24 May 2019 22:59:35 GMT  
		Size: 7.3 MB (7275806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:4d98ac43369c6fdcb7d67c3cfc8f1f8ea5a217bc19a1af9f849e94d14281b0b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.0 MB (286011270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8990124ee82331336192ae30de4ee570e2b615186aa3d7a0f9015638c91f87`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 23:01:11 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 23:01:11 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 23:01:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:01:12 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:01:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:01:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:01:24 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:01:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:01:48 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 23:01:48 GMT
USER 1001
# Fri, 24 May 2019 23:01:49 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:01:49 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:01:49 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:01:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8311dd31b2abb7193d2235dd546895dd0db7d40f623bb44df00e8dfcb2e678df`  
		Last Modified: Fri, 24 May 2019 23:06:11 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addb0b2d8e539e82c6aae2fe2d27f2c87fe4e282e664ce9ebb6c0256ce3979a9`  
		Last Modified: Fri, 24 May 2019 23:06:23 GMT  
		Size: 113.0 MB (113013861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d65ce3de81698e77cc55bbff08d14b37cf3091bf3c5c31d4039a66fc502d9c`  
		Last Modified: Fri, 24 May 2019 23:06:11 GMT  
		Size: 1.2 KB (1222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34fce097988150c56e51cdbc0fae6884fca5ae3581b3427b1439080e677334e6`  
		Last Modified: Fri, 24 May 2019 23:06:13 GMT  
		Size: 7.8 MB (7807947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:92e2663ed1bd513166293b377b2f27e81d00399579c44e9022ca8aa01c53d2a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.6 MB (311577189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d729f7557b610bb9095fe2f495b2a1023eba5d682103564832a0d3dc68498f`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:57:46 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Wed, 15 May 2019 23:57:50 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Wed, 15 May 2019 23:57:52 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:57:52 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:59:08 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:59:12 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:59:20 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:59:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:59:52 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Wed, 15 May 2019 23:59:54 GMT
USER 1001
# Wed, 15 May 2019 23:59:56 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:59:57 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 15 May 2019 23:59:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 16 May 2019 00:00:00 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5f053e2ac51429fdb98b995b4ca90f5eff921534037b2b2304d612d67c6daf`  
		Last Modified: Thu, 16 May 2019 00:04:43 GMT  
		Size: 2.2 KB (2198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd03d97591010349c5fc16c81159f19b251178ccd3dd1500a65974a75fdf673d`  
		Last Modified: Thu, 16 May 2019 00:05:05 GMT  
		Size: 113.0 MB (113013778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e16dc45fad9a45f6ad3fc0847cbe3b2054ab8215b186eadb92224487e78751`  
		Last Modified: Thu, 16 May 2019 00:04:43 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97429af3b8f965f37ff1379e5f4c56dbf30ed3642b2af3948f5d13050bbeeff`  
		Last Modified: Thu, 16 May 2019 00:04:45 GMT  
		Size: 7.0 MB (7028486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:74adfb6dea33dd1d7a6bce2305af04a2bdba9545052527f9bc8137ef3a33c7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.8 MB (303796569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c632f2662d93e442fcb98dd53f27bfa7299b787a371266b1611a5b3e5cc253e0`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:01:07 GMT
ARG LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe
# Fri, 24 May 2019 22:01:07 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip
# Fri, 24 May 2019 22:01:07 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:01:07 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:01:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:01:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:01:18 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:01:19 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:01:36 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.4/openliberty-javaee8-19.0.0.4.zip LIBERTY_SHA=657ddda1fc6013ba14dfda51e28834d7ca4a78fe LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:01:37 GMT
USER 1001
# Fri, 24 May 2019 22:01:37 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:01:37 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:01:37 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:01:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b653bee668d3b21a7ce017de7199d39bb5895650c31bafb0b44fb8a863f021`  
		Last Modified: Fri, 24 May 2019 22:03:43 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3f7a4314b7d9c2b0048eb7efaef6ea161e3c593a92488b080b0309f2467728`  
		Last Modified: Fri, 24 May 2019 22:03:53 GMT  
		Size: 113.0 MB (113013587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab4574f3a16836b4026731ae9f524485438928913a24449fbe08928314081d`  
		Last Modified: Fri, 24 May 2019 22:03:43 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aeeee3512a87e4010a86ecbc53f1fd609b9f75fefbb811e24f14933d980dfc4`  
		Last Modified: Fri, 24 May 2019 22:03:50 GMT  
		Size: 18.1 MB (18142566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1`

```console
$ docker pull open-liberty@sha256:3a667ef3bf4e1847af4fcab4e9a46fea4904b5d916f22272afd7ea3bfe389f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1` - linux; amd64

```console
$ docker pull open-liberty@sha256:9e4fb5e0e0ef858f4ba9891fdccbcb26d23a5ed1d63936fb40ed7d043eb2c51d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313847688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c15aff71cc03068e8bb0dea20a933a4b3980bfa54c70976fbd47888292c3fb3`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:50:29 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 22:50:49 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f0e7b3d98c14b4f30350c653617d15e33955ef5b03daf1c907700a931521f9`  
		Last Modified: Fri, 24 May 2019 23:00:06 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058327ac8144ae9a5f3f59afeb4638b38242aaa2752badedafe151de9924e7f7`  
		Last Modified: Fri, 24 May 2019 23:00:07 GMT  
		Size: 7.1 MB (7062583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; 386

```console
$ docker pull open-liberty@sha256:fe03e78405a8fa172d9dd4e563540561ce597a4c06c50c39c8198f3f2342cd70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302782196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f2841589a54a99845fe5f1531852e3a13bc29fbadda0fece31ec9f58798433`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:01:56 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 23:02:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999881cd118d1c09bbb7c3e9be875b0d74d4c2591326b9d42ca9592a9369285a`  
		Last Modified: Fri, 24 May 2019 23:06:29 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb7ac94aaddf44c036f4aacecdfb8067700c3d687b6a3296ffb038d64431a67`  
		Last Modified: Fri, 24 May 2019 23:06:35 GMT  
		Size: 7.6 MB (7586652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:1d6c34c84ee0fdb9fe39750eb21cede554c9ca7daee3b22c1214789376e09bf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.4 MB (328412694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a551a52e656b355d7c89e55d34d13367248cb2f47685dc8d720b5632183aa6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:00:15 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 16 May 2019 00:00:35 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256aa6e17825c0e1e2bff240ed6f7ed3918fdaab86bc59b13b7651d9793c1ff6`  
		Last Modified: Thu, 16 May 2019 00:05:21 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407662a7cdfb0f6a34e366c25eb07d3766b00e59ac583f2ba116ecd73c487cd7`  
		Last Modified: Thu, 16 May 2019 00:05:24 GMT  
		Size: 6.9 MB (6871639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; s390x

```console
$ docker pull open-liberty@sha256:a63236be95b41fc5634495e7c077ed366aaa7fa3df031d1d82c62d4e9b2e2e42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309596807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3007b86c093eb47f1a96ef36e8d98682a3079f18ff179a1b747d08398e9f7e7a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:01:42 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 22:01:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa4e61c0b3474fde139f0ea1f8de2d8e0002764d41fda92f87061a1204e3d55`  
		Last Modified: Fri, 24 May 2019 22:04:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f945a1fa0f34873bc83daeeec6c529bed6734c8f6a7f150d2d728a3f67250`  
		Last Modified: Fri, 24 May 2019 22:04:01 GMT  
		Size: 7.0 MB (6950521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:3a667ef3bf4e1847af4fcab4e9a46fea4904b5d916f22272afd7ea3bfe389f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:9e4fb5e0e0ef858f4ba9891fdccbcb26d23a5ed1d63936fb40ed7d043eb2c51d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313847688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c15aff71cc03068e8bb0dea20a933a4b3980bfa54c70976fbd47888292c3fb3`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:50:29 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 22:50:49 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f0e7b3d98c14b4f30350c653617d15e33955ef5b03daf1c907700a931521f9`  
		Last Modified: Fri, 24 May 2019 23:00:06 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058327ac8144ae9a5f3f59afeb4638b38242aaa2752badedafe151de9924e7f7`  
		Last Modified: Fri, 24 May 2019 23:00:07 GMT  
		Size: 7.1 MB (7062583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:fe03e78405a8fa172d9dd4e563540561ce597a4c06c50c39c8198f3f2342cd70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302782196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f2841589a54a99845fe5f1531852e3a13bc29fbadda0fece31ec9f58798433`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:01:56 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 23:02:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999881cd118d1c09bbb7c3e9be875b0d74d4c2591326b9d42ca9592a9369285a`  
		Last Modified: Fri, 24 May 2019 23:06:29 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb7ac94aaddf44c036f4aacecdfb8067700c3d687b6a3296ffb038d64431a67`  
		Last Modified: Fri, 24 May 2019 23:06:35 GMT  
		Size: 7.6 MB (7586652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:1d6c34c84ee0fdb9fe39750eb21cede554c9ca7daee3b22c1214789376e09bf0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.4 MB (328412694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a551a52e656b355d7c89e55d34d13367248cb2f47685dc8d720b5632183aa6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:00:15 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 16 May 2019 00:00:35 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256aa6e17825c0e1e2bff240ed6f7ed3918fdaab86bc59b13b7651d9793c1ff6`  
		Last Modified: Thu, 16 May 2019 00:05:21 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407662a7cdfb0f6a34e366c25eb07d3766b00e59ac583f2ba116ecd73c487cd7`  
		Last Modified: Thu, 16 May 2019 00:05:24 GMT  
		Size: 6.9 MB (6871639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:a63236be95b41fc5634495e7c077ed366aaa7fa3df031d1d82c62d4e9b2e2e42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309596807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3007b86c093eb47f1a96ef36e8d98682a3079f18ff179a1b747d08398e9f7e7a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:01:42 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 22:01:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa4e61c0b3474fde139f0ea1f8de2d8e0002764d41fda92f87061a1204e3d55`  
		Last Modified: Fri, 24 May 2019 22:04:00 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119f945a1fa0f34873bc83daeeec6c529bed6734c8f6a7f150d2d728a3f67250`  
		Last Modified: Fri, 24 May 2019 22:04:01 GMT  
		Size: 7.0 MB (6950521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:d29640c7f04f393d3f3bbd46d01a460f5f9abf3315f43c3498f6ae493a0d2cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:7edd9c2246785e0adf01bac670d15e4e3118548ab10dbc5ebb5ca2f3db0cc790
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215447591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd0f30df249383beede2de6fc5fa3c05ce11e7ebac3eff573f7275723debc8b`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:50:57 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 24 May 2019 22:51:46 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb487d62c35c7922df3255344dda127631b46efdf17395f7976e6587dacc85`  
		Last Modified: Fri, 24 May 2019 23:00:12 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425c25dc3159e50ed95110cb5e766b9a5b3d2e9bdc0bb8dcb9747fac64b01d5b`  
		Last Modified: Fri, 24 May 2019 23:00:16 GMT  
		Size: 15.4 MB (15442263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2`

```console
$ docker pull open-liberty@sha256:57cddb4b50c72d9685754b72909aeb3c7e9273a6161aa4e8ffea78a2793afa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2` - linux; amd64

```console
$ docker pull open-liberty@sha256:ad2adafac2548c0d6d889abf73992516b4525aa08726876be27f0d6b5bbe1c66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313901742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af13d3976eab2e44dd5daeb193c844c5134c2c3266c5ef8f998df5fffe5a8d0a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:51:59 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 22:52:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5039b6773dd327d608c20c7d2f1e67e2faf139a8417fb78fa14ca86adc99bdb`  
		Last Modified: Fri, 24 May 2019 23:00:19 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efde0cd3962bb1d8d27d551377966ecf589c789f0514ecba5289a423777df7ec`  
		Last Modified: Fri, 24 May 2019 23:00:20 GMT  
		Size: 7.1 MB (7116638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; 386

```console
$ docker pull open-liberty@sha256:1de4773985d2229f85fa22e7807d725c687442edce218ce12031fe4dba88d632
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302796010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd7ddd205661bc9b434070c358c780420d39dd6716415c7ac7e68474aa73553`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:02:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 23:02:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8c83e9b9630565ce42e347d1df1a47757513d3b8b06e139ee781721e98ada5`  
		Last Modified: Fri, 24 May 2019 23:06:38 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce76499dd1ba742dbbd2388ff2bb6415a93116b63ae53ecfe1595e7945d09704`  
		Last Modified: Fri, 24 May 2019 23:06:40 GMT  
		Size: 7.6 MB (7600466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f7d8b5d334006ea2a678264dab9514268e8fad087b7f31c5e77953c1256e3f9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334483128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163c1dda8f8b48188fa46faade826866f129d42501ba54dd6a79a2d4a34d8634`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:00:45 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 16 May 2019 00:01:06 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83db1b1bff5c13b926ec9b0c1b928e544ea1cafc365c4bd2e2582cd8f6a5e5f2`  
		Last Modified: Thu, 16 May 2019 00:05:36 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0071182acd126f742cb7854842eafd588365c0376dba46ce0dd1f5a581340d`  
		Last Modified: Thu, 16 May 2019 00:05:40 GMT  
		Size: 12.9 MB (12942075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; s390x

```console
$ docker pull open-liberty@sha256:3fac21f6b06c61cfe57de7d813970d4ee5f2bfb183bb9cd387ad4f959b7e2056
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309624195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274cd426644081b4e5a26fd18848486ff9dc35120be61f51e70b4814998ae2e5`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:01:57 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:08 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22fc79360b2ab353cdd2ceef81961cb9a6e5087623f124ccbf8258044b085a0`  
		Last Modified: Fri, 24 May 2019 22:04:06 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb597522f067c0b59b050c3a894d562647ea5a3ad101a26b7f1c31669db8d57`  
		Last Modified: Fri, 24 May 2019 22:04:07 GMT  
		Size: 7.0 MB (6977909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibm`

```console
$ docker pull open-liberty@sha256:57cddb4b50c72d9685754b72909aeb3c7e9273a6161aa4e8ffea78a2793afa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:ad2adafac2548c0d6d889abf73992516b4525aa08726876be27f0d6b5bbe1c66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313901742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af13d3976eab2e44dd5daeb193c844c5134c2c3266c5ef8f998df5fffe5a8d0a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:51:59 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 22:52:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5039b6773dd327d608c20c7d2f1e67e2faf139a8417fb78fa14ca86adc99bdb`  
		Last Modified: Fri, 24 May 2019 23:00:19 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efde0cd3962bb1d8d27d551377966ecf589c789f0514ecba5289a423777df7ec`  
		Last Modified: Fri, 24 May 2019 23:00:20 GMT  
		Size: 7.1 MB (7116638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:1de4773985d2229f85fa22e7807d725c687442edce218ce12031fe4dba88d632
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302796010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd7ddd205661bc9b434070c358c780420d39dd6716415c7ac7e68474aa73553`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:02:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 23:02:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8c83e9b9630565ce42e347d1df1a47757513d3b8b06e139ee781721e98ada5`  
		Last Modified: Fri, 24 May 2019 23:06:38 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce76499dd1ba742dbbd2388ff2bb6415a93116b63ae53ecfe1595e7945d09704`  
		Last Modified: Fri, 24 May 2019 23:06:40 GMT  
		Size: 7.6 MB (7600466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f7d8b5d334006ea2a678264dab9514268e8fad087b7f31c5e77953c1256e3f9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334483128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163c1dda8f8b48188fa46faade826866f129d42501ba54dd6a79a2d4a34d8634`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:00:45 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 16 May 2019 00:01:06 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83db1b1bff5c13b926ec9b0c1b928e544ea1cafc365c4bd2e2582cd8f6a5e5f2`  
		Last Modified: Thu, 16 May 2019 00:05:36 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0071182acd126f742cb7854842eafd588365c0376dba46ce0dd1f5a581340d`  
		Last Modified: Thu, 16 May 2019 00:05:40 GMT  
		Size: 12.9 MB (12942075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:3fac21f6b06c61cfe57de7d813970d4ee5f2bfb183bb9cd387ad4f959b7e2056
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309624195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274cd426644081b4e5a26fd18848486ff9dc35120be61f51e70b4814998ae2e5`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:01:57 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:08 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22fc79360b2ab353cdd2ceef81961cb9a6e5087623f124ccbf8258044b085a0`  
		Last Modified: Fri, 24 May 2019 22:04:06 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb597522f067c0b59b050c3a894d562647ea5a3ad101a26b7f1c31669db8d57`  
		Last Modified: Fri, 24 May 2019 22:04:07 GMT  
		Size: 7.0 MB (6977909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:8a6f81155d63b90843ec7ab864594ce7f93adcc246451f9e977cc0478d78373b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:8240c4b76abbf1223e90004eadf955c120b46d4bc5f578f02a55428d879ad83b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206804053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193de81589c24e679a8f53add0f581ab21d26c0b22ddaa25a2d74e1a637e9d65`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:52:51 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 24 May 2019 22:53:11 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb9c167467bd4e95c0e537970aa1930a092d5f9021c552635a15bd70248f8c5`  
		Last Modified: Fri, 24 May 2019 23:00:24 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbe0a5ea12d2b7b1b3094551d4d28ef886d93d7877f62af45d1714a391af083`  
		Last Modified: Fri, 24 May 2019 23:00:26 GMT  
		Size: 6.8 MB (6798725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1`

```console
$ docker pull open-liberty@sha256:ee139fc3f0bfb195e0d78863a151a2b501ba02678ab5c64091769466a6f6b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1` - linux; amd64

```console
$ docker pull open-liberty@sha256:586f3114e8142f897c5fb28da3a2b67d0e64644587c06973c98310bb49e55b12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313720727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658d4e35a8244dc3bb5790c256d5603bef75d893c27527eff03f9585ee1adb55`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:57:31 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 22:57:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367b87c678a1b4f2cc0b3ac7e05b9c76c1dbb6ec1612670b348629480baf4932`  
		Last Modified: Fri, 24 May 2019 23:01:18 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec2bbc6b7a79f6cf425737034ecfd64e7f34ac0ad81dc6d7e11d08108159b9e`  
		Last Modified: Fri, 24 May 2019 23:01:19 GMT  
		Size: 6.9 MB (6935631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; 386

```console
$ docker pull open-liberty@sha256:3455702b2b735f01702bd2edc5c7f1b4175441c3f390f4aa9ddfaa8d650004c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.3 MB (306264411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed11cf9803ae74a7e0f05d436a3d8b10b62a6a2c864ff1d695c3a3871b20952`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:04:51 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 23:05:14 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3169ed31401c64a338a297f4c961c9dab5f6dc52a386b522ec8fb53916b0c8`  
		Last Modified: Fri, 24 May 2019 23:07:08 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb6c9197d363e564fe45e5545eaee1a8907bfc553305372f40713cf38017ed`  
		Last Modified: Fri, 24 May 2019 23:07:14 GMT  
		Size: 11.1 MB (11068878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f1558321449b001d324a867c6333df332611c8ddb47b52de688c131c32120263
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.6 MB (330593109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b163ece293d4c592b4b1a91e8e3258012cc2d8862288e5b8511be2c17238a17`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:02:57 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 16 May 2019 00:03:15 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731f9ee05208095ada6ca93d7759f181d23a0d6fd0cead81048890473979c60`  
		Last Modified: Thu, 16 May 2019 00:06:36 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d03e175d894f1c810d837f9c5bcfc2dba6e1276b4ec3c14f82d6f9dab4c0d1b`  
		Last Modified: Thu, 16 May 2019 00:06:40 GMT  
		Size: 9.1 MB (9052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; s390x

```console
$ docker pull open-liberty@sha256:e8868e69b2d371e01c6022f6b40c53e851b48b1a9913cc0ab856837972eea053
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309469450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200a1b17c59a1e5531a85f5271f6f6a19fb12312ea593f52b0be6cd237c61ee`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:56 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 22:03:02 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fc7b8522e3f7a9caf13416f5086cc6fd4a561d6420886910452a88ed046600`  
		Last Modified: Fri, 24 May 2019 22:04:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd64cb7b7161e8236ff312bdbe973b4fcb7c1ca4fb38fa1bd69148ef8c4eab`  
		Last Modified: Fri, 24 May 2019 22:04:31 GMT  
		Size: 6.8 MB (6823175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibm`

```console
$ docker pull open-liberty@sha256:ee139fc3f0bfb195e0d78863a151a2b501ba02678ab5c64091769466a6f6b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:586f3114e8142f897c5fb28da3a2b67d0e64644587c06973c98310bb49e55b12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313720727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:658d4e35a8244dc3bb5790c256d5603bef75d893c27527eff03f9585ee1adb55`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:57:31 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 22:57:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367b87c678a1b4f2cc0b3ac7e05b9c76c1dbb6ec1612670b348629480baf4932`  
		Last Modified: Fri, 24 May 2019 23:01:18 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec2bbc6b7a79f6cf425737034ecfd64e7f34ac0ad81dc6d7e11d08108159b9e`  
		Last Modified: Fri, 24 May 2019 23:01:19 GMT  
		Size: 6.9 MB (6935631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:3455702b2b735f01702bd2edc5c7f1b4175441c3f390f4aa9ddfaa8d650004c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.3 MB (306264411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed11cf9803ae74a7e0f05d436a3d8b10b62a6a2c864ff1d695c3a3871b20952`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:04:51 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 23:05:14 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3169ed31401c64a338a297f4c961c9dab5f6dc52a386b522ec8fb53916b0c8`  
		Last Modified: Fri, 24 May 2019 23:07:08 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bb6c9197d363e564fe45e5545eaee1a8907bfc553305372f40713cf38017ed`  
		Last Modified: Fri, 24 May 2019 23:07:14 GMT  
		Size: 11.1 MB (11068878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f1558321449b001d324a867c6333df332611c8ddb47b52de688c131c32120263
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.6 MB (330593109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b163ece293d4c592b4b1a91e8e3258012cc2d8862288e5b8511be2c17238a17`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:02:57 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 16 May 2019 00:03:15 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731f9ee05208095ada6ca93d7759f181d23a0d6fd0cead81048890473979c60`  
		Last Modified: Thu, 16 May 2019 00:06:36 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d03e175d894f1c810d837f9c5bcfc2dba6e1276b4ec3c14f82d6f9dab4c0d1b`  
		Last Modified: Thu, 16 May 2019 00:06:40 GMT  
		Size: 9.1 MB (9052064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:e8868e69b2d371e01c6022f6b40c53e851b48b1a9913cc0ab856837972eea053
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309469450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200a1b17c59a1e5531a85f5271f6f6a19fb12312ea593f52b0be6cd237c61ee`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:56 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 22:03:02 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fc7b8522e3f7a9caf13416f5086cc6fd4a561d6420886910452a88ed046600`  
		Last Modified: Fri, 24 May 2019 22:04:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd64cb7b7161e8236ff312bdbe973b4fcb7c1ca4fb38fa1bd69148ef8c4eab`  
		Last Modified: Fri, 24 May 2019 22:04:31 GMT  
		Size: 6.8 MB (6823175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:6081616c6f2087b895a27f5d026ca5f055fd66304c2e276703b752dea0f304b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:86f5408cbb567fe5f77433198425157342f07198835908e30d19d5d080b1dda4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.6 MB (209585696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ba151792abbbc1ac54a9fd41974208eb3ed45ee864cf150aa00e9934ceba13`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:58:03 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 24 May 2019 22:58:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24387e68bea135da376fbebf74a8af8d1629062ea8604175688c17689a734ba3`  
		Last Modified: Fri, 24 May 2019 23:01:23 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1b7bbd22c88df8f55a05f50a82e8f9e6d8e2f958315f02c373ed033fe52350`  
		Last Modified: Fri, 24 May 2019 23:01:25 GMT  
		Size: 9.6 MB (9580377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2`

```console
$ docker pull open-liberty@sha256:0cb394e3995d3009656f44213c37754f222e5145fc9de4feeb339285df7d352b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2` - linux; amd64

```console
$ docker pull open-liberty@sha256:d0657bc077c9263afebe347ee068b03d052d1e634499cf54a2ec810faea49a22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313718845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bc5b95c3b49ca2e37a8ea0bc22778c2e9055b04409e3f48ead13b127e87b14`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:53:19 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 22:53:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f472cdf55298ca3d4d6b1fcbfea55e3fc53ec982902899be1504c192ef9f2b38`  
		Last Modified: Fri, 24 May 2019 23:00:29 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c907f5bd6c77e8167f0de2fc5cf11b92aaa6216f3ed748de977be8ef51f5d367`  
		Last Modified: Fri, 24 May 2019 23:00:30 GMT  
		Size: 6.9 MB (6933752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; 386

```console
$ docker pull open-liberty@sha256:1fc45bdb87efb2e1425df01b9f7435900ee82a378fdb34c36c3886c7c81c9b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302634877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79de05c1a3a89fb01b64c34b18a9eb38af25035a64eddbfff02b5572bdbc624a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:02:46 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 23:03:01 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66698a8a49033c9b0a80666384af538a88ee5ab2cb831cffb80d947d39d886c8`  
		Last Modified: Fri, 24 May 2019 23:06:44 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2441e72d41d32bb3eb40c12ea01b575da6fd97a97387298af4df5900816deb60`  
		Last Modified: Fri, 24 May 2019 23:06:46 GMT  
		Size: 7.4 MB (7439345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b3113bf24f148087b866dd8fcd9661ffcd238a70359d158e611e231c1be5a3c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.5 MB (328474004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe555c9e79ae7742242f3a6fbacfa5a8e8baf073a13f6a43533d25432938d15`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:01:17 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 16 May 2019 00:01:31 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9506fd67bbc34b9587b32f14027d1c0107f8fd2cc646056c8ac2ff61b2255`  
		Last Modified: Thu, 16 May 2019 00:05:51 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72fa88f6684518294c5b390882e01297bdafe985bfac147ad39e125ad08a7b7`  
		Last Modified: Thu, 16 May 2019 00:05:53 GMT  
		Size: 6.9 MB (6932959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; s390x

```console
$ docker pull open-liberty@sha256:c6905150af3bd77ce5c20e8a28718496bbef81e48b351f881e5d1f302ad0408a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309488163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d98e80919e20c52f78ad43b15f6b260b0dca4cca887402efecc0cd347fa5bb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:13 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5931939c573eb499df5b22b5be5cdca48ffb8827e9686a915339f7e28339e8`  
		Last Modified: Fri, 24 May 2019 22:04:11 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0e5f02917b89ebd61399b39a105f227875f3f99c2ee78cc0fe6bb659e5da63`  
		Last Modified: Fri, 24 May 2019 22:04:13 GMT  
		Size: 6.8 MB (6841888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibm`

```console
$ docker pull open-liberty@sha256:0cb394e3995d3009656f44213c37754f222e5145fc9de4feeb339285df7d352b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:d0657bc077c9263afebe347ee068b03d052d1e634499cf54a2ec810faea49a22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313718845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bc5b95c3b49ca2e37a8ea0bc22778c2e9055b04409e3f48ead13b127e87b14`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:53:19 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 22:53:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f472cdf55298ca3d4d6b1fcbfea55e3fc53ec982902899be1504c192ef9f2b38`  
		Last Modified: Fri, 24 May 2019 23:00:29 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c907f5bd6c77e8167f0de2fc5cf11b92aaa6216f3ed748de977be8ef51f5d367`  
		Last Modified: Fri, 24 May 2019 23:00:30 GMT  
		Size: 6.9 MB (6933752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:1fc45bdb87efb2e1425df01b9f7435900ee82a378fdb34c36c3886c7c81c9b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302634877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79de05c1a3a89fb01b64c34b18a9eb38af25035a64eddbfff02b5572bdbc624a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:02:46 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 23:03:01 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66698a8a49033c9b0a80666384af538a88ee5ab2cb831cffb80d947d39d886c8`  
		Last Modified: Fri, 24 May 2019 23:06:44 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2441e72d41d32bb3eb40c12ea01b575da6fd97a97387298af4df5900816deb60`  
		Last Modified: Fri, 24 May 2019 23:06:46 GMT  
		Size: 7.4 MB (7439345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b3113bf24f148087b866dd8fcd9661ffcd238a70359d158e611e231c1be5a3c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.5 MB (328474004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe555c9e79ae7742242f3a6fbacfa5a8e8baf073a13f6a43533d25432938d15`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:01:17 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 16 May 2019 00:01:31 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac9506fd67bbc34b9587b32f14027d1c0107f8fd2cc646056c8ac2ff61b2255`  
		Last Modified: Thu, 16 May 2019 00:05:51 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72fa88f6684518294c5b390882e01297bdafe985bfac147ad39e125ad08a7b7`  
		Last Modified: Thu, 16 May 2019 00:05:53 GMT  
		Size: 6.9 MB (6932959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:c6905150af3bd77ce5c20e8a28718496bbef81e48b351f881e5d1f302ad0408a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.5 MB (309488163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d98e80919e20c52f78ad43b15f6b260b0dca4cca887402efecc0cd347fa5bb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:13 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5931939c573eb499df5b22b5be5cdca48ffb8827e9686a915339f7e28339e8`  
		Last Modified: Fri, 24 May 2019 22:04:11 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0e5f02917b89ebd61399b39a105f227875f3f99c2ee78cc0fe6bb659e5da63`  
		Last Modified: Fri, 24 May 2019 22:04:13 GMT  
		Size: 6.8 MB (6841888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:8d9fd2574de5aa94f5088371baf30721c09e9393a3c0aaba8cb940b8fdf03be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:7f6375fde0da1bcd2e7a2c53d639aeee01210861d8b7fe5baae547a52268ed2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210286671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f970363c91db7e9a3cc07f2c479dcb8fe1a091efa14973ff1449f099a17e80a8`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:53:56 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 24 May 2019 22:54:35 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1bd6d487e87354256591fe9c2df9d86d56fa4d10e727cb0367edcf6e0e5efe`  
		Last Modified: Fri, 24 May 2019 23:00:34 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3e683992fcab91e9486a4b96d2a0b187aa51e599324840c77fb5e9aa30d4f9`  
		Last Modified: Fri, 24 May 2019 23:00:36 GMT  
		Size: 10.3 MB (10281353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7`

```console
$ docker pull open-liberty@sha256:2b271a131f0a3b2717673db7ffc5ac64c82d2d2df6dfee06731c4d20981e0a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7` - linux; amd64

```console
$ docker pull open-liberty@sha256:43eaada1db7439475895339f5d6d543bdd37ca8bf298af0e4f7831e436d756cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313889894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409b895819da76c66431f843355e1c698c2a65f5d46e60c23582fdafb2dad1b6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:54:41 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 22:55:00 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dd4a6df2146b606596ca2d188959e9f05eb39236a94f66fedf858634dd0fa`  
		Last Modified: Fri, 24 May 2019 23:00:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ca1dacd8b96d929efe23d0066902f64911a7df94d20c8245388158c25a687`  
		Last Modified: Fri, 24 May 2019 23:00:45 GMT  
		Size: 7.1 MB (7104793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; 386

```console
$ docker pull open-liberty@sha256:933dafb072861afc19d82c7a60ea4bf6555ae908fcca36726d932b2ad273e56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309616241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c463ba215de17447dfbc4ad7d33d76d4ed6d75e49bdc250e0f487502658c88ac`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:03:05 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 23:03:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426adee9caf21cbad95606f9a444e00d1887066fd5d96688168e2d9a3d89ddd9`  
		Last Modified: Fri, 24 May 2019 23:06:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9e6f57cd0379c9981920d50d38d397c8422fe7eca3ac169aef53f9ce965e07`  
		Last Modified: Fri, 24 May 2019 23:06:54 GMT  
		Size: 14.4 MB (14420702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:4ec08254c02ece14e37f1c6eb703d4cb8de70a4c63881684cc99fb1c98333671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.4 MB (328435623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92c6fced8a12564b38bb4912f865f29aa8b9c11845b614633f4703fcd7a58e2`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:01:42 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 16 May 2019 00:02:04 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1058a1b51db3e45c60222d1f732d71421f7c2c5737626c64cb4fcdab14ea59e`  
		Last Modified: Thu, 16 May 2019 00:06:03 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bc33d0c4aff03b3226beead61a01a688a85288609376ba104b738911d634bb`  
		Last Modified: Thu, 16 May 2019 00:06:06 GMT  
		Size: 6.9 MB (6894570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; s390x

```console
$ docker pull open-liberty@sha256:7a44f6a576485c5ca295b9c3ffeca3dd59c45d1530c10a9b66dd0ffc3b0359bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.8 MB (315785282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a28d1ee768b6e325942d7560ad6472abac1bcfc35b6475d119ae79fbd73f30`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:24 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babb3488c32616d966cfe47b2f5a5536a56827a875a538d39493b8771dd0089a`  
		Last Modified: Fri, 24 May 2019 22:04:17 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cb5eceaeec054a1eb4bb5ead338607a3ecf637af914764581cbb93d69daaf9`  
		Last Modified: Fri, 24 May 2019 22:04:20 GMT  
		Size: 13.1 MB (13138999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:2b271a131f0a3b2717673db7ffc5ac64c82d2d2df6dfee06731c4d20981e0a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:43eaada1db7439475895339f5d6d543bdd37ca8bf298af0e4f7831e436d756cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.9 MB (313889894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409b895819da76c66431f843355e1c698c2a65f5d46e60c23582fdafb2dad1b6`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:44:36 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:44:37 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:44:56 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:44:56 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:44:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:01 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:01 GMT
USER 1001
# Fri, 24 May 2019 22:45:02 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:54:41 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 22:55:00 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ade76e7338f9152031f4b7cbc42393496e132623e50dd516d0e1c2f4093d269`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6740f506d298f9151751bdb073f3c7870af30e2beb2470627c18d1578d8a243a`  
		Last Modified: Fri, 24 May 2019 22:58:48 GMT  
		Size: 130.0 MB (130002904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0123c64f676763308753fcc1bb4a701e115527aec04222c7639b4eccfd6574f2`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7302982da9de53e6aa3e66a0d829889e73483a8b391a301b98c75cb1f6876`  
		Last Modified: Fri, 24 May 2019 22:58:36 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20dd4a6df2146b606596ca2d188959e9f05eb39236a94f66fedf858634dd0fa`  
		Last Modified: Fri, 24 May 2019 23:00:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ca1dacd8b96d929efe23d0066902f64911a7df94d20c8245388158c25a687`  
		Last Modified: Fri, 24 May 2019 23:00:45 GMT  
		Size: 7.1 MB (7104793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:933dafb072861afc19d82c7a60ea4bf6555ae908fcca36726d932b2ad273e56a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.6 MB (309616241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c463ba215de17447dfbc4ad7d33d76d4ed6d75e49bdc250e0f487502658c88ac`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 23:00:00 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:00 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:19 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:22 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 23:00:22 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:00:23 GMT
USER 1001
# Fri, 24 May 2019 23:00:23 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:00:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:00:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 23:03:05 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 23:03:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1538878d21d058dc4842887ef81c5ccf072333332ec074f5e48b1d92836256d`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 2.2 KB (2170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e15e950ed9f8cb11bd53ac56b1dc8a939f008fd74f0501f4f660f65f4f41bb4`  
		Last Modified: Fri, 24 May 2019 23:05:45 GMT  
		Size: 130.0 MB (130002894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d068825258b2b1e394dd28739a83f8358484b8b556a919a60308e7c4e223523`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afbfa298589d519dca758137bd7fa776758f9b3ab76f6826de259ad9747afee`  
		Last Modified: Fri, 24 May 2019 23:05:27 GMT  
		Size: 3.0 KB (3014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426adee9caf21cbad95606f9a444e00d1887066fd5d96688168e2d9a3d89ddd9`  
		Last Modified: Fri, 24 May 2019 23:06:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9e6f57cd0379c9981920d50d38d397c8422fe7eca3ac169aef53f9ce965e07`  
		Last Modified: Fri, 24 May 2019 23:06:54 GMT  
		Size: 14.4 MB (14420702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:4ec08254c02ece14e37f1c6eb703d4cb8de70a4c63881684cc99fb1c98333671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.4 MB (328435623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92c6fced8a12564b38bb4912f865f29aa8b9c11845b614633f4703fcd7a58e2`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:54:27 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Wed, 15 May 2019 23:54:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Wed, 15 May 2019 23:54:32 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:54:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:55:03 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:55:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:55:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:55:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 15 May 2019 23:55:25 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:55:27 GMT
USER 1001
# Wed, 15 May 2019 23:55:29 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:55:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:55:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 16 May 2019 00:01:42 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 16 May 2019 00:02:04 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5cba3e1ad75c108687e41ebedeff53918ea9782df2624761a84a5bd4d6b50ef`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 2.2 KB (2201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666129102614b3d7e3e7f38d3c8fba5d98e469109d42d1d5ef41eb3fa70fe5ef`  
		Last Modified: Thu, 16 May 2019 00:04:02 GMT  
		Size: 130.0 MB (130002824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24d3c6550a2f9429cb9bfd5a4df90c2daeab62ebf67a8f5b7bf7c2f0baa5a6`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a07e996adb24bd1fffa810f7f86a828892e4891a5371ba0c7794b956a902346`  
		Last Modified: Thu, 16 May 2019 00:03:44 GMT  
		Size: 3.1 KB (3115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1058a1b51db3e45c60222d1f732d71421f7c2c5737626c64cb4fcdab14ea59e`  
		Last Modified: Thu, 16 May 2019 00:06:03 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bc33d0c4aff03b3226beead61a01a688a85288609376ba104b738911d634bb`  
		Last Modified: Thu, 16 May 2019 00:06:06 GMT  
		Size: 6.9 MB (6894570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:7a44f6a576485c5ca295b9c3ffeca3dd59c45d1530c10a9b66dd0ffc3b0359bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.8 MB (315785282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a28d1ee768b6e325942d7560ad6472abac1bcfc35b6475d119ae79fbd73f30`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:00:15 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:16 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:25 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:00:28 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:28 GMT
USER 1001
# Fri, 24 May 2019 22:00:28 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:00:28 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:00:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:02:24 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 22:02:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee659362735516eadfd8420ff86e35aae16e9fc2048c6bc931587cd233363f3`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e89e0ac3e226f7f0ea8e604f76cd1e8e0279e46b8b53402861d4dee9466784a`  
		Last Modified: Fri, 24 May 2019 22:03:22 GMT  
		Size: 130.0 MB (130002675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c76e79dcf9f931ac1dd0f17b48ad1066045ca53b67427d6c935f1455fca7a0a`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819bf91ba28a1b4c9bb8943e587c337d1b169e98e59bc1bb75f1f774c6eea416`  
		Last Modified: Fri, 24 May 2019 22:03:14 GMT  
		Size: 3.0 KB (3016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babb3488c32616d966cfe47b2f5a5536a56827a875a538d39493b8771dd0089a`  
		Last Modified: Fri, 24 May 2019 22:04:17 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cb5eceaeec054a1eb4bb5ead338607a3ecf637af914764581cbb93d69daaf9`  
		Last Modified: Fri, 24 May 2019 22:04:20 GMT  
		Size: 13.1 MB (13138999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:3ee72ef817dd1ed5572022e58a66e8bd3ecc329aeb81e8fcf84ea7267d1ca8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:32d27861ec021284864738ed547d5da978627f3a02364b9a490eeea2ffaae119
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206831254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c3c31d9daefd6116df2cf4be475c9f618d680dc08233e08d5ee87c55eb5e1`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d
# Fri, 24 May 2019 22:45:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip
# Fri, 24 May 2019 22:45:11 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:11 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:28 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.4/openliberty-runtime-19.0.0.4.zip LIBERTY_SHA=d4a9be40d4e1e6e859b836f68379636eb2c19c6d LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 24 May 2019 22:45:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:29 GMT
USER 1001
# Fri, 24 May 2019 22:45:29 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:45:29 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:45:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:45:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 24 May 2019 22:55:06 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 24 May 2019 22:55:40 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aef88942fb414c3d808049f7c7f5ddf93576ced2005652e90098325806faf96`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 2.2 KB (2166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc08f07f92452778f8d6c2f70eb772de13740f1ba32ece55b1ad8a10d34179`  
		Last Modified: Fri, 24 May 2019 22:59:05 GMT  
		Size: 130.0 MB (130027768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c21bf90cc79edee6f24b68edb5589bf60e5ef0f0d7994160d0d6a69f65976`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b888fa3cff67d4a5e1c0f10783cb242cbf94e65ad6a559a6988fd3c6e883ae4`  
		Last Modified: Fri, 24 May 2019 22:58:54 GMT  
		Size: 3.0 KB (3013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c798d889c65a8077998745c36950764bf08e00b92ac91d87a838088898bc933`  
		Last Modified: Fri, 24 May 2019 23:00:50 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8fa3c626b3c43dfb0c844cb6960451429cdabebc649b360277f8020519d512`  
		Last Modified: Fri, 24 May 2019 23:00:52 GMT  
		Size: 6.8 MB (6825928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8`

```console
$ docker pull open-liberty@sha256:e4146d7850859008b89ef4091b998cd0a2b3414e0ccf8551f79233f92961c42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8` - linux; amd64

```console
$ docker pull open-liberty@sha256:4e78e782a89408ca71b9883f253692c1a42777ca477a88f8f40b67636ec848e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274262119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586cd6b6c01332522c79db26207daf7ef405eae4eb665eeca06f1f12079fbb88`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:35 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:45:35 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:45:35 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:35 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:46 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:46 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:46:33 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:46:34 GMT
USER 1001
# Fri, 24 May 2019 22:46:34 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:46:34 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:46:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:46:35 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab74ec377e8b58ea18936f416b95649113ef0f30fe7518f213a466474635c0ad`  
		Last Modified: Fri, 24 May 2019 22:59:09 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1cfff479d491068fee00c7a8d6a919dd2d711159e76590b4920e8152fa70de`  
		Last Modified: Fri, 24 May 2019 22:59:16 GMT  
		Size: 82.4 MB (82362024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89dace55d260fc89d8005ac814925586dc9ca79c101263ea8e1bb34ab312927`  
		Last Modified: Fri, 24 May 2019 22:59:09 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8710c3fc3fc092d11b63cae4eded27bf3c03f9d2b3364ada0fcf860467a66963`  
		Last Modified: Fri, 24 May 2019 22:59:13 GMT  
		Size: 15.1 MB (15121452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; 386

```console
$ docker pull open-liberty@sha256:48401435d0039f048025a5ce56ae65d506467137a5d39d9bc004530d52b40b21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262361934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf662d1ad07c396d07341f4fbd8bef60daf31583ba278a5e4de24fa7fd1a367b`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 23:00:26 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 23:00:26 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 23:00:27 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:27 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:38 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:39 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:01:05 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 23:01:05 GMT
USER 1001
# Fri, 24 May 2019 23:01:05 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:01:06 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:01:06 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:01:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ea342a7563ba8a252027b2f5f9c7703f374228b23a8ac7abbc7738ac73bf9b`  
		Last Modified: Fri, 24 May 2019 23:05:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea96f4e5c4dfb8e8be7286bb57311041818f7798ce0986005db2bbbbf6a53`  
		Last Modified: Fri, 24 May 2019 23:06:06 GMT  
		Size: 82.4 MB (82361980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb328510ea24a83fa833adca746228d9b570e93ab092da3f96eca24585bee6b`  
		Last Modified: Fri, 24 May 2019 23:05:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2cc8c16d118c0a30dd57f181e42ce6e259060d12a59703261e9221cf303ec7`  
		Last Modified: Fri, 24 May 2019 23:06:02 GMT  
		Size: 14.8 MB (14810864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b7b433d6063ab5df76d1f8a1d69ec22b358a6f8d4f05839831257deda2e3d276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280820749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f90cdbb002c2f4dbffbee875cc9a4e3567884fe06811fd744fbb6812c4769`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:55:50 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Wed, 15 May 2019 23:55:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Wed, 15 May 2019 23:55:53 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:55:54 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:56:50 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:56:54 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:56:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:57:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:57:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Wed, 15 May 2019 23:57:25 GMT
USER 1001
# Wed, 15 May 2019 23:57:27 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:57:29 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 15 May 2019 23:57:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:57:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4e9cad2e3f2f53b13699727c9da6f83efe2c63d1bbdd5a2a684ef7bf0eacc`  
		Last Modified: Thu, 16 May 2019 00:04:16 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565d65a19b28b26414fd6b1e260219f636a6a05afcea033a7b1d978b531e5362`  
		Last Modified: Thu, 16 May 2019 00:04:31 GMT  
		Size: 82.4 MB (82361985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbec852d3bbe446c48a67b88b0a8aa48c80ec7e72684fbd27d4123de7ccbe1f4`  
		Last Modified: Thu, 16 May 2019 00:04:16 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771f069b9c00157f7184a4a470498611a78da9392d5f05cb5f8b0cd172c08ab7`  
		Last Modified: Thu, 16 May 2019 00:04:18 GMT  
		Size: 6.9 MB (6924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; s390x

```console
$ docker pull open-liberty@sha256:0b543e342bca9cc60510f249835a09bbd8d4b60387b4b4299dcf39f14855caed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268182893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b6896e0c5e31d66d8916764472ccf448283fbda6f25216b628e209a8c7ceea`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:33 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:00:33 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:00:33 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:44 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:00:59 GMT
USER 1001
# Fri, 24 May 2019 22:01:00 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:01:00 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:01:00 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:01:00 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120cfa5df8009f3891beb73998c1956066b8da720bd504cd6a651b6fd5d79909`  
		Last Modified: Fri, 24 May 2019 22:03:31 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc192750724f8c7f2833c8da6bb7e5a972ca3c28150e65e6fd458024cf298ad`  
		Last Modified: Fri, 24 May 2019 22:03:38 GMT  
		Size: 82.4 MB (82361771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31baf5d83d5ac5f55eff3b2d00f2a76e787206765d1f29be2c270d8e62651ff2`  
		Last Modified: Fri, 24 May 2019 22:03:30 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baeb6cc3f14c3cca3395b5f7f95d957293355d8d43bdf6ae7c97167b504c575a`  
		Last Modified: Fri, 24 May 2019 22:03:33 GMT  
		Size: 13.2 MB (13181067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibm`

```console
$ docker pull open-liberty@sha256:e4146d7850859008b89ef4091b998cd0a2b3414e0ccf8551f79233f92961c42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:4e78e782a89408ca71b9883f253692c1a42777ca477a88f8f40b67636ec848e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274262119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586cd6b6c01332522c79db26207daf7ef405eae4eb665eeca06f1f12079fbb88`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:35 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:45:35 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:45:35 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:35 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:46 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:46 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:46:33 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:46:34 GMT
USER 1001
# Fri, 24 May 2019 22:46:34 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:46:34 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:46:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:46:35 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab74ec377e8b58ea18936f416b95649113ef0f30fe7518f213a466474635c0ad`  
		Last Modified: Fri, 24 May 2019 22:59:09 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1cfff479d491068fee00c7a8d6a919dd2d711159e76590b4920e8152fa70de`  
		Last Modified: Fri, 24 May 2019 22:59:16 GMT  
		Size: 82.4 MB (82362024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89dace55d260fc89d8005ac814925586dc9ca79c101263ea8e1bb34ab312927`  
		Last Modified: Fri, 24 May 2019 22:59:09 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8710c3fc3fc092d11b63cae4eded27bf3c03f9d2b3364ada0fcf860467a66963`  
		Last Modified: Fri, 24 May 2019 22:59:13 GMT  
		Size: 15.1 MB (15121452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:48401435d0039f048025a5ce56ae65d506467137a5d39d9bc004530d52b40b21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262361934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf662d1ad07c396d07341f4fbd8bef60daf31583ba278a5e4de24fa7fd1a367b`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 23:00:26 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 23:00:26 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 23:00:27 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:27 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:38 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:39 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:01:05 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 23:01:05 GMT
USER 1001
# Fri, 24 May 2019 23:01:05 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:01:06 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:01:06 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:01:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ea342a7563ba8a252027b2f5f9c7703f374228b23a8ac7abbc7738ac73bf9b`  
		Last Modified: Fri, 24 May 2019 23:05:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea96f4e5c4dfb8e8be7286bb57311041818f7798ce0986005db2bbbbf6a53`  
		Last Modified: Fri, 24 May 2019 23:06:06 GMT  
		Size: 82.4 MB (82361980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb328510ea24a83fa833adca746228d9b570e93ab092da3f96eca24585bee6b`  
		Last Modified: Fri, 24 May 2019 23:05:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2cc8c16d118c0a30dd57f181e42ce6e259060d12a59703261e9221cf303ec7`  
		Last Modified: Fri, 24 May 2019 23:06:02 GMT  
		Size: 14.8 MB (14810864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b7b433d6063ab5df76d1f8a1d69ec22b358a6f8d4f05839831257deda2e3d276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280820749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f90cdbb002c2f4dbffbee875cc9a4e3567884fe06811fd744fbb6812c4769`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:55:50 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Wed, 15 May 2019 23:55:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Wed, 15 May 2019 23:55:53 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:55:54 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:56:50 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:56:54 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:56:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:57:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:57:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Wed, 15 May 2019 23:57:25 GMT
USER 1001
# Wed, 15 May 2019 23:57:27 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:57:29 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 15 May 2019 23:57:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:57:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4e9cad2e3f2f53b13699727c9da6f83efe2c63d1bbdd5a2a684ef7bf0eacc`  
		Last Modified: Thu, 16 May 2019 00:04:16 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565d65a19b28b26414fd6b1e260219f636a6a05afcea033a7b1d978b531e5362`  
		Last Modified: Thu, 16 May 2019 00:04:31 GMT  
		Size: 82.4 MB (82361985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbec852d3bbe446c48a67b88b0a8aa48c80ec7e72684fbd27d4123de7ccbe1f4`  
		Last Modified: Thu, 16 May 2019 00:04:16 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771f069b9c00157f7184a4a470498611a78da9392d5f05cb5f8b0cd172c08ab7`  
		Last Modified: Thu, 16 May 2019 00:04:18 GMT  
		Size: 6.9 MB (6924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:0b543e342bca9cc60510f249835a09bbd8d4b60387b4b4299dcf39f14855caed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268182893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b6896e0c5e31d66d8916764472ccf448283fbda6f25216b628e209a8c7ceea`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:33 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:00:33 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:00:33 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:44 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:00:59 GMT
USER 1001
# Fri, 24 May 2019 22:01:00 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:01:00 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:01:00 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:01:00 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120cfa5df8009f3891beb73998c1956066b8da720bd504cd6a651b6fd5d79909`  
		Last Modified: Fri, 24 May 2019 22:03:31 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc192750724f8c7f2833c8da6bb7e5a972ca3c28150e65e6fd458024cf298ad`  
		Last Modified: Fri, 24 May 2019 22:03:38 GMT  
		Size: 82.4 MB (82361771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31baf5d83d5ac5f55eff3b2d00f2a76e787206765d1f29be2c270d8e62651ff2`  
		Last Modified: Fri, 24 May 2019 22:03:30 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baeb6cc3f14c3cca3395b5f7f95d957293355d8d43bdf6ae7c97167b504c575a`  
		Last Modified: Fri, 24 May 2019 22:03:33 GMT  
		Size: 13.2 MB (13181067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:fed54513bd35abed4402343f5b56bcf548be057a6d41b76d6bac8ff797b3df6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:986697e1f5051415a41bbee65b984e3a43ed261d07fe66ce31e033ee57e22584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.2 MB (159222591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f6ee904868fb992320680ea2feceb5577408413153a41601ceda9a6f9606cb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:45:09 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:46:39 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:46:39 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:46:39 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:46:40 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Fri, 24 May 2019 22:46:49 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:46:49 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:46:53 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:46:53 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:47:21 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:47:21 GMT
USER 1001
# Fri, 24 May 2019 22:47:21 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:47:21 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:47:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:47:21 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09eafa8c92ba030901eb0ac194a0671496605b26efa1c55c25c26f5f679f319c`  
		Last Modified: Fri, 24 May 2019 22:59:20 GMT  
		Size: 2.2 KB (2164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c11eea9a1ef0858876904fa6129228e7276f3d9f65146806f7c82a6fbf2e65a`  
		Last Modified: Fri, 24 May 2019 22:59:28 GMT  
		Size: 82.4 MB (82384846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b51d1cd757932b610f5913e83c123ebd1bf9677d66f0490bfbeb7f335bc468`  
		Last Modified: Fri, 24 May 2019 22:59:20 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ff7c08a89e99efba9eab6e08b48f21bb315440046ebaf4db964e42795e61db`  
		Last Modified: Fri, 24 May 2019 22:59:21 GMT  
		Size: 6.9 MB (6863744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
