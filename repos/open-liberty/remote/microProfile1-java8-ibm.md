## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:0e714eaa9209482ce9c5ac4736d756a4017922dc56b3833ce8a7afac406c1810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:1865688aff5e523dd64e12b285d3c4448e51262697e4a7ea0467116403c73496
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.4 MB (306379287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8932be8515f9ffa2325c38e659d677b0e62c6ad2d00f4f278abdb01357c2ba21`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 10:09:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 10:09:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 10:09:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 17 Jul 2018 10:10:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 17 Jul 2018 10:10:36 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 17 Jul 2018 21:19:56 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 17 Jul 2018 21:20:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:20:04 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Tue, 17 Jul 2018 21:20:12 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 17 Jul 2018 21:20:12 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Tue, 17 Jul 2018 21:20:13 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Tue, 17 Jul 2018 21:20:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 17 Jul 2018 21:20:16 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Tue, 17 Jul 2018 21:20:16 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 21:20:16 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 17 Jul 2018 21:20:16 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 21:23:19 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Tue, 17 Jul 2018 21:23:35 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f80c815a4a84794e1af52dfd44237792432ab2e82e24c91730718b0c470c2f`  
		Last Modified: Tue, 17 Jul 2018 10:15:54 GMT  
		Size: 3.0 MB (3020586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff3b2afd78dd24c48d243832a7596c05c06b126954bd29483ff11a695a634425`  
		Last Modified: Tue, 17 Jul 2018 10:16:16 GMT  
		Size: 127.2 MB (127203967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74788f12996fff83fc6773be5a46aa856196b1b27bbecc4539474bd262b9f20`  
		Last Modified: Tue, 17 Jul 2018 21:24:25 GMT  
		Size: 421.9 KB (421885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2017509bdcd80726543f04a436bc6ef0ea8a5fae541d2ff428c1536ec82d4dd`  
		Last Modified: Tue, 17 Jul 2018 21:24:41 GMT  
		Size: 120.8 MB (120846645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0c5be4634992ac1744b52f4f758d4fd43667c7b9217d3e29ceb29c71abfe0e`  
		Last Modified: Tue, 17 Jul 2018 21:24:24 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279faf26d7bc6f3b75943e61d5cdea5c27555bcf357c0159b724cf7ab4226403`  
		Last Modified: Tue, 17 Jul 2018 21:24:25 GMT  
		Size: 905.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b6e83232f304c841e82fa50eef0491e9af6353f045c0e485bec2b8998ffae6`  
		Last Modified: Tue, 17 Jul 2018 21:24:24 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a52fffab720bc0b5cca7cff56e21be09a5b6fa0705c65e63160f97788ed6499`  
		Last Modified: Tue, 17 Jul 2018 21:28:57 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ab79e2e5dde6e2b3cb2a6f7a6ba6cf4f19b8ce74299e998c3e0d99b2dd8f5c`  
		Last Modified: Tue, 17 Jul 2018 21:29:00 GMT  
		Size: 11.7 MB (11691375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:a4f1c36711992cfbb7de569681b2b186f66f13e2e371dd18e462d99d55c887f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294781582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1f5332952a6b2e58c2c8da18c45d24e7e4d23425c45d24100cd3379c4aec99`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 06 Jun 2018 10:49:28 GMT
ADD file:5fcd9114e9ee68bd1e50ceb66e4f5f980eaa3eec302e20495f7e78cf82c33909 in / 
# Wed, 06 Jun 2018 10:49:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 10:49:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:49:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 10:49:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 10:49:31 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 11:08:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 06 Jun 2018 11:08:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 10:39:00 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 10:39:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 10:39:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 11:22:49 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 03 Jul 2018 11:22:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 10:43:56 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Sat, 07 Jul 2018 10:44:16 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 07 Jul 2018 10:44:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 07 Jul 2018 10:44:17 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 07 Jul 2018 10:44:20 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 07 Jul 2018 10:44:20 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 07 Jul 2018 10:44:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 07 Jul 2018 10:44:20 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 07 Jul 2018 10:44:21 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 07 Jul 2018 10:46:41 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 07 Jul 2018 10:46:55 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:79d589f7689e638b114343a2ae1ce600ef504a48734a9c6f8c4b6d1f18f7d167`  
		Last Modified: Mon, 28 May 2018 14:58:36 GMT  
		Size: 43.4 MB (43411111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5514017f1ff3f380c70d58055974255b4dc45dfcf0462c6241a822b3f30dda61`  
		Last Modified: Wed, 06 Jun 2018 10:52:35 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114f6f6257d342c755f8ed1778e8a238326f56fa7158c55e58df3528790073a6`  
		Last Modified: Wed, 06 Jun 2018 10:52:35 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2c51558aba4c0fe66573d4f86d81d667f74a18cf226540428043bd1b5bc3a7`  
		Last Modified: Wed, 06 Jun 2018 10:52:36 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a7795c01c781d81d64ad8b61d8463d3dd1aee71b5d937685640a819f16f9`  
		Last Modified: Wed, 06 Jun 2018 10:52:36 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516fb90fa6839f4e09fadb7385fc52fa80e8b66e3e934db573f2908774ecf3eb`  
		Last Modified: Wed, 06 Jun 2018 11:21:35 GMT  
		Size: 2.9 MB (2876155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b90dfa341e241deacf9e7f089be049a393a9109a3459ebc3d87697d276df870`  
		Last Modified: Tue, 03 Jul 2018 10:43:08 GMT  
		Size: 115.5 MB (115492527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2273952d1e5c041ee47bb50896058ff3c8a20b85d8ed161cb1b9a95bb010c96b`  
		Last Modified: Tue, 03 Jul 2018 11:25:52 GMT  
		Size: 421.1 KB (421121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241efd284c1cc1e7899d532f19fb1747035ec6c57091594e99154c479d900e63`  
		Last Modified: Sat, 07 Jul 2018 10:47:21 GMT  
		Size: 120.8 MB (120846661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a0f96c1e78edfa706f142447326960ce46cd2f2b75c1c3b341cc2ee769cac5`  
		Last Modified: Sat, 07 Jul 2018 10:47:11 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcc160e7e06046b2a3f3e05332e973dd959569910d8090be15b952f27242c28`  
		Last Modified: Sat, 07 Jul 2018 10:47:11 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afd4f549417621afa406ecead30a26497331b60635da5b23b5ec4148657bdb6`  
		Last Modified: Sat, 07 Jul 2018 10:47:11 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8210a384448ce67752e23ebe2ecbe7a687700e28d5da0fb88e6f5c49bd7875c7`  
		Last Modified: Sat, 07 Jul 2018 10:50:30 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e914692abf18c69c13c104b83e3c918155e642b27b28370a008ed4121c8f434b`  
		Last Modified: Sat, 07 Jul 2018 10:50:35 GMT  
		Size: 11.7 MB (11729284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b5e474585b4ae1b48b6cdb66ba40059ad558833d557158a52c27ac8769838d4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321972119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be780cb6878d269d5c430b47176b420b10221fd6f9dde54f2ac1b50a046266f2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 06 Jun 2018 09:07:11 GMT
ADD file:8af2c8e44e6551250e52c9762223a27048941310fa5bae9ddd98b58a4417817a in / 
# Wed, 06 Jun 2018 09:07:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:07:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:07:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:07:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:07:21 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 09:26:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 06 Jun 2018 09:27:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 08:17:53 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 08:19:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 08:20:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 09:44:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 03 Jul 2018 09:45:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 08:35:03 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Sat, 07 Jul 2018 08:35:16 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 07 Jul 2018 08:35:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 07 Jul 2018 08:35:31 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 07 Jul 2018 08:35:47 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 07 Jul 2018 08:35:49 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 07 Jul 2018 08:35:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 07 Jul 2018 08:35:50 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 07 Jul 2018 08:35:51 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 07 Jul 2018 08:39:46 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 07 Jul 2018 08:40:27 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:31f6c753a1dca7ffb3f43455eaafa558b80765437780f4ac50600bba9a8bbaa4`  
		Last Modified: Wed, 06 Jun 2018 09:10:59 GMT  
		Size: 45.5 MB (45495870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6a32b6c3f99165cf3f39cf486ccf3ad3715e9c0a13403ce90e2672fd137ac1`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cefff450e56b9c43ff9d2d2e045c5868726edb7580173179bcb28ce7ef6d5546`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9069a22e2dae36ceecfc882eafcbabc61b3aa82cb5dac218f7adf79cf8071b92`  
		Last Modified: Wed, 06 Jun 2018 09:10:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0815fa4493554cefa3b1b7076a5b19470d1814c9b4869ce5bd4640c5eb47f784`  
		Last Modified: Wed, 06 Jun 2018 09:10:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e6aadf61e5bee5e2d7bc77d512a5f0c9ede55d04371a9287d82bf2d050293a`  
		Last Modified: Wed, 06 Jun 2018 09:37:27 GMT  
		Size: 2.9 MB (2880213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3baefa4bae398c5329282a79783fe4ac0890b6944c63141a6f99eaaab75bd8`  
		Last Modified: Tue, 03 Jul 2018 08:25:58 GMT  
		Size: 140.8 MB (140788849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd0535e4a3cac97e9a4fb2fc985ea56689b109ceb352d4367d020d9b8e1f93`  
		Last Modified: Tue, 03 Jul 2018 09:47:31 GMT  
		Size: 453.1 KB (453059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e731df6c496baa60373a9ab4238dcaaa5b14127941deda1fccff174f7de517`  
		Last Modified: Sat, 07 Jul 2018 08:41:07 GMT  
		Size: 120.8 MB (120846625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4336d66ba76ba9e29a1f68c091b1261049317d033fedfcf90aa5eb2d4f37c753`  
		Last Modified: Sat, 07 Jul 2018 08:40:49 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193e823fcdf33a58c7fafbf39b987eeadaec3b68d7310fc57a2e16e45931fdd3`  
		Last Modified: Sat, 07 Jul 2018 08:40:49 GMT  
		Size: 958.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca529d8a4250e560dbd57bac4ad77b0237fee513fcaa0450205efd495983f7d`  
		Last Modified: Sat, 07 Jul 2018 08:40:49 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3a1abcd012055b14b035440a80c63f8e0c4d154d12977be0ec26c0e17b5d8`  
		Last Modified: Sat, 07 Jul 2018 08:43:53 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4306ad3ad0e19e977cae52e23e4782bb9b62fd78c97caa2213dcef8dcc00b0`  
		Last Modified: Sat, 07 Jul 2018 08:43:57 GMT  
		Size: 11.5 MB (11502585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:d84f232d7ab0859337f1cfa2ea428467f1756b1f1856a51516f9fbd412df5f50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.6 MB (304621748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0399ed47233f1031b67a31c570d8cd2ea24ea4464518971d02674eaf77a17376`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Jul 2018 13:08:11 GMT
ADD file:07dedba4c6a01924ec3db2b2d934408446e447fac32ef47751b6aeccb614c28c in / 
# Tue, 17 Jul 2018 13:08:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:08:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:08:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:08:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:08:18 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 15:40:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 17 Jul 2018 15:40:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:40:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 17 Jul 2018 15:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 17 Jul 2018 15:41:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 17 Jul 2018 19:44:01 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 17 Jul 2018 19:44:07 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:44:08 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=4170e609e1e4189e75a57bcc0e65a972e9c9ef6e
# Tue, 17 Jul 2018 19:44:13 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 17 Jul 2018 19:44:13 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Tue, 17 Jul 2018 19:44:14 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Tue, 17 Jul 2018 19:44:16 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 17 Jul 2018 19:44:16 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Tue, 17 Jul 2018 19:44:16 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:44:16 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 17 Jul 2018 19:44:16 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 19:45:58 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Tue, 17 Jul 2018 19:46:08 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3e3f5d0b6b7c743d40e4e5753efb45ff829b5a6ad6d7ce0404f81531669c03f9`  
		Last Modified: Mon, 09 Jul 2018 15:08:18 GMT  
		Size: 42.2 MB (42201732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad9d15e38aaedea71b29ad60c567b9871ff2b1607ffe539457d6c7aeaaa2af0`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad15e34347b1ca8f152c86fa24a23431273719fd49d5367e054ca571e4751711`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587a1d0f8e483f4d94ca77722a8cd76d7566716ebf4129c3e629ab9b0833b03e`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79a974346c09d126adc02c759449bf3ed2b3c1a4b0503fceaa48a6021c1634d`  
		Last Modified: Tue, 17 Jul 2018 13:09:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0d089c9ff9491e8c72d959b8bf3456e2ae3578369e3c13c297617508b44cd1`  
		Last Modified: Tue, 17 Jul 2018 15:43:05 GMT  
		Size: 2.8 MB (2764958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db4af6496593a0aeeec7360fa41abc7a0fe5c927ac4d43b2882d12f4caeed26`  
		Last Modified: Tue, 17 Jul 2018 15:43:18 GMT  
		Size: 126.7 MB (126682736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a74099af9db91533454300284a2e33f6a7cd168202310b368efc987979bce00`  
		Last Modified: Tue, 17 Jul 2018 19:46:21 GMT  
		Size: 427.5 KB (427512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39108d65d2b9948688befa60d4aaa3c1521a3147dae8287458e25f779d6591f`  
		Last Modified: Tue, 17 Jul 2018 19:46:52 GMT  
		Size: 120.8 MB (120846648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70920c63deca5ce1a6ff19a066c08e49172d026252a066eea0c21265ffe9609`  
		Last Modified: Tue, 17 Jul 2018 19:46:21 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb027f229a59ae6786c07da3399e6f1372b82103820ae4cf9b914b97a9a7565d`  
		Last Modified: Tue, 17 Jul 2018 19:46:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b035dbc78c3599f9c79f3efef05c7f9078d5c06e3e0f33e72e996c762069c0`  
		Last Modified: Tue, 17 Jul 2018 19:46:21 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39062a847d1fca071bbc84724f223db475ba1f8e8a8727157533669abd6cc226`  
		Last Modified: Tue, 17 Jul 2018 19:48:06 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4f35d5d03267f8cdadc009415af46b470f6a4a6a04014b9e5dbd4e5071c132`  
		Last Modified: Tue, 17 Jul 2018 19:48:08 GMT  
		Size: 11.7 MB (11693491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
