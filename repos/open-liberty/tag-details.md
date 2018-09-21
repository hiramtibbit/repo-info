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
$ docker pull open-liberty@sha256:312ed001b0efa5400d9fac86801374e0aa996af7d07e4d3c6c5f9692b17e43f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:636f9793d6d0600b1db2e12a45abc6207e02c140291f90b5fc12fb3fd1e11a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (314043075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f5365b42df195e74b43c935e3209b319c93996712cca355d2982664d74f0f1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:13:56 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:13:58 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:14:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdec8df300dc11ec4fb077773082254a20869ab370805f894e021bb5eb83366`  
		Last Modified: Thu, 20 Sep 2018 22:26:29 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81be7b177ba597bc29dc28d4d3675ecaac7933428ed8986f7c4bf070619dbe5e`  
		Last Modified: Thu, 20 Sep 2018 22:26:32 GMT  
		Size: 14.8 MB (14789568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; 386

```console
$ docker pull open-liberty@sha256:49f25f5d9ac171b8696f120aa31dbc4fd5e60ec9c2b7f30de1e4f20b6d99d4ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298103107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5dd0c1d6df12d01f723927c3ece0f3050edc4afe138b53f18a88134bd9e63a8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:30 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 07 Sep 2018 10:05:30 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 07 Sep 2018 10:05:46 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fa1791faa4299c075d05fca12ba68ea309d278884ca59d0d557df80826040`  
		Last Modified: Fri, 07 Sep 2018 10:08:06 GMT  
		Size: 888.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58f61cba972640d63a4a0b126727609cf1abb2102c1518ad713ea3ad8a628e9`  
		Last Modified: Fri, 07 Sep 2018 10:08:10 GMT  
		Size: 14.7 MB (14734028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:da6be78663a8d4df7eb18f86769421816366b3641ad26619f1fd56c247cfa14f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329696520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b117c517cabd0c5d6709953d237285e99789ba280d37abeb985bfee1b05a8e0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 08:54:54 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 21 Sep 2018 08:55:00 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 21 Sep 2018 08:55:45 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c342a31d67c04ce418fdce57726032e686463ee1d55b69aa5f2243690a47744`  
		Last Modified: Fri, 21 Sep 2018 09:14:53 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff911db77113d743505484cc8fc4bf77d60bbea97cf4cd6ec6fa1c2a0efbb0`  
		Last Modified: Fri, 21 Sep 2018 09:15:01 GMT  
		Size: 14.4 MB (14436675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:69ac57872e83fd35b55bd14026b7258a9253c58797023158dbb7a0a710e03a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307576411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e470c5a7785828e54c1a0f70877aedd6e24a25b0769aba13e3931e915e58543`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:03 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 06 Sep 2018 12:04:04 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 06 Sep 2018 12:04:20 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711ad78cc53cab49cd6ed1a8e78ed014e0f84c7f7fe67d15c6ca1d96b2da6c9`  
		Last Modified: Thu, 06 Sep 2018 12:07:35 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78ddd82408af322dddae075fb9c8718b7e3d9e3e33648bc8c56e08f113ba563`  
		Last Modified: Thu, 06 Sep 2018 12:07:38 GMT  
		Size: 14.5 MB (14499553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibm`

```console
$ docker pull open-liberty@sha256:312ed001b0efa5400d9fac86801374e0aa996af7d07e4d3c6c5f9692b17e43f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:636f9793d6d0600b1db2e12a45abc6207e02c140291f90b5fc12fb3fd1e11a71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (314043075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f5365b42df195e74b43c935e3209b319c93996712cca355d2982664d74f0f1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:13:56 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:13:58 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:14:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdec8df300dc11ec4fb077773082254a20869ab370805f894e021bb5eb83366`  
		Last Modified: Thu, 20 Sep 2018 22:26:29 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81be7b177ba597bc29dc28d4d3675ecaac7933428ed8986f7c4bf070619dbe5e`  
		Last Modified: Thu, 20 Sep 2018 22:26:32 GMT  
		Size: 14.8 MB (14789568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:49f25f5d9ac171b8696f120aa31dbc4fd5e60ec9c2b7f30de1e4f20b6d99d4ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298103107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5dd0c1d6df12d01f723927c3ece0f3050edc4afe138b53f18a88134bd9e63a8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:30 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 07 Sep 2018 10:05:30 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 07 Sep 2018 10:05:46 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fa1791faa4299c075d05fca12ba68ea309d278884ca59d0d557df80826040`  
		Last Modified: Fri, 07 Sep 2018 10:08:06 GMT  
		Size: 888.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58f61cba972640d63a4a0b126727609cf1abb2102c1518ad713ea3ad8a628e9`  
		Last Modified: Fri, 07 Sep 2018 10:08:10 GMT  
		Size: 14.7 MB (14734028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:da6be78663a8d4df7eb18f86769421816366b3641ad26619f1fd56c247cfa14f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329696520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b117c517cabd0c5d6709953d237285e99789ba280d37abeb985bfee1b05a8e0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 08:54:54 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 21 Sep 2018 08:55:00 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 21 Sep 2018 08:55:45 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c342a31d67c04ce418fdce57726032e686463ee1d55b69aa5f2243690a47744`  
		Last Modified: Fri, 21 Sep 2018 09:14:53 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff911db77113d743505484cc8fc4bf77d60bbea97cf4cd6ec6fa1c2a0efbb0`  
		Last Modified: Fri, 21 Sep 2018 09:15:01 GMT  
		Size: 14.4 MB (14436675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:69ac57872e83fd35b55bd14026b7258a9253c58797023158dbb7a0a710e03a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.6 MB (307576411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e470c5a7785828e54c1a0f70877aedd6e24a25b0769aba13e3931e915e58543`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:03 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 06 Sep 2018 12:04:04 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 06 Sep 2018 12:04:20 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711ad78cc53cab49cd6ed1a8e78ed014e0f84c7f7fe67d15c6ca1d96b2da6c9`  
		Last Modified: Thu, 06 Sep 2018 12:07:35 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78ddd82408af322dddae075fb9c8718b7e3d9e3e33648bc8c56e08f113ba563`  
		Last Modified: Thu, 06 Sep 2018 12:07:38 GMT  
		Size: 14.5 MB (14499553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:c89eb8fb3eba62c0f0f0e004ba1ff979b0a3ba2e7a1df420d35e93aa997b6004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:c4ef7ac576da731fb5509a3fdb551c1f1687c83cece70b117cfb555918ae5e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.4 MB (208364498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6990715eaa5e514c772be99511e6604e7abcd29b1d663b6ebc7583ce06ed65e0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:14:59 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:15:00 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:15:38 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11966eda47c983695e5d66aba098cdd88ee8f22d72279ff9b7d4ebb42bc2583a`  
		Last Modified: Thu, 20 Sep 2018 22:26:49 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aef2f17c60e1802018f283aecfa49f64e4d55ec7201be2f9999eafcc7eb1040`  
		Last Modified: Thu, 20 Sep 2018 22:26:52 GMT  
		Size: 14.3 MB (14275434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8`

```console
$ docker pull open-liberty@sha256:6f08c2a3bc34680dc3264b08d24c139b568186f3c0c4c6114e81db4acb651d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8` - linux; amd64

```console
$ docker pull open-liberty@sha256:80fb3c38f9694fd8e3662c0503468e635e5a2b450d06deb568d252b8d2740a6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (299984590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7befa53a1e3eef0df2da7e20808fa701ef9ec7feeea315b6f45e5a046fd75568`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:07:43 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Thu, 20 Sep 2018 22:08:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:08:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:08:02 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:08:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 20 Sep 2018 22:08:40 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:08:40 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:08:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8defa56860ed5a1e22837e725014abd9877e67ef7802d9f1ea534d1ed8f1d167`  
		Last Modified: Thu, 20 Sep 2018 22:23:20 GMT  
		Size: 111.1 MB (111062817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4097e14ff11f23905182ac329d27c26e374cf9bdcaf127e5f168462ec923a3c0`  
		Last Modified: Thu, 20 Sep 2018 22:23:05 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d2c95bc2eb3c8c16c5d887542a6e0384f1f6493cae65139ae848c75ff58e65`  
		Last Modified: Thu, 20 Sep 2018 22:23:10 GMT  
		Size: 14.9 MB (14883177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; 386

```console
$ docker pull open-liberty@sha256:2702a671ea456e570517c56ebb60f79b12933f1c7007e71e14c1478722b2c1ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284603486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947a01048c25f90987c750ed1ff6a1bf89942a86028faf68f7e92eef6e79712b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:10 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=9f2fa4e47ffcfb66d3ffedb14777d7cb3e2da30e
# Fri, 07 Sep 2018 10:04:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:04:22 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 07 Sep 2018 10:04:22 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:04:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Fri, 07 Sep 2018 10:04:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:04:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:04:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61311c40ee68827004f0fec125a75749aa5973734e18a7e6f71c21bbd25a050a`  
		Last Modified: Fri, 07 Sep 2018 10:07:21 GMT  
		Size: 107.4 MB (107423916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f738ec6c7ae74b03aa98ba76f4ef3abc1ca909c65f4cad33547a5128cfa32`  
		Last Modified: Fri, 07 Sep 2018 10:07:11 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86014a78eadb5d0d2649973bf4a6c4973b1dc3168629b4c2fce731f12614bbe6`  
		Last Modified: Fri, 07 Sep 2018 10:07:16 GMT  
		Size: 14.9 MB (14879630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:15aeb651cfc03bc8fe5a03dee87d7c734c1a26b1572b94dbd31f56be38daea1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315546498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cdcaaf4142bfda7804e4858ee74d65ee0ca116dbc69c62f11d89667e8b35d8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:50:28 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Fri, 21 Sep 2018 08:50:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:51:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 21 Sep 2018 08:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:51:37 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Fri, 21 Sep 2018 08:51:38 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:51:38 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:51:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a793ea8f8b0e252e073befab83689f2f44f2ab0401cac8c25cb98bedbb529fb2`  
		Last Modified: Fri, 21 Sep 2018 09:10:59 GMT  
		Size: 111.1 MB (111062802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c817f7f9cea6a132119da46341a91b3991a4aa6eced5cc0b7773dffdbce49850`  
		Last Modified: Fri, 21 Sep 2018 09:10:32 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec027b2b9ac924fbdb454dd729ffa85f661722690ee30c58c088c682dc0e2eda`  
		Last Modified: Fri, 21 Sep 2018 09:10:41 GMT  
		Size: 14.4 MB (14438772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8` - linux; s390x

```console
$ docker pull open-liberty@sha256:07c3e6a9e41c8215fef9dcb40eaa367aec0a891ca2a68b9177a3f41aa22c616e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294079477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb27cd9feaa0caacc0991ef68138261358373742494acfbbc3bb5c8a3456c7a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:02:30 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=9f2fa4e47ffcfb66d3ffedb14777d7cb3e2da30e
# Thu, 06 Sep 2018 12:02:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:02:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 06 Sep 2018 12:02:43 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:00 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 06 Sep 2018 12:03:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:01 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:01 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e09f59353205e2fde107280548081bf0d395a9efb98f3c42dadd938e9fc81b`  
		Last Modified: Thu, 06 Sep 2018 12:06:14 GMT  
		Size: 107.4 MB (107423838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234b35005d53c50e740ce9ed8ad05972c94e01a125a865b6f703ef9b694aed2e`  
		Last Modified: Thu, 06 Sep 2018 12:06:31 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1705802fbab687b28780b9e1f0e50a7881618f072f3880cc3dd74f1390d889`  
		Last Modified: Thu, 06 Sep 2018 12:06:09 GMT  
		Size: 14.6 MB (14647850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibm`

```console
$ docker pull open-liberty@sha256:6f08c2a3bc34680dc3264b08d24c139b568186f3c0c4c6114e81db4acb651d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:80fb3c38f9694fd8e3662c0503468e635e5a2b450d06deb568d252b8d2740a6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (299984590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7befa53a1e3eef0df2da7e20808fa701ef9ec7feeea315b6f45e5a046fd75568`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:07:43 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Thu, 20 Sep 2018 22:08:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:08:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:08:02 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:08:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 20 Sep 2018 22:08:40 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:08:40 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:08:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8defa56860ed5a1e22837e725014abd9877e67ef7802d9f1ea534d1ed8f1d167`  
		Last Modified: Thu, 20 Sep 2018 22:23:20 GMT  
		Size: 111.1 MB (111062817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4097e14ff11f23905182ac329d27c26e374cf9bdcaf127e5f168462ec923a3c0`  
		Last Modified: Thu, 20 Sep 2018 22:23:05 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d2c95bc2eb3c8c16c5d887542a6e0384f1f6493cae65139ae848c75ff58e65`  
		Last Modified: Thu, 20 Sep 2018 22:23:10 GMT  
		Size: 14.9 MB (14883177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:2702a671ea456e570517c56ebb60f79b12933f1c7007e71e14c1478722b2c1ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284603486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947a01048c25f90987c750ed1ff6a1bf89942a86028faf68f7e92eef6e79712b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:10 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=9f2fa4e47ffcfb66d3ffedb14777d7cb3e2da30e
# Fri, 07 Sep 2018 10:04:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:04:22 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 07 Sep 2018 10:04:22 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:04:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Fri, 07 Sep 2018 10:04:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:04:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:04:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61311c40ee68827004f0fec125a75749aa5973734e18a7e6f71c21bbd25a050a`  
		Last Modified: Fri, 07 Sep 2018 10:07:21 GMT  
		Size: 107.4 MB (107423916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f738ec6c7ae74b03aa98ba76f4ef3abc1ca909c65f4cad33547a5128cfa32`  
		Last Modified: Fri, 07 Sep 2018 10:07:11 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86014a78eadb5d0d2649973bf4a6c4973b1dc3168629b4c2fce731f12614bbe6`  
		Last Modified: Fri, 07 Sep 2018 10:07:16 GMT  
		Size: 14.9 MB (14879630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:15aeb651cfc03bc8fe5a03dee87d7c734c1a26b1572b94dbd31f56be38daea1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315546498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cdcaaf4142bfda7804e4858ee74d65ee0ca116dbc69c62f11d89667e8b35d8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:50:28 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Fri, 21 Sep 2018 08:50:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:51:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 21 Sep 2018 08:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:51:37 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Fri, 21 Sep 2018 08:51:38 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:51:38 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:51:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a793ea8f8b0e252e073befab83689f2f44f2ab0401cac8c25cb98bedbb529fb2`  
		Last Modified: Fri, 21 Sep 2018 09:10:59 GMT  
		Size: 111.1 MB (111062802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c817f7f9cea6a132119da46341a91b3991a4aa6eced5cc0b7773dffdbce49850`  
		Last Modified: Fri, 21 Sep 2018 09:10:32 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec027b2b9ac924fbdb454dd729ffa85f661722690ee30c58c088c682dc0e2eda`  
		Last Modified: Fri, 21 Sep 2018 09:10:41 GMT  
		Size: 14.4 MB (14438772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:07c3e6a9e41c8215fef9dcb40eaa367aec0a891ca2a68b9177a3f41aa22c616e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294079477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb27cd9feaa0caacc0991ef68138261358373742494acfbbc3bb5c8a3456c7a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:02:30 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=9f2fa4e47ffcfb66d3ffedb14777d7cb3e2da30e
# Thu, 06 Sep 2018 12:02:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:02:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 06 Sep 2018 12:02:43 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:00 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 06 Sep 2018 12:03:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:01 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:01 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e09f59353205e2fde107280548081bf0d395a9efb98f3c42dadd938e9fc81b`  
		Last Modified: Thu, 06 Sep 2018 12:06:14 GMT  
		Size: 107.4 MB (107423838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234b35005d53c50e740ce9ed8ad05972c94e01a125a865b6f703ef9b694aed2e`  
		Last Modified: Thu, 06 Sep 2018 12:06:31 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1705802fbab687b28780b9e1f0e50a7881618f072f3880cc3dd74f1390d889`  
		Last Modified: Thu, 06 Sep 2018 12:06:09 GMT  
		Size: 14.6 MB (14647850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:04b1de638a11a9507bbcf4a8521799b7b217cce11466e791dfc19ebb7f0e860d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:bb5064ec926ad99f2a0f0912a9ad89a2a786a2e3488c90df4fbb512966b17133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194242715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acafc97de3be145a208c454f52f888de928569dc7f654bdfcbf1adf30b58b1ab`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:47:01 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:09:17 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Thu, 20 Sep 2018 22:09:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:09:27 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:09:28 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:10:03 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 20 Sep 2018 22:10:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:10:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:10:04 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c16c641d08dd37bffdac1f257bf3edcd97b5fb7df1ccb12971afbb132d08ceb`  
		Last Modified: Wed, 12 Sep 2018 03:51:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e6af7fb982ea4d6f3728af2450aa2a2bc6e0105050f33487ef129802914eb`  
		Last Modified: Thu, 20 Sep 2018 22:24:14 GMT  
		Size: 110.8 MB (110842116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c243a4d892536971ca606d4069d7edd3ccd9c97a5c3ff24085a7accf89b6e`  
		Last Modified: Thu, 20 Sep 2018 22:24:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18477b57a433f2fbd00c33745daf775aff02fd989bfdd1e4f972f4fd6ee6f5f6`  
		Last Modified: Thu, 20 Sep 2018 22:24:05 GMT  
		Size: 14.3 MB (14306093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel`

```console
$ docker pull open-liberty@sha256:7410ac3a6ff9c6096046b123506828a1102eb81d96494562606aca568f32c9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel` - linux; amd64

```console
$ docker pull open-liberty@sha256:a06ee2f95e8047564e077228228c0eb1a3b4d8ebc78900c6cd8cad6ca961927f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.3 MB (299252610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fa9262f5e62ebfae882a94cb8aaa897fd2dee32def4e914ffcf9688176b511`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; 386

```console
$ docker pull open-liberty@sha256:382bec23654ca452b04928aa14e107334c029d4b8a6b0613527bfd828ff3c72e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283368191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f298ac61e7e72dcf8491d1daeec404e550996acad4d776defe096883af0ae1f1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d45ab0ebc9624d4bfdb40dd54fa5b406e8300202eca5639a477c93c9c4ab763c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315258949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b84b844ef35ae3a817549b5784ae4333e844a441bafe651ba1e76bb7b27782`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; s390x

```console
$ docker pull open-liberty@sha256:10bc4704c55c26dbff3bd0a43a2e79e666d8fd5ca46c3155fa76d0fd7a0a13dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293075969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a877bae000ad6cce8d4f5d446d4ef5e6d5a753918a45916558230249ad32923`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:7410ac3a6ff9c6096046b123506828a1102eb81d96494562606aca568f32c9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:a06ee2f95e8047564e077228228c0eb1a3b4d8ebc78900c6cd8cad6ca961927f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.3 MB (299252610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51fa9262f5e62ebfae882a94cb8aaa897fd2dee32def4e914ffcf9688176b511`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:382bec23654ca452b04928aa14e107334c029d4b8a6b0613527bfd828ff3c72e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283368191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f298ac61e7e72dcf8491d1daeec404e550996acad4d776defe096883af0ae1f1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d45ab0ebc9624d4bfdb40dd54fa5b406e8300202eca5639a477c93c9c4ab763c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315258949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b84b844ef35ae3a817549b5784ae4333e844a441bafe651ba1e76bb7b27782`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:10bc4704c55c26dbff3bd0a43a2e79e666d8fd5ca46c3155fa76d0fd7a0a13dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293075969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a877bae000ad6cce8d4f5d446d4ef5e6d5a753918a45916558230249ad32923`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:6ffd7c31b89869e15bc81cf7a84facfa6287344ce98cf2cbcfda8ccbc4f104c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:kernel-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:28e548b8caf5bce054edd3f6a396c58c23a68666712418be78a119d68116bd22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194088170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fad092d98460d4a5474a67c9d26d97e963bbd4a1c76ad20991420c502df0453`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:6f08c2a3bc34680dc3264b08d24c139b568186f3c0c4c6114e81db4acb651d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:80fb3c38f9694fd8e3662c0503468e635e5a2b450d06deb568d252b8d2740a6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (299984590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7befa53a1e3eef0df2da7e20808fa701ef9ec7feeea315b6f45e5a046fd75568`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:07:43 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Thu, 20 Sep 2018 22:08:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:08:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:08:02 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:08:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 20 Sep 2018 22:08:40 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:08:40 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:08:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8defa56860ed5a1e22837e725014abd9877e67ef7802d9f1ea534d1ed8f1d167`  
		Last Modified: Thu, 20 Sep 2018 22:23:20 GMT  
		Size: 111.1 MB (111062817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4097e14ff11f23905182ac329d27c26e374cf9bdcaf127e5f168462ec923a3c0`  
		Last Modified: Thu, 20 Sep 2018 22:23:05 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d2c95bc2eb3c8c16c5d887542a6e0384f1f6493cae65139ae848c75ff58e65`  
		Last Modified: Thu, 20 Sep 2018 22:23:10 GMT  
		Size: 14.9 MB (14883177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:2702a671ea456e570517c56ebb60f79b12933f1c7007e71e14c1478722b2c1ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284603486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947a01048c25f90987c750ed1ff6a1bf89942a86028faf68f7e92eef6e79712b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:10 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=9f2fa4e47ffcfb66d3ffedb14777d7cb3e2da30e
# Fri, 07 Sep 2018 10:04:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:04:22 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 07 Sep 2018 10:04:22 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:04:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Fri, 07 Sep 2018 10:04:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:04:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:04:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61311c40ee68827004f0fec125a75749aa5973734e18a7e6f71c21bbd25a050a`  
		Last Modified: Fri, 07 Sep 2018 10:07:21 GMT  
		Size: 107.4 MB (107423916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f738ec6c7ae74b03aa98ba76f4ef3abc1ca909c65f4cad33547a5128cfa32`  
		Last Modified: Fri, 07 Sep 2018 10:07:11 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86014a78eadb5d0d2649973bf4a6c4973b1dc3168629b4c2fce731f12614bbe6`  
		Last Modified: Fri, 07 Sep 2018 10:07:16 GMT  
		Size: 14.9 MB (14879630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:15aeb651cfc03bc8fe5a03dee87d7c734c1a26b1572b94dbd31f56be38daea1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315546498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cdcaaf4142bfda7804e4858ee74d65ee0ca116dbc69c62f11d89667e8b35d8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:50:28 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Fri, 21 Sep 2018 08:50:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:51:01 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Fri, 21 Sep 2018 08:51:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:51:37 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Fri, 21 Sep 2018 08:51:38 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:51:38 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:51:40 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a793ea8f8b0e252e073befab83689f2f44f2ab0401cac8c25cb98bedbb529fb2`  
		Last Modified: Fri, 21 Sep 2018 09:10:59 GMT  
		Size: 111.1 MB (111062802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c817f7f9cea6a132119da46341a91b3991a4aa6eced5cc0b7773dffdbce49850`  
		Last Modified: Fri, 21 Sep 2018 09:10:32 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec027b2b9ac924fbdb454dd729ffa85f661722690ee30c58c088c682dc0e2eda`  
		Last Modified: Fri, 21 Sep 2018 09:10:41 GMT  
		Size: 14.4 MB (14438772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:07c3e6a9e41c8215fef9dcb40eaa367aec0a891ca2a68b9177a3f41aa22c616e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294079477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb27cd9feaa0caacc0991ef68138261358373742494acfbbc3bb5c8a3456c7a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:02:30 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=9f2fa4e47ffcfb66d3ffedb14777d7cb3e2da30e
# Thu, 06 Sep 2018 12:02:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:02:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 06 Sep 2018 12:02:43 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:00 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 06 Sep 2018 12:03:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:01 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:01 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e09f59353205e2fde107280548081bf0d395a9efb98f3c42dadd938e9fc81b`  
		Last Modified: Thu, 06 Sep 2018 12:06:14 GMT  
		Size: 107.4 MB (107423838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234b35005d53c50e740ce9ed8ad05972c94e01a125a865b6f703ef9b694aed2e`  
		Last Modified: Thu, 06 Sep 2018 12:06:31 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1705802fbab687b28780b9e1f0e50a7881618f072f3880cc3dd74f1390d889`  
		Last Modified: Thu, 06 Sep 2018 12:06:09 GMT  
		Size: 14.6 MB (14647850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1`

```console
$ docker pull open-liberty@sha256:30033b7f426e1af496931a55834aa8ba2ba64f3ca7534b309fb3ed971448561a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1` - linux; amd64

```console
$ docker pull open-liberty@sha256:f94e788b7469eb713022fdf9a8bdfb119de1aedb887062cd5f8cb063ba433426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311018186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6ff7a878516f23e02f78a27912553681f537dd975a26de67273e47d31eff7d`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:17:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:17:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17de7460298745b40a921a2d4a69d6e046edbba35c91cf46563b034af025546`  
		Last Modified: Thu, 20 Sep 2018 22:27:40 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef3a8d2e5491c861efe29b4664b81b7274000a35efa0d3fdfdc4e4c06899b2c`  
		Last Modified: Thu, 20 Sep 2018 22:27:43 GMT  
		Size: 11.8 MB (11765030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; 386

```console
$ docker pull open-liberty@sha256:b2b242c6873fbcee6b6b521d404260ae7bc79731116007d6f79c88429fd8c029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294833037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce7770a9423a8dd60c43a3b04ad758deb14a30fa05cabe1fe0981ee90bd920a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:06:07 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 07 Sep 2018 10:06:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361098b01f13ff0bd0675bc248854c2066bd92c57f3b85b9646b5c8d2fd10f2b`  
		Last Modified: Fri, 07 Sep 2018 10:08:34 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e52129a9bf80971eec3f234f9622b9c7387479f3ea7b58302ab1d7dc4d7e4e`  
		Last Modified: Fri, 07 Sep 2018 10:08:39 GMT  
		Size: 11.5 MB (11464310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9a58d7290199ccadca8dd9a7b2c180aab850292981725732d83cd786a31d71c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327063807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8edc165c7f04b4a6bb1dd06751194bf5d5ed0e3e552fe1d088382162be7b22`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:04:34 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:05:18 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253dc7f62eaf3a09b92a89d1c0c2387d14bdf9ec0876c9158f73045bc803c0a`  
		Last Modified: Fri, 21 Sep 2018 09:16:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2944178eb6f80e35f61effe075febd2970eba78d055693c4bf141a2cb6e08f`  
		Last Modified: Fri, 21 Sep 2018 09:16:44 GMT  
		Size: 11.8 MB (11804312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; s390x

```console
$ docker pull open-liberty@sha256:cc02e8818234798907f8f0076a3083c8f8fe9e24228ce1994a4321b7b710eefe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304740725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc10e47442e10815fe38fce9e9becad79d572a35787e571439f575f422dc03b2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:58 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 06 Sep 2018 12:05:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df9ca3b210c805a82ae9a58523cd7a39756e6fb37fbdb2c614e77c0a33908b`  
		Last Modified: Thu, 06 Sep 2018 12:08:14 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35456145eb1fa5d199c3ba11a56a5ad9e93ae67face69af6287ab61389773be8`  
		Last Modified: Thu, 06 Sep 2018 12:08:14 GMT  
		Size: 11.7 MB (11664217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:30033b7f426e1af496931a55834aa8ba2ba64f3ca7534b309fb3ed971448561a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:f94e788b7469eb713022fdf9a8bdfb119de1aedb887062cd5f8cb063ba433426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311018186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e6ff7a878516f23e02f78a27912553681f537dd975a26de67273e47d31eff7d`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:17:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:17:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17de7460298745b40a921a2d4a69d6e046edbba35c91cf46563b034af025546`  
		Last Modified: Thu, 20 Sep 2018 22:27:40 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef3a8d2e5491c861efe29b4664b81b7274000a35efa0d3fdfdc4e4c06899b2c`  
		Last Modified: Thu, 20 Sep 2018 22:27:43 GMT  
		Size: 11.8 MB (11765030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:b2b242c6873fbcee6b6b521d404260ae7bc79731116007d6f79c88429fd8c029
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294833037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce7770a9423a8dd60c43a3b04ad758deb14a30fa05cabe1fe0981ee90bd920a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:06:07 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 07 Sep 2018 10:06:19 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361098b01f13ff0bd0675bc248854c2066bd92c57f3b85b9646b5c8d2fd10f2b`  
		Last Modified: Fri, 07 Sep 2018 10:08:34 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e52129a9bf80971eec3f234f9622b9c7387479f3ea7b58302ab1d7dc4d7e4e`  
		Last Modified: Fri, 07 Sep 2018 10:08:39 GMT  
		Size: 11.5 MB (11464310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9a58d7290199ccadca8dd9a7b2c180aab850292981725732d83cd786a31d71c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327063807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa8edc165c7f04b4a6bb1dd06751194bf5d5ed0e3e552fe1d088382162be7b22`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:04:34 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:05:18 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1253dc7f62eaf3a09b92a89d1c0c2387d14bdf9ec0876c9158f73045bc803c0a`  
		Last Modified: Fri, 21 Sep 2018 09:16:37 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2944178eb6f80e35f61effe075febd2970eba78d055693c4bf141a2cb6e08f`  
		Last Modified: Fri, 21 Sep 2018 09:16:44 GMT  
		Size: 11.8 MB (11804312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:cc02e8818234798907f8f0076a3083c8f8fe9e24228ce1994a4321b7b710eefe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.7 MB (304740725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc10e47442e10815fe38fce9e9becad79d572a35787e571439f575f422dc03b2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:58 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 06 Sep 2018 12:05:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df9ca3b210c805a82ae9a58523cd7a39756e6fb37fbdb2c614e77c0a33908b`  
		Last Modified: Thu, 06 Sep 2018 12:08:14 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35456145eb1fa5d199c3ba11a56a5ad9e93ae67face69af6287ab61389773be8`  
		Last Modified: Thu, 06 Sep 2018 12:08:14 GMT  
		Size: 11.7 MB (11664217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:7ac9251ba5d34b513f0687bae62aa55b7b149e18003a5c2a3879ca8302fdb445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:ed9d8e3a809394414af2f5022187f3682bf5ec2da84c1a4b89f01058086250c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205279217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eddb0ccb64fbc1d0a738941505c1780af21f66286615dc63b2001a4d20c6a1b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:18:18 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:18:47 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30474e196228f78a92728fed7e295b866dfedb84a5f08d465dec8a1cd1706e`  
		Last Modified: Thu, 20 Sep 2018 22:28:06 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54df6b77b8d7c343e70aecc92f4ba42ae134fe13f13ca6f8d90763db8bf8059a`  
		Last Modified: Thu, 20 Sep 2018 22:28:07 GMT  
		Size: 11.2 MB (11190503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2`

```console
$ docker pull open-liberty@sha256:809e8effcb782ba75df8b83805b6e2caae0ce7c049af2eb7f71c9a25d7f2ad21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `open-liberty:microProfile2` - linux; amd64

```console
$ docker pull open-liberty@sha256:4cc9a68d132da670f2aae5659c30ad21f2653af3d8d10f2f88c456baed4ac0b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.2 MB (311227041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa4d3333fc224e4f820db197cb48c37602ce504323af55d3e46bbd88d6f52c0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:19:06 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:19:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0309efcfabda18b2292ad695c6332906b280a86590c033e5d47d9e4b68f3831a`  
		Last Modified: Thu, 20 Sep 2018 22:28:19 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9818011ff03c7fb969c5480c884ca14203390144a992045bb26b6a8ddb3f479`  
		Last Modified: Thu, 20 Sep 2018 22:28:22 GMT  
		Size: 12.0 MB (11973885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:3e6192e13c1d863cd461b9e9cf68b8c29b919811b8c3d6405b1959554fc0449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327268795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6272fa30c1b46ba9d5b78342587aa3881e7962c58214afdf2c733286ff26a1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:06:01 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:06:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74337874bbeea77f6acb06bb7a7f772975412be9038c7b37bc6f55ba79db78c5`  
		Last Modified: Fri, 21 Sep 2018 09:17:22 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5a0b04554838f370e8ba250b4e2eece3d04fe092300e99399f3b0e0a55d73e`  
		Last Modified: Fri, 21 Sep 2018 09:17:29 GMT  
		Size: 12.0 MB (12009300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibm`

```console
$ docker pull open-liberty@sha256:809e8effcb782ba75df8b83805b6e2caae0ce7c049af2eb7f71c9a25d7f2ad21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `open-liberty:microProfile2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:4cc9a68d132da670f2aae5659c30ad21f2653af3d8d10f2f88c456baed4ac0b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.2 MB (311227041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa4d3333fc224e4f820db197cb48c37602ce504323af55d3e46bbd88d6f52c0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:19:06 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:19:36 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0309efcfabda18b2292ad695c6332906b280a86590c033e5d47d9e4b68f3831a`  
		Last Modified: Thu, 20 Sep 2018 22:28:19 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9818011ff03c7fb969c5480c884ca14203390144a992045bb26b6a8ddb3f479`  
		Last Modified: Thu, 20 Sep 2018 22:28:22 GMT  
		Size: 12.0 MB (11973885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:3e6192e13c1d863cd461b9e9cf68b8c29b919811b8c3d6405b1959554fc0449a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327268795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6272fa30c1b46ba9d5b78342587aa3881e7962c58214afdf2c733286ff26a1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:06:01 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:06:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74337874bbeea77f6acb06bb7a7f772975412be9038c7b37bc6f55ba79db78c5`  
		Last Modified: Fri, 21 Sep 2018 09:17:22 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5a0b04554838f370e8ba250b4e2eece3d04fe092300e99399f3b0e0a55d73e`  
		Last Modified: Fri, 21 Sep 2018 09:17:29 GMT  
		Size: 12.0 MB (12009300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:aa5d031b2e064bf7f335b7542ab7ef18404971e3787f5253faedde0796b989d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:8eff16158f8b18859f953a05fb4460c9163b283354bdac97e08ba7ea095b0b20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205373499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcb93c41efd6c27b5a1d6a44c4e246b26acb09c35c4ed7ccd1f51104abe4f73`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:19:51 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:20:20 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102c20038dfde8d8c041987b7e2e908dddc621f37c9ae7a1fe8c8c56033e919b`  
		Last Modified: Thu, 20 Sep 2018 22:28:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227ab7e449f59c6a93e8f974465e8071e4eec5a75287cf75a032eb10f9d797e0`  
		Last Modified: Thu, 20 Sep 2018 22:28:46 GMT  
		Size: 11.3 MB (11284785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1`

```console
$ docker pull open-liberty@sha256:2b7ec21ef0a9bde437615966dd2f7fd300b6b106a79b6154bf46af7b80dc75fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1` - linux; amd64

```console
$ docker pull open-liberty@sha256:d06c52de726e90f3838e01928d74c9e68c88ce9ca23476ed62efb044f0582196
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307692817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d25ed2e434557bc9f96d3f1e081199726b703b3abcb481bbcfc003b41fd8c9a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:15:56 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 20 Sep 2018 22:15:57 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:16:18 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5364a136bad94a769e4cd922529b995f3a3287bc48e9af72b8a025daaf81c3`  
		Last Modified: Thu, 20 Sep 2018 22:27:02 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fc8ab79b3c268c97167120946f10f299c9def9cf053e368e0746138576d9fc`  
		Last Modified: Thu, 20 Sep 2018 22:27:02 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af149d0e76756a50eb80c7297568c0626e6c5556b744074dc05f9c9ba355f7cf`  
		Last Modified: Thu, 20 Sep 2018 22:27:04 GMT  
		Size: 8.4 MB (8439409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; 386

```console
$ docker pull open-liberty@sha256:6b38db3f8e3818134eb54cd5c5b5fa7154e1591f91968360843fd51974d654a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.8 MB (291767029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84a5a799fe9a2e40686086eee65e13b5c1d55147bce5b73f30eacb1f744829e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 07 Sep 2018 10:05:53 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Fri, 07 Sep 2018 10:06:01 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4592e37d6e6a97a84675eaa324d7465d7b4b69b0c0ec99028debbeaebc0b06f4`  
		Last Modified: Fri, 07 Sep 2018 10:08:21 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49be1bb9b8d3b392238fc6c1f8c92a46bc5eb53f8b676e7410d3060dc4a33b72`  
		Last Modified: Fri, 07 Sep 2018 10:08:19 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b93c31cb0f415157b1bc2efb0ecda9902b53a90a7afdbd50849a4de7d2930c`  
		Last Modified: Fri, 07 Sep 2018 10:08:21 GMT  
		Size: 8.4 MB (8398052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:a5e035458bcb35c6a1147a89ee12a44d79d5949b5beb9e95525c66ad1562666c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.5 MB (322464264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7363c0066e4c9adda1a9a159cc5bf741895d2378ad991287439afb480bd76647`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:02:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 21 Sep 2018 09:03:00 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:03:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c9caf9ba191a1c78448b3d8457803128665a7760271cac969bdeed03e3cff`  
		Last Modified: Fri, 21 Sep 2018 09:15:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4ca13e837d920e2f64cdd01318a0f6cd1be7d0f93d4ea15e3826721c4fd51`  
		Last Modified: Fri, 21 Sep 2018 09:15:47 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a875e476de8813b6976e987aabd7216017c4640f9dbeb1e072cfb5ca87c9148f`  
		Last Modified: Fri, 21 Sep 2018 09:15:53 GMT  
		Size: 7.2 MB (7204483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1` - linux; s390x

```console
$ docker pull open-liberty@sha256:0ea7bc2273a98e724ac1e0b472fc156239360c7c74103e6e9782d3d0af54a950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301375688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bd608da050cf95acb4c722ab67f6edfbfa1124b3429053f762ecd757e90e94`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:40 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 06 Sep 2018 12:04:40 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Thu, 06 Sep 2018 12:04:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975e8aafabbf3ca59f106e9929b2f23bcf3cc72f9405ddea83c2dfb499c39d3e`  
		Last Modified: Thu, 06 Sep 2018 12:07:53 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fb056c66211198bf5844e8162c3b35b7ca5872a3d996c07159200626f699fd`  
		Last Modified: Thu, 06 Sep 2018 12:07:53 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340942a97484356d0c96d928a19aa9dd53def553a2cfbf2d53e54998b9fe48ca`  
		Last Modified: Thu, 06 Sep 2018 12:07:55 GMT  
		Size: 8.3 MB (8298927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibm`

```console
$ docker pull open-liberty@sha256:2b7ec21ef0a9bde437615966dd2f7fd300b6b106a79b6154bf46af7b80dc75fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:d06c52de726e90f3838e01928d74c9e68c88ce9ca23476ed62efb044f0582196
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307692817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d25ed2e434557bc9f96d3f1e081199726b703b3abcb481bbcfc003b41fd8c9a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:15:56 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 20 Sep 2018 22:15:57 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:16:18 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5364a136bad94a769e4cd922529b995f3a3287bc48e9af72b8a025daaf81c3`  
		Last Modified: Thu, 20 Sep 2018 22:27:02 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fc8ab79b3c268c97167120946f10f299c9def9cf053e368e0746138576d9fc`  
		Last Modified: Thu, 20 Sep 2018 22:27:02 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af149d0e76756a50eb80c7297568c0626e6c5556b744074dc05f9c9ba355f7cf`  
		Last Modified: Thu, 20 Sep 2018 22:27:04 GMT  
		Size: 8.4 MB (8439409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:6b38db3f8e3818134eb54cd5c5b5fa7154e1591f91968360843fd51974d654a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.8 MB (291767029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84a5a799fe9a2e40686086eee65e13b5c1d55147bce5b73f30eacb1f744829e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 07 Sep 2018 10:05:53 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Fri, 07 Sep 2018 10:06:01 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4592e37d6e6a97a84675eaa324d7465d7b4b69b0c0ec99028debbeaebc0b06f4`  
		Last Modified: Fri, 07 Sep 2018 10:08:21 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49be1bb9b8d3b392238fc6c1f8c92a46bc5eb53f8b676e7410d3060dc4a33b72`  
		Last Modified: Fri, 07 Sep 2018 10:08:19 GMT  
		Size: 531.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b93c31cb0f415157b1bc2efb0ecda9902b53a90a7afdbd50849a4de7d2930c`  
		Last Modified: Fri, 07 Sep 2018 10:08:21 GMT  
		Size: 8.4 MB (8398052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:a5e035458bcb35c6a1147a89ee12a44d79d5949b5beb9e95525c66ad1562666c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.5 MB (322464264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7363c0066e4c9adda1a9a159cc5bf741895d2378ad991287439afb480bd76647`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:02:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 21 Sep 2018 09:03:00 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:03:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c9caf9ba191a1c78448b3d8457803128665a7760271cac969bdeed03e3cff`  
		Last Modified: Fri, 21 Sep 2018 09:15:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a4ca13e837d920e2f64cdd01318a0f6cd1be7d0f93d4ea15e3826721c4fd51`  
		Last Modified: Fri, 21 Sep 2018 09:15:47 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a875e476de8813b6976e987aabd7216017c4640f9dbeb1e072cfb5ca87c9148f`  
		Last Modified: Fri, 21 Sep 2018 09:15:53 GMT  
		Size: 7.2 MB (7204483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:0ea7bc2273a98e724ac1e0b472fc156239360c7c74103e6e9782d3d0af54a950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301375688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bd608da050cf95acb4c722ab67f6edfbfa1124b3429053f762ecd757e90e94`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:40 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 06 Sep 2018 12:04:40 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Thu, 06 Sep 2018 12:04:48 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975e8aafabbf3ca59f106e9929b2f23bcf3cc72f9405ddea83c2dfb499c39d3e`  
		Last Modified: Thu, 06 Sep 2018 12:07:53 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40fb056c66211198bf5844e8162c3b35b7ca5872a3d996c07159200626f699fd`  
		Last Modified: Thu, 06 Sep 2018 12:07:53 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340942a97484356d0c96d928a19aa9dd53def553a2cfbf2d53e54998b9fe48ca`  
		Last Modified: Thu, 06 Sep 2018 12:07:55 GMT  
		Size: 8.3 MB (8298927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:f3999901ba0fa52164e32e0a1d7afc3d937d42cd6fa3c05bfd16401dc0482c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:1ec099e26c138ce701fbf0d3181951681cfdd102ad1f793386e27969e7fc6a7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202020164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59e6e6a2c67b04c4c46aa42d08a1b52fd068e8d935373eb27feb8bca3f660f7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:16:37 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 20 Sep 2018 22:16:38 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:16:56 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d074a1ef4137379f5c9b0169c6e558c4c9e7e3a3d04394d1c0d10eac143a6284`  
		Last Modified: Thu, 20 Sep 2018 22:27:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e586b45ed541c3dca4071b01a000d6a33607ff87a3606debf392734767d5a2a`  
		Last Modified: Thu, 20 Sep 2018 22:27:24 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b05d7672d1a3f7f3c7c7c56d7974670ba0f857e779727e15f815c00930f6fb7`  
		Last Modified: Thu, 20 Sep 2018 22:27:28 GMT  
		Size: 7.9 MB (7931196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2`

```console
$ docker pull open-liberty@sha256:66e952ee6b804273401c0bbab1463b1f7627b184bc4646b2ae75bec2d9134054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2` - linux; amd64

```console
$ docker pull open-liberty@sha256:c785b2c60c81491bff8506f4bc484bcc7a177481af41506f0f3f291c40108571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307659193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fc6fb1ac6e617bd772b8c01b02ab74a35adcf2a61b60a63b8d2ccd6a0101cc`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:15:56 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 20 Sep 2018 22:20:37 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:20:57 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5364a136bad94a769e4cd922529b995f3a3287bc48e9af72b8a025daaf81c3`  
		Last Modified: Thu, 20 Sep 2018 22:27:02 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29885701a386d13f325d8b5ed1a4d3d2020d7bdf1c4b687080118eb8691f3a8`  
		Last Modified: Thu, 20 Sep 2018 22:28:56 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e90da2f866a4c864dc9d7877234378b1d3bd112f00f694be3cba243aff42a2d`  
		Last Modified: Thu, 20 Sep 2018 22:28:57 GMT  
		Size: 8.4 MB (8405784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; 386

```console
$ docker pull open-liberty@sha256:f41f6249b984186d6dda7bc4e21cc16f4f0dd5872435b96607b605852d98d98a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.9 MB (291872908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ca744444bdbf49b08351146473905bc8d005d3d2a6113fa7d99625c13f410a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 07 Sep 2018 10:06:26 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Fri, 07 Sep 2018 10:06:34 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4592e37d6e6a97a84675eaa324d7465d7b4b69b0c0ec99028debbeaebc0b06f4`  
		Last Modified: Fri, 07 Sep 2018 10:08:21 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a1365cd7a57ac74c80b65eac528237742f0269d12e4925c263099c75ada9c`  
		Last Modified: Fri, 07 Sep 2018 10:08:48 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e8a7936f9e19cd40d161255a559ebcedfa4e7f13a582e65fef4d271712f36d`  
		Last Modified: Fri, 07 Sep 2018 10:08:50 GMT  
		Size: 8.5 MB (8503929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c298a13ab4387435eb596f63c6fed6320299cb6fe5f1bb0bdcc192028e4fceef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.5 MB (323536632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c0da254dcc87dc54d315378bf927fb18f86c732d66079576236d4741a4f4cb`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:02:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 21 Sep 2018 09:07:27 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:07:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c9caf9ba191a1c78448b3d8457803128665a7760271cac969bdeed03e3cff`  
		Last Modified: Fri, 21 Sep 2018 09:15:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c3888398be35652bf71f25db13e0c4a19aecbb965d1cf75f7b2df1669845cb`  
		Last Modified: Fri, 21 Sep 2018 09:18:10 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06bc3defbdb9bb09f7945dba6992bd32b45bfa7d05ca3f694b97634fa7f4279`  
		Last Modified: Fri, 21 Sep 2018 09:18:15 GMT  
		Size: 8.3 MB (8276851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2` - linux; s390x

```console
$ docker pull open-liberty@sha256:e915e9613ee28b02980498b605c02c8254318c027911e4b9c2b8bda817db5fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301312532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0754994448fe9afd65761b8c98ebbcea39d3c73c4ca8ac9b470bb90e1303eae2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:40 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 06 Sep 2018 12:05:18 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Thu, 06 Sep 2018 12:05:26 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975e8aafabbf3ca59f106e9929b2f23bcf3cc72f9405ddea83c2dfb499c39d3e`  
		Last Modified: Thu, 06 Sep 2018 12:07:53 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bbe62a6642e5fa9bc29ce1f623db0883ad10ebfda12cdca231eb45f953f25a`  
		Last Modified: Thu, 06 Sep 2018 12:08:29 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b382221756ba4ec4b6062f2a9b361050213682281f10f24563d154f081c08d1c`  
		Last Modified: Thu, 06 Sep 2018 12:08:33 GMT  
		Size: 8.2 MB (8235774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibm`

```console
$ docker pull open-liberty@sha256:66e952ee6b804273401c0bbab1463b1f7627b184bc4646b2ae75bec2d9134054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:springBoot2-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:c785b2c60c81491bff8506f4bc484bcc7a177481af41506f0f3f291c40108571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307659193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fc6fb1ac6e617bd772b8c01b02ab74a35adcf2a61b60a63b8d2ccd6a0101cc`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:15:56 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 20 Sep 2018 22:20:37 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:20:57 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5364a136bad94a769e4cd922529b995f3a3287bc48e9af72b8a025daaf81c3`  
		Last Modified: Thu, 20 Sep 2018 22:27:02 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29885701a386d13f325d8b5ed1a4d3d2020d7bdf1c4b687080118eb8691f3a8`  
		Last Modified: Thu, 20 Sep 2018 22:28:56 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e90da2f866a4c864dc9d7877234378b1d3bd112f00f694be3cba243aff42a2d`  
		Last Modified: Thu, 20 Sep 2018 22:28:57 GMT  
		Size: 8.4 MB (8405784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:f41f6249b984186d6dda7bc4e21cc16f4f0dd5872435b96607b605852d98d98a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.9 MB (291872908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ca744444bdbf49b08351146473905bc8d005d3d2a6113fa7d99625c13f410a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 07 Sep 2018 10:06:26 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Fri, 07 Sep 2018 10:06:34 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4592e37d6e6a97a84675eaa324d7465d7b4b69b0c0ec99028debbeaebc0b06f4`  
		Last Modified: Fri, 07 Sep 2018 10:08:21 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457a1365cd7a57ac74c80b65eac528237742f0269d12e4925c263099c75ada9c`  
		Last Modified: Fri, 07 Sep 2018 10:08:48 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e8a7936f9e19cd40d161255a559ebcedfa4e7f13a582e65fef4d271712f36d`  
		Last Modified: Fri, 07 Sep 2018 10:08:50 GMT  
		Size: 8.5 MB (8503929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c298a13ab4387435eb596f63c6fed6320299cb6fe5f1bb0bdcc192028e4fceef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.5 MB (323536632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c0da254dcc87dc54d315378bf927fb18f86c732d66079576236d4741a4f4cb`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 09:02:52 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Fri, 21 Sep 2018 09:07:27 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Fri, 21 Sep 2018 09:07:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7c9caf9ba191a1c78448b3d8457803128665a7760271cac969bdeed03e3cff`  
		Last Modified: Fri, 21 Sep 2018 09:15:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c3888398be35652bf71f25db13e0c4a19aecbb965d1cf75f7b2df1669845cb`  
		Last Modified: Fri, 21 Sep 2018 09:18:10 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06bc3defbdb9bb09f7945dba6992bd32b45bfa7d05ca3f694b97634fa7f4279`  
		Last Modified: Fri, 21 Sep 2018 09:18:15 GMT  
		Size: 8.3 MB (8276851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:springBoot2-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:e915e9613ee28b02980498b605c02c8254318c027911e4b9c2b8bda817db5fb6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301312532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0754994448fe9afd65761b8c98ebbcea39d3c73c4ca8ac9b470bb90e1303eae2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:04:40 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 06 Sep 2018 12:05:18 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Thu, 06 Sep 2018 12:05:26 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975e8aafabbf3ca59f106e9929b2f23bcf3cc72f9405ddea83c2dfb499c39d3e`  
		Last Modified: Thu, 06 Sep 2018 12:07:53 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bbe62a6642e5fa9bc29ce1f623db0883ad10ebfda12cdca231eb45f953f25a`  
		Last Modified: Thu, 06 Sep 2018 12:08:29 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b382221756ba4ec4b6062f2a9b361050213682281f10f24563d154f081c08d1c`  
		Last Modified: Thu, 06 Sep 2018 12:08:33 GMT  
		Size: 8.2 MB (8235774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:springBoot2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:8bdd7694d2b5e7b12de1966950d00d4baf02dcb676fb9d48efb46f18208457ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:2c6b015232976a7e5dd1ffd9b035e5e8e2b570ebf993d6582b6110897bac1b67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202010145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d11e830f8d3e08141f01d635b5b8b4469d8cce21853be3d19c9f4312d27bfab`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:16:37 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Thu, 20 Sep 2018 22:21:12 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot2/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:21:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d074a1ef4137379f5c9b0169c6e558c4c9e7e3a3d04394d1c0d10eac143a6284`  
		Last Modified: Thu, 20 Sep 2018 22:27:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4c29f533b168132cbbb1bdd62792be14661d9d6adfd41f377378560391c05d`  
		Last Modified: Thu, 20 Sep 2018 22:29:27 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76effc87e26b03e32917dbab415df30eb02cc387bf7ed0749cf9bc6fc8d3a436`  
		Last Modified: Thu, 20 Sep 2018 22:29:20 GMT  
		Size: 7.9 MB (7921176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7`

```console
$ docker pull open-liberty@sha256:960b1eefb5a0daf0325beb8084552c3ea7a88b97e02f5a7d753b1f91a892d67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7` - linux; amd64

```console
$ docker pull open-liberty@sha256:b145ae6b71241db255b98c36948eda5f4f9728ed9e8add1bcb6aa22449f41275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310592925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d5bbaebb79d6a7b12d8a7bfef3f0065e8d349a8555fe4b2eda26211704dbe6`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:12:03 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:12:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cedc637eb5a16a36d1bdc4c7234af87b4b99067a5618055fa6f2978bdd3ea0`  
		Last Modified: Thu, 20 Sep 2018 22:25:58 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd1ab5f5e5b358d6837b15481a5cb91443ef432036a0805ed32ab5a708c3c2b`  
		Last Modified: Thu, 20 Sep 2018 22:26:01 GMT  
		Size: 11.3 MB (11339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; 386

```console
$ docker pull open-liberty@sha256:2bc39b08d67c7cef57546bba16d20fcfe6d67ecbc9f1174f53406fba5a8ec2d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294569292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ce77b7d4e19ffeafc8e9126e972f871e6ad331dd4215966a602c247b0d9368`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:13 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 07 Sep 2018 10:05:25 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7bff137987d6776e8a713c1fb72a07ad8f208ab63c3f08bdca262e68bf65b`  
		Last Modified: Fri, 07 Sep 2018 10:07:55 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71af6a802c62a22c6b1496d2adb699a6e26aa2e9847ee15f6dd3e9bc3332a270`  
		Last Modified: Fri, 07 Sep 2018 10:07:57 GMT  
		Size: 11.2 MB (11200567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:65e79156ae0369cbc8bad05090523c3c2b5b97d5f2fed426d9b5b9ace932b1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.3 MB (326287143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1daf29adffc7634ab14fa78f3370229908f37d2055fb9b1f9b90932c13cff182`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 08:54:03 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 21 Sep 2018 08:54:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34ece62ff49c652bf94c7d9439e8b6da89c41168adb0359a69c5ba707b8dac`  
		Last Modified: Fri, 21 Sep 2018 09:13:56 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50785f1af8394372b2ef19a40a1f44be61add2be31965ea19b1c25f1149a6a`  
		Last Modified: Fri, 21 Sep 2018 09:14:04 GMT  
		Size: 11.0 MB (11027654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; s390x

```console
$ docker pull open-liberty@sha256:6a5a26d5382ce59fea6f7de019a87c5dd97b2cd838337355c056a4fdca822528
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304115836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c996e88785f8fc847380f76bb52efa4875051ecb60bb8af2c40a70cf84c52a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:03:40 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 06 Sep 2018 12:03:51 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af48a759fea27b7922819cdb312446df50dfa0bf52c72b2c2df41db4d79ebbe0`  
		Last Modified: Thu, 06 Sep 2018 12:07:17 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e58b747e8ce20fa9b34e7df9fb47fd845046912fbb29e00c13c02c8ff7fdeca`  
		Last Modified: Thu, 06 Sep 2018 12:07:20 GMT  
		Size: 11.0 MB (11039332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:960b1eefb5a0daf0325beb8084552c3ea7a88b97e02f5a7d753b1f91a892d67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:b145ae6b71241db255b98c36948eda5f4f9728ed9e8add1bcb6aa22449f41275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310592925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d5bbaebb79d6a7b12d8a7bfef3f0065e8d349a8555fe4b2eda26211704dbe6`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:10:40 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:10:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:11:00 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:01 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:11:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:12:03 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:12:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e0f2137e5e14a48f01967357804d976cc961c1f0cf41b03f62667bc1e000b9`  
		Last Modified: Thu, 20 Sep 2018 22:25:03 GMT  
		Size: 125.2 MB (125213188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da598c6fca260add6adf32fd514bf34f8ed5d952bb36158e468dd82b9c8a2d3e`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facc78ad4bccc2aa859abdda1794b00e1739b499ec2b402ba01c76ea38801482`  
		Last Modified: Thu, 20 Sep 2018 22:24:48 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cedc637eb5a16a36d1bdc4c7234af87b4b99067a5618055fa6f2978bdd3ea0`  
		Last Modified: Thu, 20 Sep 2018 22:25:58 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd1ab5f5e5b358d6837b15481a5cb91443ef432036a0805ed32ab5a708c3c2b`  
		Last Modified: Thu, 20 Sep 2018 22:26:01 GMT  
		Size: 11.3 MB (11339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:2bc39b08d67c7cef57546bba16d20fcfe6d67ecbc9f1174f53406fba5a8ec2d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294569292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ce77b7d4e19ffeafc8e9126e972f871e6ad331dd4215966a602c247b0d9368`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:04:50 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Fri, 07 Sep 2018 10:05:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:05:03 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:05:03 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:05:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 07 Sep 2018 10:05:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:05:05 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:05:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 07 Sep 2018 10:05:13 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 07 Sep 2018 10:05:25 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab985f6d7f59b6ed8810fcc40fb6031221f9f829b867b8c441473fec0bbc37d`  
		Last Modified: Fri, 07 Sep 2018 10:07:45 GMT  
		Size: 121.1 MB (121067448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff8f194431fea4caa91f6c5c0392c77ad0a92a87daf4a750d55ce816d34fe9a`  
		Last Modified: Fri, 07 Sep 2018 10:07:36 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbeec770fdbae615eff8301549ed342fbac94014a098f2929666a4fa448335c`  
		Last Modified: Fri, 07 Sep 2018 10:07:34 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7bff137987d6776e8a713c1fb72a07ad8f208ab63c3f08bdca262e68bf65b`  
		Last Modified: Fri, 07 Sep 2018 10:07:55 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71af6a802c62a22c6b1496d2adb699a6e26aa2e9847ee15f6dd3e9bc3332a270`  
		Last Modified: Fri, 07 Sep 2018 10:07:57 GMT  
		Size: 11.2 MB (11200567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:65e79156ae0369cbc8bad05090523c3c2b5b97d5f2fed426d9b5b9ace932b1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.3 MB (326287143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1daf29adffc7634ab14fa78f3370229908f37d2055fb9b1f9b90932c13cff182`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:52:02 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 21 Sep 2018 08:52:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:52:53 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:53:04 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:53:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Sep 2018 08:53:18 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:53:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Sep 2018 08:54:03 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 21 Sep 2018 08:54:33 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd67fe48459ef27bbc4a082cd4ba6dd8b7cb377dc9fbd0c290339fa94f247d2`  
		Last Modified: Fri, 21 Sep 2018 09:13:00 GMT  
		Size: 125.2 MB (125213155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d701e9a2b722ac2e1a58d9aef97b16ace532da18c9da0993f33fb2a64ee6f`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10666741e1fca4f54f2ab40f0b772bfcf3ef47761c5e267362b063497ffd69aa`  
		Last Modified: Fri, 21 Sep 2018 09:12:20 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34ece62ff49c652bf94c7d9439e8b6da89c41168adb0359a69c5ba707b8dac`  
		Last Modified: Fri, 21 Sep 2018 09:13:56 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a50785f1af8394372b2ef19a40a1f44be61add2be31965ea19b1c25f1149a6a`  
		Last Modified: Fri, 21 Sep 2018 09:14:04 GMT  
		Size: 11.0 MB (11027654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:6a5a26d5382ce59fea6f7de019a87c5dd97b2cd838337355c056a4fdca822528
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304115836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c996e88785f8fc847380f76bb52efa4875051ecb60bb8af2c40a70cf84c52a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:03:14 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Thu, 06 Sep 2018 12:03:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:03:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:03:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:03:25 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 06 Sep 2018 12:03:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:03:26 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:03:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 06 Sep 2018 12:03:40 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 06 Sep 2018 12:03:51 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3be1fc664458495b1068face1ae9beb82d4fccd423fa159d89582c6f5ee448`  
		Last Modified: Thu, 06 Sep 2018 12:07:01 GMT  
		Size: 121.1 MB (121067373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a751d64c85add644322f747088ea464f476dba50f6676b9ce62375e39c1ca4`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9425f90bafbdf52b84b87682e666171565aeabbff009e0aeddc3c0fe8c21af3`  
		Last Modified: Thu, 06 Sep 2018 12:06:52 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af48a759fea27b7922819cdb312446df50dfa0bf52c72b2c2df41db4d79ebbe0`  
		Last Modified: Thu, 06 Sep 2018 12:07:17 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e58b747e8ce20fa9b34e7df9fb47fd845046912fbb29e00c13c02c8ff7fdeca`  
		Last Modified: Thu, 06 Sep 2018 12:07:20 GMT  
		Size: 11.0 MB (11039332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:a9313d8a542e420d33199e0586cc2c363252aa87fbefe81c5f21184e7e065a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:95a17b521d1bf02511b1e82b568e415a01a405110ec866b31ea649c0bd33be93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204941858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ed2b783009d44f4e34c90fb9f5311a7aec8651e33f059c02c3d8385b2cfa01`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:48:46 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 12 Sep 2018 03:48:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:11:23 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Thu, 20 Sep 2018 22:11:34 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:11:35 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:11:36 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:11:39 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Thu, 20 Sep 2018 22:11:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:11:39 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:11:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Sep 2018 22:12:51 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Thu, 20 Sep 2018 22:13:21 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62938e1589d5284cc0c21276a251bbb84920bae9871be6fab89dbccd4f456a7`  
		Last Modified: Wed, 12 Sep 2018 03:51:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34002c50f7b605035cd7296ae7934e276844a56946e35bec8a99fde7b2cc0faf`  
		Last Modified: Thu, 20 Sep 2018 22:25:48 GMT  
		Size: 125.0 MB (124992948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e552064a8cc4c4bfaba21d9ff1adea51866bec23cb69eb6d834cc20d0b7350`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744f3f7299ef28b23f4f30ef5f5d3ac3d075caa0b13698dd28449184f9a1f46`  
		Last Modified: Thu, 20 Sep 2018 22:25:38 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015be8a5e03e2c2dffb47d373e39803dc90cfa825ae18867ef1d9dc54dd6975f`  
		Last Modified: Thu, 20 Sep 2018 22:26:16 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6699beea955956633379b75d3835163b75a24ea5681bebd1a860a81717ef83`  
		Last Modified: Thu, 20 Sep 2018 22:26:19 GMT  
		Size: 10.9 MB (10853149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8`

```console
$ docker pull open-liberty@sha256:c8c2ace119183ef71ce00ab7c1fde4d021e6bf3ca62cf3fc1e550d8f77fdc94a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8` - linux; amd64

```console
$ docker pull open-liberty@sha256:6aa939d40e53253bb24d56a397c187b1e75415822ee6328d3902bd6121c684bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268302098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5c11a592b0ff104794cb50d4d72e2d32fbf0368c719ed65e70119d3cf8a1ec`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:04:56 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3aa1153e272a94cd0f1271d1a20e5a6f95df2cd5
# Thu, 20 Sep 2018 22:05:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:05:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:05:18 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:05:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Thu, 20 Sep 2018 22:05:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:05:45 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:05:45 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c07bdd463f7a32393883ea7ac2e129b7eb4e4c3df4d03f6df79324eaf19b21`  
		Last Modified: Thu, 20 Sep 2018 22:22:11 GMT  
		Size: 82.9 MB (82877377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74017f006d5ef5a2a5229762284539edc7f2a026b3311d2b76cf645f6acab8d8`  
		Last Modified: Thu, 20 Sep 2018 22:22:01 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940b0a0cc2a2668be9b5400b669611d8fa463ed8d18f13c187966b37558241d4`  
		Last Modified: Thu, 20 Sep 2018 22:22:05 GMT  
		Size: 11.4 MB (11386126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; 386

```console
$ docker pull open-liberty@sha256:00de0276f5bc845e593862a4e60500d882597a5613801864966ab0d1b71b51aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249395706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8be6bcf50773c9d820f45393a293232c97b4cb5dfa34913898fdcee1428322`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:03:36 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=70d21c807b6625678c2073b961b7b1cefe3d6a87
# Fri, 07 Sep 2018 10:03:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:03:47 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:03:48 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:04:00 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Fri, 07 Sep 2018 10:04:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:04:01 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:04:01 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa0cd68618338a50fc109970e313bc3bf5cee654f5be65e10b6353454e4704`  
		Last Modified: Fri, 07 Sep 2018 10:06:55 GMT  
		Size: 75.8 MB (75847862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b28ae26ce7f276af6bd0993ce3c307fa52d16e59004e1b8dc15a757af8afe`  
		Last Modified: Fri, 07 Sep 2018 10:06:47 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723324a36a00ba469f3fc7a4642923edcc2f25bcb98461213e9f36eea125b5a6`  
		Last Modified: Fri, 07 Sep 2018 10:06:50 GMT  
		Size: 11.2 MB (11247905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d35a05358a5e4cd72a283742a34aeae6852327ab5efa3f26e9f6fcf9aa92c69a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284155521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3fb590354030219c8318e08b527339ca24db70a14bedf13fcc9873cd5e81d8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:48:33 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3aa1153e272a94cd0f1271d1a20e5a6f95df2cd5
# Fri, 21 Sep 2018 08:49:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:49:04 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:49:08 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:49:50 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Fri, 21 Sep 2018 08:49:53 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:49:56 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:49:58 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b20ca0cb2e279c8a6dc683ed608412f133e549ef96c837c2863db8aa2bbaa`  
		Last Modified: Fri, 21 Sep 2018 09:09:38 GMT  
		Size: 82.9 MB (82877239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a46dac02fd1ee2ec31817ea0fc74a6f9ad8cc38b0c1b120de03e2f0134670`  
		Last Modified: Fri, 21 Sep 2018 09:08:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c88d2b2cd29a69f1e1f8132d899521ce2da300d70c6669c959f81b36cca3858`  
		Last Modified: Fri, 21 Sep 2018 09:08:46 GMT  
		Size: 11.2 MB (11233358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8` - linux; s390x

```console
$ docker pull open-liberty@sha256:eedb6dbbdc6729f7c54cbac474384cea7a37e283883ed5dcdc245feed83129f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259166349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebeae13f35a6618aa891bc9913b26fe0f339f928868275c4e1cc66ec0450b2b8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:01:47 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=70d21c807b6625678c2073b961b7b1cefe3d6a87
# Thu, 06 Sep 2018 12:02:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:02:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:02:05 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:02:20 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Thu, 06 Sep 2018 12:02:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:02:20 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:02:20 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7ddbb25eaac4f6b4956bf5eb6d0d92fc82053676ba903e865f91101fe5de34`  
		Last Modified: Thu, 06 Sep 2018 12:05:48 GMT  
		Size: 75.8 MB (75847733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594719a9f5ab1f34e20bae9c29066df254ecb0930d9da7bffcd8a1c57c370967`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2777e744d8b26809dae47fa5f94eb67fa582da612edfdba04d14b1e211b6563d`  
		Last Modified: Thu, 06 Sep 2018 12:05:44 GMT  
		Size: 11.3 MB (11310827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibm`

```console
$ docker pull open-liberty@sha256:c8c2ace119183ef71ce00ab7c1fde4d021e6bf3ca62cf3fc1e550d8f77fdc94a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:6aa939d40e53253bb24d56a397c187b1e75415822ee6328d3902bd6121c684bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.3 MB (268302098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5c11a592b0ff104794cb50d4d72e2d32fbf0368c719ed65e70119d3cf8a1ec`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:56:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 22:56:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 05 Sep 2018 22:56:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 01:03:13 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 01:03:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:04:56 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3aa1153e272a94cd0f1271d1a20e5a6f95df2cd5
# Thu, 20 Sep 2018 22:05:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Sep 2018 22:05:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:05:18 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 20 Sep 2018 22:05:44 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Thu, 20 Sep 2018 22:05:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:05:45 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:05:45 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599b1f2c7c6855a29d1446ac20e9922f167f5c6ff83ce7af6a4c501ea107f27b`  
		Last Modified: Wed, 05 Sep 2018 22:58:51 GMT  
		Size: 127.8 MB (127762325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef1bb997c86795c8c50fc710032a61253400b749aa62c9d099dceee3d444efa`  
		Last Modified: Thu, 06 Sep 2018 01:09:14 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c07bdd463f7a32393883ea7ac2e129b7eb4e4c3df4d03f6df79324eaf19b21`  
		Last Modified: Thu, 20 Sep 2018 22:22:11 GMT  
		Size: 82.9 MB (82877377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74017f006d5ef5a2a5229762284539edc7f2a026b3311d2b76cf645f6acab8d8`  
		Last Modified: Thu, 20 Sep 2018 22:22:01 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:940b0a0cc2a2668be9b5400b669611d8fa463ed8d18f13c187966b37558241d4`  
		Last Modified: Thu, 20 Sep 2018 22:22:05 GMT  
		Size: 11.4 MB (11386126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:00de0276f5bc845e593862a4e60500d882597a5613801864966ab0d1b71b51aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249395706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8be6bcf50773c9d820f45393a293232c97b4cb5dfa34913898fdcee1428322`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Fri, 07 Sep 2018 09:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 07 Sep 2018 09:21:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 07 Sep 2018 10:03:36 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 07 Sep 2018 10:03:36 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 07 Sep 2018 10:03:36 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=70d21c807b6625678c2073b961b7b1cefe3d6a87
# Fri, 07 Sep 2018 10:03:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 10:03:47 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 07 Sep 2018 10:03:48 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 07 Sep 2018 10:04:00 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Fri, 07 Sep 2018 10:04:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 07 Sep 2018 10:04:01 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 07 Sep 2018 10:04:01 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff1b35e0653aa6532d3dcde1e114ccdf60757fa184fe77ff8e486ceac06ecde`  
		Last Modified: Fri, 07 Sep 2018 09:23:47 GMT  
		Size: 115.9 MB (115900989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b887e7442e34f28afe200dd4c84345768ef0d8ec34b8aa51d2af80b9ee3dfe1c`  
		Last Modified: Fri, 07 Sep 2018 10:06:46 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa0cd68618338a50fc109970e313bc3bf5cee654f5be65e10b6353454e4704`  
		Last Modified: Fri, 07 Sep 2018 10:06:55 GMT  
		Size: 75.8 MB (75847862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b28ae26ce7f276af6bd0993ce3c307fa52d16e59004e1b8dc15a757af8afe`  
		Last Modified: Fri, 07 Sep 2018 10:06:47 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723324a36a00ba469f3fc7a4642923edcc2f25bcb98461213e9f36eea125b5a6`  
		Last Modified: Fri, 07 Sep 2018 10:06:50 GMT  
		Size: 11.2 MB (11247905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d35a05358a5e4cd72a283742a34aeae6852327ab5efa3f26e9f6fcf9aa92c69a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284155521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3fb590354030219c8318e08b527339ca24db70a14bedf13fcc9873cd5e81d8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:17:05 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 08:19:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 08:19:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 08:47:15 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 08:47:17 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 21 Sep 2018 08:48:33 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3aa1153e272a94cd0f1271d1a20e5a6f95df2cd5
# Fri, 21 Sep 2018 08:49:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 08:49:04 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Sep 2018 08:49:08 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 21 Sep 2018 08:49:50 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Fri, 21 Sep 2018 08:49:53 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 21 Sep 2018 08:49:56 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Sep 2018 08:49:58 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c452ef847e50649676cbb42cab2be6a986307f4e17b427275fb273dcf29fc6a0`  
		Last Modified: Thu, 06 Sep 2018 08:25:23 GMT  
		Size: 141.6 MB (141565620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9bf2d284826515ea88d6962307eeec7dce7474df9ea882437633b92b649055`  
		Last Modified: Thu, 06 Sep 2018 08:53:10 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b20ca0cb2e279c8a6dc683ed608412f133e549ef96c837c2863db8aa2bbaa`  
		Last Modified: Fri, 21 Sep 2018 09:09:38 GMT  
		Size: 82.9 MB (82877239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a46dac02fd1ee2ec31817ea0fc74a6f9ad8cc38b0c1b120de03e2f0134670`  
		Last Modified: Fri, 21 Sep 2018 09:08:37 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c88d2b2cd29a69f1e1f8132d899521ce2da300d70c6669c959f81b36cca3858`  
		Last Modified: Fri, 21 Sep 2018 09:08:46 GMT  
		Size: 11.2 MB (11233358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:eedb6dbbdc6729f7c54cbac474384cea7a37e283883ed5dcdc245feed83129f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259166349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebeae13f35a6618aa891bc9913b26fe0f339f928868275c4e1cc66ec0450b2b8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:01:47 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Thu, 06 Sep 2018 12:01:47 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 06 Sep 2018 12:01:47 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=70d21c807b6625678c2073b961b7b1cefe3d6a87
# Thu, 06 Sep 2018 12:02:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:02:05 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 06 Sep 2018 12:02:05 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Thu, 06 Sep 2018 12:02:20 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Thu, 06 Sep 2018 12:02:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 06 Sep 2018 12:02:20 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 06 Sep 2018 12:02:20 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340d8cac164118b18b749d31997f8c5d5b48b5bb7354edf97839fb29d54836d7`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7ddbb25eaac4f6b4956bf5eb6d0d92fc82053676ba903e865f91101fe5de34`  
		Last Modified: Thu, 06 Sep 2018 12:05:48 GMT  
		Size: 75.8 MB (75847733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594719a9f5ab1f34e20bae9c29066df254ecb0930d9da7bffcd8a1c57c370967`  
		Last Modified: Thu, 06 Sep 2018 12:05:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2777e744d8b26809dae47fa5f94eb67fa582da612edfdba04d14b1e211b6563d`  
		Last Modified: Thu, 06 Sep 2018 12:05:44 GMT  
		Size: 11.3 MB (11310827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:1b95f83737ad52cab49cee1ab07ae5e034172975edf3025a71db749bc76a51ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:6505ce2512e0095a9d2ee34d78551aa29fcbe790b4ba2f752c5f8a825636d483
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162662219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75238c66525ae59a980da7f8afbb3ecd213bacf50facc20b7fe09370ca3d9175`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:47:01 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:06:24 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3aa1153e272a94cd0f1271d1a20e5a6f95df2cd5
# Thu, 20 Sep 2018 22:06:32 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:06:32 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Thu, 20 Sep 2018 22:06:33 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:07:04 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Thu, 20 Sep 2018 22:07:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:07:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:07:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c16c641d08dd37bffdac1f257bf3edcd97b5fb7df1ccb12971afbb132d08ceb`  
		Last Modified: Wed, 12 Sep 2018 03:51:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cbbb19de06d9d17540bfc2914a7c72b60b858956a1dc4ca9b05909d7b258d8`  
		Last Modified: Thu, 20 Sep 2018 22:22:49 GMT  
		Size: 82.7 MB (82656630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c145d39e7cbd65485bf1bb139639e3e9e5e630ea4bcd43b177ee9d218cf4c16a`  
		Last Modified: Thu, 20 Sep 2018 22:22:39 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d001db4678a409b758d974c863a039edc30ac9cc4dfddf3fb443d0c9becebbd`  
		Last Modified: Thu, 20 Sep 2018 22:22:43 GMT  
		Size: 10.9 MB (10911082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
