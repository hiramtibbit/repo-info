## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:e5f9bfc6750c04ee471d3ae16f0e6c3a0877f806f9b2c69605916412ea640b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:d2a1544cffb00be253ebdc0809aaf2acb5b542bb86694fdeb9b91220af585241
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269661699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d4ff03841990f48dd8d342f660b753d8a413b4d65f8b2df68308b83de1d0fa4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:49:37 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 05 Jun 2018 21:49:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:49:50 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Tue, 05 Jun 2018 21:53:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 05 Jun 2018 21:53:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 05 Jun 2018 23:27:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 05 Jun 2018 23:27:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:27:21 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Tue, 05 Jun 2018 23:27:26 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 05 Jun 2018 23:27:26 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Tue, 05 Jun 2018 23:27:27 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Tue, 05 Jun 2018 23:27:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 05 Jun 2018 23:27:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Tue, 05 Jun 2018 23:27:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 05 Jun 2018 23:27:29 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 05 Jun 2018 23:27:29 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba431a954255d3b811c3545b7ca473cfe68d79ed4d0205cc31fdb571092e070`  
		Last Modified: Tue, 05 Jun 2018 22:15:34 GMT  
		Size: 3.0 MB (3020314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ee419d20fa7fda1e76b5a76eb81daa13d878eb73ace76c69125546dcb7be2`  
		Last Modified: Tue, 05 Jun 2018 22:16:07 GMT  
		Size: 127.2 MB (127179667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4324f1ada58d98110f34fe41155f28e84cba076c6f68cdcec22cb144e23d28`  
		Last Modified: Tue, 05 Jun 2018 23:29:59 GMT  
		Size: 421.8 KB (421771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7611d892f3b665b2a52e582475f43b21087b6f8aa0bf2ad937e63de142c542c`  
		Last Modified: Tue, 05 Jun 2018 23:30:05 GMT  
		Size: 95.9 MB (95913290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b2df9b0ed5b4bac74598fb8230e4472ea45cb66a008f4bac9cc0ce02206707`  
		Last Modified: Tue, 05 Jun 2018 23:29:59 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2893ebd773384ab0dda647f00e40948423d67ede324eb554179e7b84fdba3f2c`  
		Last Modified: Tue, 05 Jun 2018 23:29:59 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a637a18e66c8a7a62c03913e73441a8aad385e4cf8556f17686d1e6650f65877`  
		Last Modified: Tue, 05 Jun 2018 23:29:59 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:7f4e6db15d0fd0c8cbb19bbcb1948166d23f3f0f549b7466cf67064ab51ccc3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258131100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7675ca6696ce397a85dd64a1bdebaf43bc4fe65bba503671737ba5ea874aa01`
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
# Wed, 06 Jun 2018 11:08:56 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Wed, 06 Jun 2018 11:12:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 06 Jun 2018 11:12:53 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 06 Jun 2018 11:42:48 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 06 Jun 2018 11:42:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:43:02 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Wed, 06 Jun 2018 11:43:19 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 06 Jun 2018 11:43:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 06 Jun 2018 11:43:20 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 06 Jun 2018 11:43:21 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 06 Jun 2018 11:43:21 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 06 Jun 2018 11:43:21 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 06 Jun 2018 11:43:22 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 06 Jun 2018 11:43:22 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a84e8f6077728cb24ed21954c6d6a2786bcfdeedf640cf321ee5be78c57480f5`  
		Last Modified: Wed, 06 Jun 2018 11:22:00 GMT  
		Size: 115.5 MB (115505326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd60740f8b719ffc78cfe85046c9507a0740d3f75828d7062f73d850684f1252`  
		Last Modified: Wed, 06 Jun 2018 11:44:56 GMT  
		Size: 421.1 KB (421082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4192717d61e855d8ae92c3371f2d644a4c9c6c90d524b8aae3146d633d921f4d`  
		Last Modified: Wed, 06 Jun 2018 11:45:25 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f5db0d0c067a3743aa9c2ff5cdb015c7869a2a4ce4d289bc859c7e0906d46f`  
		Last Modified: Wed, 06 Jun 2018 11:44:56 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66137c075b8caad1441404b38b1da17b601d8e63fdff31d250c8e95ab5fd0f67`  
		Last Modified: Wed, 06 Jun 2018 11:44:57 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742f2f0bc5ac993ebc05978c83925a947b1b9d54c44a7c5c5c3dbfe83ac924fb`  
		Last Modified: Wed, 06 Jun 2018 11:44:57 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:914311aed9bb21cbfdc1956fd6cbcf4f722acaee690311e0f0ef81891c23f528
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.4 MB (285393736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db8690d5414b474f98bf453ec84e1674b84aa2d29cd2462aecbb201a43a96ea`
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
# Wed, 06 Jun 2018 09:27:55 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Wed, 06 Jun 2018 09:31:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 06 Jun 2018 09:31:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 06 Jun 2018 10:21:25 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 06 Jun 2018 10:21:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:21:46 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Wed, 06 Jun 2018 10:21:53 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 06 Jun 2018 10:21:54 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 06 Jun 2018 10:21:56 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 06 Jun 2018 10:22:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 06 Jun 2018 10:22:06 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 06 Jun 2018 10:22:17 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 06 Jun 2018 10:22:18 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 06 Jun 2018 10:22:18 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:6d75f12d7cc60a58615c50e1aa733c9d302dab111a1cc0a3fb6e50b75b368209`  
		Last Modified: Wed, 06 Jun 2018 09:37:57 GMT  
		Size: 140.6 MB (140647082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0416593a3aa96d7175bc36005ea41b3a785c2534eb2e23c652066cf9e8e205dd`  
		Last Modified: Wed, 06 Jun 2018 10:25:14 GMT  
		Size: 453.0 KB (453032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd83ee80ee6a2d1f179c700022242bc6f43eccd50e6af6c23ac1e900f9cb060`  
		Last Modified: Wed, 06 Jun 2018 10:25:22 GMT  
		Size: 95.9 MB (95913221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e0b0a6960a1f15f93e9b1dc8a5596edf44196dbe35553ce8fb6c4c7f17daa`  
		Last Modified: Wed, 06 Jun 2018 10:25:14 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64749a6dd843fab29955ec273ba580eec9a89eaf5a5d9fad72787ec86afe2530`  
		Last Modified: Wed, 06 Jun 2018 10:25:14 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2515d36392cd1da454550180a43bfba071d9db78a3f583a4d0661ebf5c4b6683`  
		Last Modified: Wed, 06 Jun 2018 10:25:14 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:50cf5b585b70dcca813feadf4e88bc7765fcc07e20cd955d6b977c4ff5263b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267876137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4b9343c950205a7c6d4177377bdbe231490dcdaa0143a8181614fb7c48ad5c`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 06 Jun 2018 12:07:33 GMT
ADD file:7f8a4b83fe572740db30161e5120cf25ad25c67d9ccaf2e25454e695049bfa9c in / 
# Wed, 06 Jun 2018 12:07:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:07:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:07:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:07:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:07:36 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:25:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 06 Jun 2018 12:25:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:25:42 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Wed, 06 Jun 2018 12:26:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 06 Jun 2018 12:26:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 06 Jun 2018 12:46:11 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 06 Jun 2018 12:46:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:46:17 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Wed, 06 Jun 2018 12:46:21 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 06 Jun 2018 12:46:21 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 06 Jun 2018 12:46:22 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Wed, 06 Jun 2018 12:46:23 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 06 Jun 2018 12:46:23 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 06 Jun 2018 12:46:23 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 06 Jun 2018 12:46:24 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 06 Jun 2018 12:46:24 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:8b6742de777a76c1dbeb40bdab9c037d6486e18cc6653c49d23dfeb5c47f5355`  
		Last Modified: Mon, 28 May 2018 14:59:53 GMT  
		Size: 42.2 MB (42154043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c71da2c024632f571b0ec551b0245a78f88db5080add9e84617bf6819955be`  
		Last Modified: Wed, 06 Jun 2018 12:09:44 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd69566826bcbd4c0a0f19b9f4f0c53dd9390f9b041cd01b544011ebdf017dd1`  
		Last Modified: Wed, 06 Jun 2018 12:09:44 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e07b168b1a0b28e01400485017b1e01cb6a9284b7cd80403594a0b9da0dfea`  
		Last Modified: Wed, 06 Jun 2018 12:09:44 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44400cf74e0292d8d1b825d960fb376520995ec3070c59e0b6ca6f2b2961b828`  
		Last Modified: Wed, 06 Jun 2018 12:09:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72258819ced787a24e17a4ac2a28e91c1e5f3cbeaa38700d9b334e204bd3c86a`  
		Last Modified: Wed, 06 Jun 2018 12:28:35 GMT  
		Size: 2.8 MB (2764620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b062c9a1a5579f60737a30e698387eaa324d43d4323f283dc982dd3fc2b4aa`  
		Last Modified: Wed, 06 Jun 2018 12:28:48 GMT  
		Size: 126.6 MB (126612513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c08a46082533003a73e3779ab885d9dcc31a913fa02fce8b7f28de044175aa`  
		Last Modified: Wed, 06 Jun 2018 12:47:50 GMT  
		Size: 427.5 KB (427488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4953ca8de0526d29ce9fa4e95fa7ea328e80f9aa5690d916abe244ca12f100`  
		Last Modified: Wed, 06 Jun 2018 12:47:59 GMT  
		Size: 95.9 MB (95913301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e206d2e9207fb80e1ab381d99b1f637b2573ada2e15342e95db36d628a883a`  
		Last Modified: Wed, 06 Jun 2018 12:47:50 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd82272cea5760489da675095a26a5901a0f23918bb533acd8c7cafd01543914`  
		Last Modified: Wed, 06 Jun 2018 12:47:50 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab3d8d9a0ead2b8b8673a6d167c3910c75553b84fea8c8f3046b5b2dc0504bc`  
		Last Modified: Wed, 06 Jun 2018 12:47:50 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
