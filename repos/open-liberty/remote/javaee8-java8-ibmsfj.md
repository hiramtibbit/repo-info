## `open-liberty:javaee8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:6f77dc5769eb0e9b0c0932c4c0ef9c7da524e98b8b3c7631ce91e5d9b6c645c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:c52aea35f9dbbdf77ddb3cd10e0fb07a31f9302aa21203e551c938819c4b7557
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.7 MB (199729225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca930132b42cd8ac713ec9aa9b18c70355f26c72d50454a495e458775a379b3`
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
# Mon, 04 Mar 2019 23:21:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Mon, 04 Mar 2019 23:23:22 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Mon, 04 Mar 2019 23:23:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 05 Mar 2019 00:45:49 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Tue, 05 Mar 2019 00:48:08 GMT
ARG LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439
# Tue, 05 Mar 2019 00:48:08 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip
# Tue, 05 Mar 2019 00:48:08 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Tue, 05 Mar 2019 00:48:16 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN apk add --no-cache wget    && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 05 Mar 2019 00:48:16 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Tue, 05 Mar 2019 00:48:17 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Tue, 05 Mar 2019 00:48:42 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.2/openliberty-javaee8-19.0.0.2.zip LIBERTY_SHA=ea57c461ec2cefe051392c6dbe598dc0cd626439 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging /logs/*
# Tue, 05 Mar 2019 00:48:42 GMT
EXPOSE 9080 9443
# Tue, 05 Mar 2019 00:48:42 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 05 Mar 2019 00:48:42 GMT
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
	-	`sha256:6dc9760948b4d2a2cbca9581bb7fecb9d3ace44bbca9c5e2d04e7763d93e09e2`  
		Last Modified: Mon, 04 Mar 2019 23:26:46 GMT  
		Size: 62.9 MB (62905243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00e4f60b5b174cd51e8b0011fba45160bdc067f88a8f793111f654fada3a475`  
		Last Modified: Tue, 05 Mar 2019 00:54:37 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74ceb7766e6d886e4923a0aba027a052bd79eab7bc07d2fdf578083be0b91b3`  
		Last Modified: Tue, 05 Mar 2019 00:54:45 GMT  
		Size: 112.7 MB (112679515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0af4d6fe73b5ef26535e336484f09ecab7993b9325395b648d942578bf71ef`  
		Last Modified: Tue, 05 Mar 2019 00:54:37 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e95a372edad9470c799bd9314f70e717d4b48c15b35fa381a900933d9ba513`  
		Last Modified: Tue, 05 Mar 2019 00:54:41 GMT  
		Size: 17.5 MB (17514143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
