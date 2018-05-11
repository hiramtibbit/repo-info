<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `open-liberty`

-	[`open-liberty:javaee7`](#open-libertyjavaee7)
-	[`open-liberty:javaee7-java8-ibm`](#open-libertyjavaee7-java8-ibm)
-	[`open-liberty:javaee7-java8-ibmsfj`](#open-libertyjavaee7-java8-ibmsfj)
-	[`open-liberty:kernel`](#open-libertykernel)
-	[`open-liberty:kernel-java8-ibm`](#open-libertykernel-java8-ibm)
-	[`open-liberty:kernel-java8-ibmsfj`](#open-libertykernel-java8-ibmsfj)
-	[`open-liberty:latest`](#open-libertylatest)
-	[`open-liberty:microProfile1`](#open-libertymicroprofile1)
-	[`open-liberty:microProfile1-java8-ibm`](#open-libertymicroprofile1-java8-ibm)
-	[`open-liberty:microProfile1-java8-ibmsfj`](#open-libertymicroprofile1-java8-ibmsfj)
-	[`open-liberty:webProfile7`](#open-libertywebprofile7)
-	[`open-liberty:webProfile7-java8-ibm`](#open-libertywebprofile7-java8-ibm)
-	[`open-liberty:webProfile7-java8-ibmsfj`](#open-libertywebprofile7-java8-ibmsfj)

## `open-liberty:javaee7`

```console
$ docker pull open-liberty@sha256:ebe50d3445c3781a8f85744cd732479eefbb43e7c62773499f6fbfe2a057c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:1aeb48dd134220df7e49e139a9370eabb2fe3e62867a150d8a1157819bcc3a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283765383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631c09d36411f83a748bae04f9abd80fef2665f1abdc72faf9d36b48f226c186`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:05:52 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 11 May 2018 19:05:53 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:07 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf33226a7158455f122c32d39a36baa663d95f647cc547183a448bd006f2c40b`  
		Last Modified: Fri, 11 May 2018 19:08:49 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b5f68a5e41f0a8699691ca96216cd814bed652e1918ae94e96ed52c33e9743`  
		Last Modified: Fri, 11 May 2018 19:08:51 GMT  
		Size: 14.2 MB (14177192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; 386

```console
$ docker pull open-liberty@sha256:47891ec326301c2be4fa7e6e850d117aa1fc8b36ea4f473b1fb5ebd6697b65e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272642347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5be652004c9878dd5b6f4a59fec2e496a1701df159a850b2392602c5c320bb7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:02:42 GMT
ENV KEYSTORE_REQUIRED=true
# Sun, 29 Apr 2018 01:02:42 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:02:56 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea263947fba64058f50bfe89cd9a9d9f1ef48ee573cfa6ce5f4f0da9a4ac250a`  
		Last Modified: Sun, 29 Apr 2018 01:04:06 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e039b0ad2c03946e3918d877691307c855cbdd450255a1516debfd484d233b6c`  
		Last Modified: Sun, 29 Apr 2018 01:04:09 GMT  
		Size: 14.5 MB (14539932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:317cfd084b45a316aea57e8691e49f5f3002659f67662440d469f44e0d59560a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299501962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f514317b2611f2b03c1bcdc60eb8307d15c8153a8fcaf477f87870f3becf7c4e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:19:27 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 28 Apr 2018 20:19:29 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:19:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d675939cf5e9c408aec3636516d16b8827f6c030b34f2fddcd923ee7c5905402`  
		Last Modified: Sat, 28 Apr 2018 20:21:46 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313cc54c053bb125ca2a9d1aff8a39353ce914de063706492900ed49b8e6de1d`  
		Last Modified: Sat, 28 Apr 2018 20:21:50 GMT  
		Size: 14.1 MB (14126958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:be1880178a5a8acb0523a7570fcbefa2b9e74991b7852375be198e3eb4b317d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282126812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2797c8e57a293cc8b8f7909659cd5b62b45e54863f570c41662d61d976e897c`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:51:44 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 28 Apr 2018 20:51:45 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:52:00 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c1af9fbcdd5b05efb770f156b59cd621de833e19d425fe3920577289ff6add`  
		Last Modified: Sat, 28 Apr 2018 20:53:23 GMT  
		Size: 886.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2b9b512a1d52ac3aa617d3e706d8508fc7aa62932c58900279e9f0cb1344ae`  
		Last Modified: Sat, 28 Apr 2018 20:53:27 GMT  
		Size: 14.3 MB (14254978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibm`

```console
$ docker pull open-liberty@sha256:ebe50d3445c3781a8f85744cd732479eefbb43e7c62773499f6fbfe2a057c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:1aeb48dd134220df7e49e139a9370eabb2fe3e62867a150d8a1157819bcc3a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283765383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631c09d36411f83a748bae04f9abd80fef2665f1abdc72faf9d36b48f226c186`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:05:52 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 11 May 2018 19:05:53 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:07 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf33226a7158455f122c32d39a36baa663d95f647cc547183a448bd006f2c40b`  
		Last Modified: Fri, 11 May 2018 19:08:49 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b5f68a5e41f0a8699691ca96216cd814bed652e1918ae94e96ed52c33e9743`  
		Last Modified: Fri, 11 May 2018 19:08:51 GMT  
		Size: 14.2 MB (14177192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:47891ec326301c2be4fa7e6e850d117aa1fc8b36ea4f473b1fb5ebd6697b65e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272642347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5be652004c9878dd5b6f4a59fec2e496a1701df159a850b2392602c5c320bb7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:02:42 GMT
ENV KEYSTORE_REQUIRED=true
# Sun, 29 Apr 2018 01:02:42 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:02:56 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea263947fba64058f50bfe89cd9a9d9f1ef48ee573cfa6ce5f4f0da9a4ac250a`  
		Last Modified: Sun, 29 Apr 2018 01:04:06 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e039b0ad2c03946e3918d877691307c855cbdd450255a1516debfd484d233b6c`  
		Last Modified: Sun, 29 Apr 2018 01:04:09 GMT  
		Size: 14.5 MB (14539932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:317cfd084b45a316aea57e8691e49f5f3002659f67662440d469f44e0d59560a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299501962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f514317b2611f2b03c1bcdc60eb8307d15c8153a8fcaf477f87870f3becf7c4e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:19:27 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 28 Apr 2018 20:19:29 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:19:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d675939cf5e9c408aec3636516d16b8827f6c030b34f2fddcd923ee7c5905402`  
		Last Modified: Sat, 28 Apr 2018 20:21:46 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313cc54c053bb125ca2a9d1aff8a39353ce914de063706492900ed49b8e6de1d`  
		Last Modified: Sat, 28 Apr 2018 20:21:50 GMT  
		Size: 14.1 MB (14126958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:be1880178a5a8acb0523a7570fcbefa2b9e74991b7852375be198e3eb4b317d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282126812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2797c8e57a293cc8b8f7909659cd5b62b45e54863f570c41662d61d976e897c`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:51:44 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 28 Apr 2018 20:51:45 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:52:00 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c1af9fbcdd5b05efb770f156b59cd621de833e19d425fe3920577289ff6add`  
		Last Modified: Sat, 28 Apr 2018 20:53:23 GMT  
		Size: 886.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2b9b512a1d52ac3aa617d3e706d8508fc7aa62932c58900279e9f0cb1344ae`  
		Last Modified: Sat, 28 Apr 2018 20:53:27 GMT  
		Size: 14.3 MB (14254978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:cb7c0428a6b39477f42212edd6b3fc299b45e64e50f01ed9a9e3f84ca1e76084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:8e72fa302c15764de8eb79a0785813ebfc8dd0c9e7a9b53973211b879ea1c2e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.0 MB (177965017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa4ccb49972ad9a03b8d811ea68a751dd46695df46a0e6969adf294a67dc8b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 11 May 2018 18:25:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:27:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e78289d1f5c713a6725e8fed8a17ff68c12eb4528df623afaf6dab1de3a1c8d1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='2d42eaf06517beaf6e2c17e5b178b0ed9489b3a99238b7487bb77a81c619852c';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='aaaecc0137095ac276e97bf86d2f9c6c3aa647047b8a10942415ba30c8f938b3';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7987e3d5e05c7dc4e672e81c7d3e3758ff564e83564256fdd07edbc3dba2dbc6';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='dec47c4088feccf987d8bf4cb4136a80ee8779fe06f575d66c8fc5466ab5c3cc';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:27:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:05:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:05:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:05:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:05:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 11 May 2018 19:05:11 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:05:12 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:05:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:05:12 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:05:12 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:06:12 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 11 May 2018 19:06:12 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:25 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cbdb84d5a2e5aafe722ca11ce221c04d98e6303b5e90fd19278ed5545d0e2`  
		Last Modified: Fri, 11 May 2018 18:30:40 GMT  
		Size: 61.9 MB (61916863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f437d8201abacade69154e1b77df0e92481b87712292a69ec199aba3ab82fc`  
		Last Modified: Fri, 11 May 2018 19:07:43 GMT  
		Size: 95.9 MB (95913314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f42534a3ba8f17c210e4e1e2ad1992b7b6a1995f7d09b3410cfefdd3488980`  
		Last Modified: Fri, 11 May 2018 19:07:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db420dee1cff01f83eb11fbdbede2de2fb5d0cc5083615d67bbb512a9fcf2dbb`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c46367c6894d30a2ebd76d6f08326436798c0a50527cc185fb4f80c788e30a`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb74ca223edd223ace395b692d1c3108ed19dc684c77c2660b74e9bc426ab36`  
		Last Modified: Fri, 11 May 2018 19:09:16 GMT  
		Size: 886.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c138703f31bcacdf408f88d48e3091b718183998a532b320947794426b297367`  
		Last Modified: Fri, 11 May 2018 19:09:18 GMT  
		Size: 13.6 MB (13610604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel`

```console
$ docker pull open-liberty@sha256:448b9a8fa1475dcacf683924a67e2f6c62799b2d4912281544e01ba1f2c1ebbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel` - linux; amd64

```console
$ docker pull open-liberty@sha256:6f37ca11a1ba225e338e80487fd7e5f8c484334ab319f74d56b315794cac4ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269587304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c21efa5ad50f312a3ddb3f3c2c7c429ad4e3874163574d536ca480d52dedd79`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; 386

```console
$ docker pull open-liberty@sha256:8589cdffc64501dccd0d325bf62ab62ea933f87e43ef96794410836daddb4d97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258101526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66166b519020e4d6acefa0838d5ee780b22646a37abc85f0873faf891035f8c0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:8a869498e2aa7005df32d7174e5cc28fa036ecc426251fa8408f61516438be25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285374115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacce3585daceeb62b87225d8082e45e227b97111c2276dbe2751c22c4e60055`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; s390x

```console
$ docker pull open-liberty@sha256:6acae40e328aed135d1d2eba57f6176efc23c4c32caa70c4c60fa99cdea3214b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267870948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc95332df11f75beb5edd274f7569df6b3b8d2ba69059480d2e6ae24a8861d3`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:448b9a8fa1475dcacf683924a67e2f6c62799b2d4912281544e01ba1f2c1ebbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:6f37ca11a1ba225e338e80487fd7e5f8c484334ab319f74d56b315794cac4ae1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269587304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c21efa5ad50f312a3ddb3f3c2c7c429ad4e3874163574d536ca480d52dedd79`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:8589cdffc64501dccd0d325bf62ab62ea933f87e43ef96794410836daddb4d97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258101526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66166b519020e4d6acefa0838d5ee780b22646a37abc85f0873faf891035f8c0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:8a869498e2aa7005df32d7174e5cc28fa036ecc426251fa8408f61516438be25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285374115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacce3585daceeb62b87225d8082e45e227b97111c2276dbe2751c22c4e60055`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:6acae40e328aed135d1d2eba57f6176efc23c4c32caa70c4c60fa99cdea3214b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267870948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc95332df11f75beb5edd274f7569df6b3b8d2ba69059480d2e6ae24a8861d3`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:e3f34ab08fda0a5db26ae8c261007ee54daac84de1b0adee05896f45b5846897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:kernel-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:94250f47f5d6c38f07e14e351753fc30cc8e0f1dba921c0350cbfce493c1e54a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164353527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932092d0ce56d03a28106df2682ac539dd980e3e1f5c3a333875612f0de2dd78`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 11 May 2018 18:25:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:27:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e78289d1f5c713a6725e8fed8a17ff68c12eb4528df623afaf6dab1de3a1c8d1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='2d42eaf06517beaf6e2c17e5b178b0ed9489b3a99238b7487bb77a81c619852c';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='aaaecc0137095ac276e97bf86d2f9c6c3aa647047b8a10942415ba30c8f938b3';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7987e3d5e05c7dc4e672e81c7d3e3758ff564e83564256fdd07edbc3dba2dbc6';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='dec47c4088feccf987d8bf4cb4136a80ee8779fe06f575d66c8fc5466ab5c3cc';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:27:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:05:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:05:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:05:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:05:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 11 May 2018 19:05:11 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:05:12 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:05:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:05:12 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:05:12 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cbdb84d5a2e5aafe722ca11ce221c04d98e6303b5e90fd19278ed5545d0e2`  
		Last Modified: Fri, 11 May 2018 18:30:40 GMT  
		Size: 61.9 MB (61916863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f437d8201abacade69154e1b77df0e92481b87712292a69ec199aba3ab82fc`  
		Last Modified: Fri, 11 May 2018 19:07:43 GMT  
		Size: 95.9 MB (95913314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f42534a3ba8f17c210e4e1e2ad1992b7b6a1995f7d09b3410cfefdd3488980`  
		Last Modified: Fri, 11 May 2018 19:07:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db420dee1cff01f83eb11fbdbede2de2fb5d0cc5083615d67bbb512a9fcf2dbb`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c46367c6894d30a2ebd76d6f08326436798c0a50527cc185fb4f80c788e30a`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:ebe50d3445c3781a8f85744cd732479eefbb43e7c62773499f6fbfe2a057c974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:1aeb48dd134220df7e49e139a9370eabb2fe3e62867a150d8a1157819bcc3a2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283765383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631c09d36411f83a748bae04f9abd80fef2665f1abdc72faf9d36b48f226c186`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:05:52 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 11 May 2018 19:05:53 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:07 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf33226a7158455f122c32d39a36baa663d95f647cc547183a448bd006f2c40b`  
		Last Modified: Fri, 11 May 2018 19:08:49 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b5f68a5e41f0a8699691ca96216cd814bed652e1918ae94e96ed52c33e9743`  
		Last Modified: Fri, 11 May 2018 19:08:51 GMT  
		Size: 14.2 MB (14177192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:47891ec326301c2be4fa7e6e850d117aa1fc8b36ea4f473b1fb5ebd6697b65e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272642347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5be652004c9878dd5b6f4a59fec2e496a1701df159a850b2392602c5c320bb7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:02:42 GMT
ENV KEYSTORE_REQUIRED=true
# Sun, 29 Apr 2018 01:02:42 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:02:56 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea263947fba64058f50bfe89cd9a9d9f1ef48ee573cfa6ce5f4f0da9a4ac250a`  
		Last Modified: Sun, 29 Apr 2018 01:04:06 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e039b0ad2c03946e3918d877691307c855cbdd450255a1516debfd484d233b6c`  
		Last Modified: Sun, 29 Apr 2018 01:04:09 GMT  
		Size: 14.5 MB (14539932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:317cfd084b45a316aea57e8691e49f5f3002659f67662440d469f44e0d59560a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299501962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f514317b2611f2b03c1bcdc60eb8307d15c8153a8fcaf477f87870f3becf7c4e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:19:27 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 28 Apr 2018 20:19:29 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:19:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d675939cf5e9c408aec3636516d16b8827f6c030b34f2fddcd923ee7c5905402`  
		Last Modified: Sat, 28 Apr 2018 20:21:46 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313cc54c053bb125ca2a9d1aff8a39353ce914de063706492900ed49b8e6de1d`  
		Last Modified: Sat, 28 Apr 2018 20:21:50 GMT  
		Size: 14.1 MB (14126958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:be1880178a5a8acb0523a7570fcbefa2b9e74991b7852375be198e3eb4b317d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282126812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2797c8e57a293cc8b8f7909659cd5b62b45e54863f570c41662d61d976e897c`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:51:44 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 28 Apr 2018 20:51:45 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:52:00 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c1af9fbcdd5b05efb770f156b59cd621de833e19d425fe3920577289ff6add`  
		Last Modified: Sat, 28 Apr 2018 20:53:23 GMT  
		Size: 886.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2b9b512a1d52ac3aa617d3e706d8508fc7aa62932c58900279e9f0cb1344ae`  
		Last Modified: Sat, 28 Apr 2018 20:53:27 GMT  
		Size: 14.3 MB (14254978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1`

```console
$ docker pull open-liberty@sha256:3a2db84425dafe4ebefe290fae69e919b6e5d342a4a7582f616e488f24e09532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1` - linux; amd64

```console
$ docker pull open-liberty@sha256:f8e6c66379e14bbd9149efe7294d7a52681bb31e97c470f6af8ce9f427cc9e92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280690682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2505b1f94da50c9bff8bd21956ae85616b7e65938e78994a053c4e47de027915`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:06:32 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2eb5f7a16530bf34c8bb6213c69f3939c2e6da3e1f307bed44d8bd927c19dd1`  
		Last Modified: Fri, 11 May 2018 19:09:28 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b66ba6d60950b18b70d07f92307abba86b93917776caec4e8f9f944ece1436`  
		Last Modified: Fri, 11 May 2018 19:09:31 GMT  
		Size: 11.1 MB (11102840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; 386

```console
$ docker pull open-liberty@sha256:b81d5549092d75da13e24076b7cb579861fd058bed9bda530a7e8c8a1cd89fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269456068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11f05ce7abf74a4a62ea21d11eb868b7006bedfeda422e874b9f36a399b3ed7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:03:04 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:03:14 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00b2d5956115717c758e774723a072c3703abc002c9934af1636b447adf526e`  
		Last Modified: Sun, 29 Apr 2018 01:04:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8ae51325f70629c7369a7a5b827d69777f1771eca3ef84b04c4c1b848e9608`  
		Last Modified: Sun, 29 Apr 2018 01:04:32 GMT  
		Size: 11.4 MB (11354003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:60e641dce4fa218c9a1250a1faa018cecee39e3b1ec648673485d5eb706b6102
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.8 MB (296780635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0edbe1e7739f09042fb840b0105d5f8a8617c25f3a72fa0db36e79557644903f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:20:08 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:20:25 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749a53c7cffb3659443350ea7125cd6aa749742544e536e301dbcd3a0393e74`  
		Last Modified: Sat, 28 Apr 2018 20:22:23 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae9f91fe7b02486d3d6bc6c8a51e16a7be48fb0dffe11f18ebed190aac67876`  
		Last Modified: Sat, 28 Apr 2018 20:22:26 GMT  
		Size: 11.4 MB (11405982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; s390x

```console
$ docker pull open-liberty@sha256:6061f8a3e8a24b3b99d76e351ce9776fbfc66ac202f5c7d4d2a5a2c846d75ad0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279125723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b86d92c46964c9579361cd9c334669f839209b77d2350136c540a91e9116a53`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:52:12 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:52:23 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb17102236fd26f2c842e193a012861ef0f32c65378e526a11e124f88f00941`  
		Last Modified: Sat, 28 Apr 2018 20:53:47 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbc5053989749c17d6865ecf650bc7b68bc60eeac821fb19b257d55a7e2084a`  
		Last Modified: Sat, 28 Apr 2018 20:53:50 GMT  
		Size: 11.3 MB (11254238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:3a2db84425dafe4ebefe290fae69e919b6e5d342a4a7582f616e488f24e09532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:f8e6c66379e14bbd9149efe7294d7a52681bb31e97c470f6af8ce9f427cc9e92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280690682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2505b1f94da50c9bff8bd21956ae85616b7e65938e78994a053c4e47de027915`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:06:32 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:42 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2eb5f7a16530bf34c8bb6213c69f3939c2e6da3e1f307bed44d8bd927c19dd1`  
		Last Modified: Fri, 11 May 2018 19:09:28 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b66ba6d60950b18b70d07f92307abba86b93917776caec4e8f9f944ece1436`  
		Last Modified: Fri, 11 May 2018 19:09:31 GMT  
		Size: 11.1 MB (11102840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:b81d5549092d75da13e24076b7cb579861fd058bed9bda530a7e8c8a1cd89fcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269456068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11f05ce7abf74a4a62ea21d11eb868b7006bedfeda422e874b9f36a399b3ed7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:03:04 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:03:14 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00b2d5956115717c758e774723a072c3703abc002c9934af1636b447adf526e`  
		Last Modified: Sun, 29 Apr 2018 01:04:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8ae51325f70629c7369a7a5b827d69777f1771eca3ef84b04c4c1b848e9608`  
		Last Modified: Sun, 29 Apr 2018 01:04:32 GMT  
		Size: 11.4 MB (11354003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:60e641dce4fa218c9a1250a1faa018cecee39e3b1ec648673485d5eb706b6102
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.8 MB (296780635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0edbe1e7739f09042fb840b0105d5f8a8617c25f3a72fa0db36e79557644903f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:20:08 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:20:25 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749a53c7cffb3659443350ea7125cd6aa749742544e536e301dbcd3a0393e74`  
		Last Modified: Sat, 28 Apr 2018 20:22:23 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae9f91fe7b02486d3d6bc6c8a51e16a7be48fb0dffe11f18ebed190aac67876`  
		Last Modified: Sat, 28 Apr 2018 20:22:26 GMT  
		Size: 11.4 MB (11405982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:6061f8a3e8a24b3b99d76e351ce9776fbfc66ac202f5c7d4d2a5a2c846d75ad0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279125723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b86d92c46964c9579361cd9c334669f839209b77d2350136c540a91e9116a53`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:52:12 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:52:23 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb17102236fd26f2c842e193a012861ef0f32c65378e526a11e124f88f00941`  
		Last Modified: Sat, 28 Apr 2018 20:53:47 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbc5053989749c17d6865ecf650bc7b68bc60eeac821fb19b257d55a7e2084a`  
		Last Modified: Sat, 28 Apr 2018 20:53:50 GMT  
		Size: 11.3 MB (11254238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:12483ac917efca30f22705d583e450406d8725741e0c4c537cb12062a70fae2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:4cd653acd1af83102f25c527eec9c33736a2e288dd6ded10e2b03e9e9f8c2856
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (174952630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df399ff49829a06af35951c4c585c2ff2210bcca4e1d8ade558a2dd19e097ee`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 11 May 2018 18:25:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:27:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e78289d1f5c713a6725e8fed8a17ff68c12eb4528df623afaf6dab1de3a1c8d1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='2d42eaf06517beaf6e2c17e5b178b0ed9489b3a99238b7487bb77a81c619852c';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='aaaecc0137095ac276e97bf86d2f9c6c3aa647047b8a10942415ba30c8f938b3';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7987e3d5e05c7dc4e672e81c7d3e3758ff564e83564256fdd07edbc3dba2dbc6';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='dec47c4088feccf987d8bf4cb4136a80ee8779fe06f575d66c8fc5466ab5c3cc';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:27:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:05:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:05:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:05:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:05:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 11 May 2018 19:05:11 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:05:12 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:05:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:05:12 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:05:12 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:06:49 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 11 May 2018 19:06:59 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cbdb84d5a2e5aafe722ca11ce221c04d98e6303b5e90fd19278ed5545d0e2`  
		Last Modified: Fri, 11 May 2018 18:30:40 GMT  
		Size: 61.9 MB (61916863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f437d8201abacade69154e1b77df0e92481b87712292a69ec199aba3ab82fc`  
		Last Modified: Fri, 11 May 2018 19:07:43 GMT  
		Size: 95.9 MB (95913314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f42534a3ba8f17c210e4e1e2ad1992b7b6a1995f7d09b3410cfefdd3488980`  
		Last Modified: Fri, 11 May 2018 19:07:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db420dee1cff01f83eb11fbdbede2de2fb5d0cc5083615d67bbb512a9fcf2dbb`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c46367c6894d30a2ebd76d6f08326436798c0a50527cc185fb4f80c788e30a`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5523ce773e0bead74639d3b24cbe0b7cf8b84be6dedefaeda6cf7ef562b28d`  
		Last Modified: Fri, 11 May 2018 19:09:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c92d2f19f8e150de0ce0f68091c077af1cf23efefb41991d95977c6c5ecd7`  
		Last Modified: Fri, 11 May 2018 19:09:52 GMT  
		Size: 10.6 MB (10598568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7`

```console
$ docker pull open-liberty@sha256:ddb5f4b7578c18b5b2deffb6a916e1055bbe40197b828fc8213993242db858fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7` - linux; amd64

```console
$ docker pull open-liberty@sha256:ffc0f04b077d55752019706921d415f4e935e4f574561f09c3ed9eb747891c56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280492142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33129894a783b0739619816f6bcdcdca39513bc4e2a9108fc23126b3e7750398`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:05:18 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 11 May 2018 19:05:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6eed69248e8b80e8a0b8291c8c5143f6187e5c8ae30b3d77efdb87c5b6fbc6d`  
		Last Modified: Fri, 11 May 2018 19:08:00 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881b5100142746ac5feed844654471e4d59c1fdf9b455ce4ea0eecccd325dc4`  
		Last Modified: Fri, 11 May 2018 19:08:04 GMT  
		Size: 10.9 MB (10904305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; 386

```console
$ docker pull open-liberty@sha256:ca218367bd884d59b4daf5ea9e713832d0d23b21ec701b8fc07d560ba31997c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269224247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3bb1905329102e0b3cafb8db6c5e54cddf57ab965a7d9c09e6dfe70d21c5a7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:02:26 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:02:38 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76baf8535538f57f2b8c9cdfd6981e91161a044972cbed0b7f372c6dcbb50450`  
		Last Modified: Sun, 29 Apr 2018 01:03:49 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348bca4980aaef2f7712d3aff3e8855588f194fa24c398437bb14cd248ab2be9`  
		Last Modified: Sun, 29 Apr 2018 01:03:52 GMT  
		Size: 11.1 MB (11122185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:3e5da09e3bf8a7a3a0fc59af1b3b5e8c5227d3f711228a6ee9435890f72d0e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296249226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ae7385de9a53e5a9b429aac825691f768df3b02326538c43495ed6106f5ad6`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:18:59 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:19:16 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db6aef6d5bf9632a11d6e80fc5471990128ee00de610433d5b0451d93fdd2e0`  
		Last Modified: Sat, 28 Apr 2018 20:21:20 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec37f0aef0c166dc500bcfad2b20423fe6504bec19656f022204043507a8582`  
		Last Modified: Sat, 28 Apr 2018 20:21:24 GMT  
		Size: 10.9 MB (10874577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; s390x

```console
$ docker pull open-liberty@sha256:15261267f33726910d3f49e475fc49f15752dba4f72ec348cbbaeb5d992d1e53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.9 MB (278872957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a52646286587bc899592eab290141708c5da0d723f9adeee2b1544e03c74831`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:51:19 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:51:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf244336a8a54a6cbfe5c965737bf8373ffa6e2a4da7afd3c224196419c04e8`  
		Last Modified: Sat, 28 Apr 2018 20:53:05 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b068d181aa8591754185e947ac26fe96e78ffaa7f6adbc32b70ce24d1052751`  
		Last Modified: Sat, 28 Apr 2018 20:53:08 GMT  
		Size: 11.0 MB (11001475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:ddb5f4b7578c18b5b2deffb6a916e1055bbe40197b828fc8213993242db858fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:ffc0f04b077d55752019706921d415f4e935e4f574561f09c3ed9eb747891c56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280492142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33129894a783b0739619816f6bcdcdca39513bc4e2a9108fc23126b3e7750398`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 18:24:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9ad9b756d01b07333acb31c03aaba5253978c1b5676654f4f2f8e4d53df17b8';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='918e4afb1d46853a67037f0abae8261c75d6ffe6f50d69cb39ad1990c385385c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2e632b95321c7a4e957e3130a997d35f93a3f7e1e5b5d88741fb904bc8191d7e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='818ff017c30fe9a31c813aef8093080b7465d5cd0bbe0bafa741cf71fd30990a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='11ac1da5ee044b1b5a1dc4c06ada4bc271fdfc1d69614f69d31db9b1d9cf053d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:24:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 11 May 2018 19:04:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 19:04:43 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:04:48 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:04:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:04:49 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 11 May 2018 19:04:54 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:04:54 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:04:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:05:18 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 11 May 2018 19:05:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c3df7fc735757259cf463c4c4a0bcdca4861d0d6da180edf3542464114b5bd`  
		Last Modified: Fri, 11 May 2018 18:29:13 GMT  
		Size: 127.2 MB (127200789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a080d43b3df269f6ce818b711b069089615a3a406f771ba0e1341fd519280e08`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 421.9 KB (421930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65b9ba46887a5b28a30ef9a3585fb9eff5bca9588cc1155960247924887d2da`  
		Last Modified: Fri, 11 May 2018 19:07:17 GMT  
		Size: 95.9 MB (95913279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d8090ebb875bcbb29ca152677bfd4366ec83dffb876f69d8430455bd7c2a42`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190bdc017bb16f81bc8d3541f165cab17db20e6c43c72ef267e78237e12f9a6`  
		Last Modified: Fri, 11 May 2018 19:07:11 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d61fb8e10e576a08143cc102367910a1b886eff80b356e060b5910cd169e0`  
		Last Modified: Fri, 11 May 2018 19:07:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6eed69248e8b80e8a0b8291c8c5143f6187e5c8ae30b3d77efdb87c5b6fbc6d`  
		Last Modified: Fri, 11 May 2018 19:08:00 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881b5100142746ac5feed844654471e4d59c1fdf9b455ce4ea0eecccd325dc4`  
		Last Modified: Fri, 11 May 2018 19:08:04 GMT  
		Size: 10.9 MB (10904305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:ca218367bd884d59b4daf5ea9e713832d0d23b21ec701b8fc07d560ba31997c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269224247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3bb1905329102e0b3cafb8db6c5e54cddf57ab965a7d9c09e6dfe70d21c5a7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 01:00:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sun, 29 Apr 2018 01:00:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 01:00:29 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sun, 29 Apr 2018 01:00:37 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sun, 29 Apr 2018 01:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sun, 29 Apr 2018 01:00:38 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sun, 29 Apr 2018 01:00:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sun, 29 Apr 2018 01:00:44 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sun, 29 Apr 2018 01:00:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 01:00:44 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sun, 29 Apr 2018 01:00:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sun, 29 Apr 2018 01:02:26 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sun, 29 Apr 2018 01:02:38 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94ceca0044a5516b8a38140fd34774fe5590885756710ca5f8844cdc4f17a53`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 420.8 KB (420771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195c5a20bc6369f7ebf0830b59dbd6a3fc63fcb3de25f3a67891459b78fe195f`  
		Last Modified: Sun, 29 Apr 2018 01:03:34 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981fa1108ddbb987b981096a8541cf42bde7518e8b3c3ce0860311668de75888`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a05ec41a0e30339682ce1765767fe696a7da29e6bf27d6ac5c7743cc888766`  
		Last Modified: Sun, 29 Apr 2018 01:03:26 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc5879179bf2c0aa2fcb06116a4f535ee18d96f3a38a37ae472c2db86165c84`  
		Last Modified: Sun, 29 Apr 2018 01:03:25 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76baf8535538f57f2b8c9cdfd6981e91161a044972cbed0b7f372c6dcbb50450`  
		Last Modified: Sun, 29 Apr 2018 01:03:49 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348bca4980aaef2f7712d3aff3e8855588f194fa24c398437bb14cd248ab2be9`  
		Last Modified: Sun, 29 Apr 2018 01:03:52 GMT  
		Size: 11.1 MB (11122185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:3e5da09e3bf8a7a3a0fc59af1b3b5e8c5227d3f711228a6ee9435890f72d0e21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296249226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ae7385de9a53e5a9b429aac825691f768df3b02326538c43495ed6106f5ad6`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:17:22 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:17:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:17:41 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:18:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:18:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:18:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:18:35 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:18:41 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:18:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:18:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:18:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:18:59 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:19:16 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f7e2ee2c7ba3f48a4178365078a3c79bc68af7e51037e70b44855f2e1b185b`  
		Last Modified: Sat, 28 Apr 2018 20:20:45 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96d038cb19f5e3b23a782af1a11a199200ca7f6ac3b960807ecb208b9f0305b`  
		Last Modified: Sat, 28 Apr 2018 20:20:56 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d12437dd4629f3fb3d66a6210f25b53c27e66d329ef07d5d8687ae391632a`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e061fa171c7242f7a7d8e0bbc132bc884e7d63c15980fe78e94a462ae095dd8`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e042e263f6969a34f1bec15605f7cf45e91ddef482de96f6de8fc3fc1c0096`  
		Last Modified: Sat, 28 Apr 2018 20:20:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db6aef6d5bf9632a11d6e80fc5471990128ee00de610433d5b0451d93fdd2e0`  
		Last Modified: Sat, 28 Apr 2018 20:21:20 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec37f0aef0c166dc500bcfad2b20423fe6504bec19656f022204043507a8582`  
		Last Modified: Sat, 28 Apr 2018 20:21:24 GMT  
		Size: 10.9 MB (10874577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:15261267f33726910d3f49e475fc49f15752dba4f72ec348cbbaeb5d992d1e53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.9 MB (278872957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a52646286587bc899592eab290141708c5da0d723f9adeee2b1544e03c74831`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:50:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 28 Apr 2018 20:50:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:50:57 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 28 Apr 2018 20:51:04 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 28 Apr 2018 20:51:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 28 Apr 2018 20:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 28 Apr 2018 20:51:08 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 28 Apr 2018 20:51:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 28 Apr 2018 20:51:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:51:09 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 28 Apr 2018 20:51:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 28 Apr 2018 20:51:19 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 28 Apr 2018 20:51:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7478ac37cb158064f1535e8146edf9d816d4569e17ab005d3885bf57544b67e`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 427.6 KB (427557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e942e5e1ab7a9948e051d80a31c0dfeb7a9369834c683290f55787c64470fd`  
		Last Modified: Sat, 28 Apr 2018 20:52:48 GMT  
		Size: 95.9 MB (95913294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71bc313d662a49ec40c65fcf92c70ac013eaf1028433de54da014a66a3092e9d`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc390ff8eec1f58bba271e76c7eac833f78cd949a20e0eada1589550f6058304`  
		Last Modified: Sat, 28 Apr 2018 20:52:40 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cde0b237cc003cc507e851b4a5c397831d4aed9f48a90f9ace3ca6a998a0cf`  
		Last Modified: Sat, 28 Apr 2018 20:52:39 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf244336a8a54a6cbfe5c965737bf8373ffa6e2a4da7afd3c224196419c04e8`  
		Last Modified: Sat, 28 Apr 2018 20:53:05 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b068d181aa8591754185e947ac26fe96e78ffaa7f6adbc32b70ce24d1052751`  
		Last Modified: Sat, 28 Apr 2018 20:53:08 GMT  
		Size: 11.0 MB (11001475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:2172e4ab80f935fb35fbb9da9ac5ac0f1ce29e831325bb33e9fe4cc3f8a2ed14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:01ce6efdd668e96ab1e98637575006d6103def4befa7c8ff40cd731bf23b7717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174754510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce09780361582774e1bce31058d5c8daed7779468575e7c5a022c0f8977a1372`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 11 May 2018 18:25:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:27:13 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e78289d1f5c713a6725e8fed8a17ff68c12eb4528df623afaf6dab1de3a1c8d1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='2d42eaf06517beaf6e2c17e5b178b0ed9489b3a99238b7487bb77a81c619852c';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='aaaecc0137095ac276e97bf86d2f9c6c3aa647047b8a10942415ba30c8f938b3';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7987e3d5e05c7dc4e672e81c7d3e3758ff564e83564256fdd07edbc3dba2dbc6';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='dec47c4088feccf987d8bf4cb4136a80ee8779fe06f575d66c8fc5466ab5c3cc';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:27:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:05:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 11 May 2018 19:05:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 11 May 2018 19:05:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 11 May 2018 19:05:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 11 May 2018 19:05:11 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 11 May 2018 19:05:12 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 11 May 2018 19:05:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 11 May 2018 19:05:12 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 11 May 2018 19:05:12 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 11 May 2018 19:05:35 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 11 May 2018 19:05:47 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150cbdb84d5a2e5aafe722ca11ce221c04d98e6303b5e90fd19278ed5545d0e2`  
		Last Modified: Fri, 11 May 2018 18:30:40 GMT  
		Size: 61.9 MB (61916863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f437d8201abacade69154e1b77df0e92481b87712292a69ec199aba3ab82fc`  
		Last Modified: Fri, 11 May 2018 19:07:43 GMT  
		Size: 95.9 MB (95913314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f42534a3ba8f17c210e4e1e2ad1992b7b6a1995f7d09b3410cfefdd3488980`  
		Last Modified: Fri, 11 May 2018 19:07:37 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db420dee1cff01f83eb11fbdbede2de2fb5d0cc5083615d67bbb512a9fcf2dbb`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c46367c6894d30a2ebd76d6f08326436798c0a50527cc185fb4f80c788e30a`  
		Last Modified: Fri, 11 May 2018 19:07:36 GMT  
		Size: 522.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359aa7fd489ffea9d58d0a102bd15246d91d86c9a0cecce32f1ffcbc8f6339bc`  
		Last Modified: Fri, 11 May 2018 19:08:21 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fe29593b021300896130b8d9d8918e4fcdf8409a8396a877a6699bc3c492ba`  
		Last Modified: Fri, 11 May 2018 19:08:23 GMT  
		Size: 10.4 MB (10400453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
