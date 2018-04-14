## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:508153b595492c2e455d214cc40b0aff21dbe641efb6130e883360341fd54196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:af107a5b5047bae0b69896c6be05b31790811784db70354dd543ac11578d6fe6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282193534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e321e0b29a060ec90d44e9e01c56cdc44915b92467ef2ca13ffa746a26278bd7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 10:41:19 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 13 Apr 2018 10:41:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Fri, 13 Apr 2018 10:42:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 13 Apr 2018 10:42:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 07:02:37 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 14 Apr 2018 07:02:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 07:02:46 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 14 Apr 2018 07:02:51 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 14 Apr 2018 07:02:51 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 14 Apr 2018 07:02:52 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 14 Apr 2018 07:02:57 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 14 Apr 2018 07:02:57 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 14 Apr 2018 07:02:57 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 14 Apr 2018 07:02:58 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 14 Apr 2018 07:02:58 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 14 Apr 2018 07:12:09 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 14 Apr 2018 07:12:09 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 14 Apr 2018 07:12:29 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146eae8ea2ef4f1ecc51e1753c8649c89d618a45334389ec1b4b81fd3895262`  
		Last Modified: Fri, 13 Apr 2018 11:08:59 GMT  
		Size: 3.0 MB (3021379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c0777c0c8c4e9c7869e247bcc5dd5bcd3c8922ab24c1990817bdcddb05eaff`  
		Last Modified: Fri, 13 Apr 2018 11:09:11 GMT  
		Size: 127.2 MB (127235921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a93fe239b2e6e52ecda8e4ff9cf23c3b8a0409044aa9aa0fd5cf69c0ebd162`  
		Last Modified: Sat, 14 Apr 2018 07:31:19 GMT  
		Size: 422.6 KB (422647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74277c2cccf92e9095b299c6eb6f71aa9ba48034fe75e4bcecc070e7a085abc`  
		Last Modified: Sat, 14 Apr 2018 07:31:28 GMT  
		Size: 95.9 MB (95913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e3f4273bbaf932cc14f113f9657e9fcac68d0307960494351426e6778915d7`  
		Last Modified: Sat, 14 Apr 2018 07:31:19 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93db2a81fb97cf289763046d3cde8abd22aa3e5408c2635dd78c21a8a9e0557d`  
		Last Modified: Sat, 14 Apr 2018 07:31:18 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d39d173645799f3de4dafd0fac553d4b078961746b963363a0467c29f40c9e`  
		Last Modified: Sat, 14 Apr 2018 07:31:18 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b12ca5b11826bea5a8e3948c129031ff6288e96fcf2128244c94e56ce326bc`  
		Last Modified: Sat, 14 Apr 2018 07:54:27 GMT  
		Size: 890.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65bcfaa770eae1990a9b7be8120dbd7cd6c9b2947b0df6a1d3e5b06db64fcd1`  
		Last Modified: Sat, 14 Apr 2018 07:54:31 GMT  
		Size: 12.6 MB (12572278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:16865259ff079f58aefc6dd2ad97939e3b8a52b364b2f3515a0f6bbd827963c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272642900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6525ffdbf0a242b128c8e56fa1bb8d3ac071733453d6a3f03f3bd89d43927aa4`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 13 Apr 2018 22:38:50 GMT
ADD file:d71c060722440734cc20cbe246e3f45d5c038db6a20e3762d82e1a49d30d20da in / 
# Fri, 13 Apr 2018 22:38:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 22:38:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:38:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 22:38:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 22:38:53 GMT
CMD ["/bin/bash"]
# Sat, 14 Apr 2018 05:15:36 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 14 Apr 2018 05:15:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:15:49 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 14 Apr 2018 05:16:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 14 Apr 2018 05:16:26 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 07:19:51 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 14 Apr 2018 07:20:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 07:20:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 14 Apr 2018 07:20:07 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 14 Apr 2018 07:20:07 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 14 Apr 2018 07:20:08 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 14 Apr 2018 07:20:12 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 14 Apr 2018 07:20:12 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 14 Apr 2018 07:20:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 14 Apr 2018 07:20:12 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 14 Apr 2018 07:20:12 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 14 Apr 2018 07:20:28 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 14 Apr 2018 07:20:29 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 14 Apr 2018 07:20:43 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:8e19c51a559879a2a39933c98850c8577d2172b903d0758906b1b8619d25fd67`  
		Last Modified: Fri, 13 Apr 2018 14:48:08 GMT  
		Size: 43.3 MB (43332037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6840605d3ccd0f332070cce5e89e79ff2caa2b70ad3f171bf0b4791901aa3ed1`  
		Last Modified: Fri, 13 Apr 2018 22:40:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55865af19fc535a568dbe9010567f2bc1a88f1726ac1d732685f6b0c73738c4c`  
		Last Modified: Fri, 13 Apr 2018 22:40:10 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f246529ed3f530096a5d59b28e4f21bbd18f22eb9598cb02ea7a8e3382c5c3b4`  
		Last Modified: Fri, 13 Apr 2018 22:40:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8b8e94a5301d2fe3de5142a9b754c31202623de5d4ca40e4a7416c2ec943ee`  
		Last Modified: Fri, 13 Apr 2018 22:40:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e3ee967f17cee199cdb3f655d89a6d17a0e9825801e26bbfbcf85584e79ad7`  
		Last Modified: Sat, 14 Apr 2018 05:18:02 GMT  
		Size: 2.9 MB (2877446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2fb67ec519a5e16ca7e59877ef07f3b868fd60bf93f2e526db70cc8a21bd4b`  
		Last Modified: Sat, 14 Apr 2018 05:18:59 GMT  
		Size: 115.6 MB (115552104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b7eb76bd203c24469018ed2a86bdaf22fc5f990d2a2a54aa9df8b1bb5bb740`  
		Last Modified: Sat, 14 Apr 2018 07:21:12 GMT  
		Size: 421.6 KB (421556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67867c48d641507d88c2370ede444a0b3ffc228b5487bdd0079c37162f4978b8`  
		Last Modified: Sat, 14 Apr 2018 07:21:19 GMT  
		Size: 95.9 MB (95913302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da06f5c865ec020daf5ff75f107b268018b81ad8516c8694923ee36f108ce0b2`  
		Last Modified: Sat, 14 Apr 2018 07:21:10 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7274793404f9c8562dbb77c24233ba20d75991711f5d9438123231ee18f33182`  
		Last Modified: Sat, 14 Apr 2018 07:21:12 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff25cf813fc06391d7d94b9d5d3931ed5c27c85e35280a1ec28c054845dbeb5f`  
		Last Modified: Sat, 14 Apr 2018 07:21:10 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a24dcc997e16114ab830d61a26580c03029bdd42f39459e279ab9a5317c3aa`  
		Last Modified: Sat, 14 Apr 2018 07:21:44 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef93aad488e86160d45ea532bba66a537e4007f700921c39b6a659a2a250977`  
		Last Modified: Sat, 14 Apr 2018 07:21:47 GMT  
		Size: 14.5 MB (14541428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:73ef2ea6fdcfa489f3413eaa81a8dccd314593151fd48c1fc4187e2504607cf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299501748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd222492254e9896255f66ab441b61674861a21e85223d09219529f644c90881`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:00:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 04:01:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Apr 2018 02:18:49 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Tue, 10 Apr 2018 02:20:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 10 Apr 2018 02:21:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 02:44:20 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 10 Apr 2018 02:44:44 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Apr 2018 02:44:47 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Tue, 10 Apr 2018 02:45:40 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 10 Apr 2018 02:45:42 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Tue, 10 Apr 2018 02:45:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Tue, 10 Apr 2018 02:45:53 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 10 Apr 2018 02:45:56 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Tue, 10 Apr 2018 02:46:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 10 Apr 2018 02:46:03 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 10 Apr 2018 02:46:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 10 Apr 2018 02:46:58 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 10 Apr 2018 02:47:03 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Tue, 10 Apr 2018 02:47:32 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4870ad4ee97d4e32d496b63cc7373fd7f11d549efb2263394978effb7eac`  
		Last Modified: Wed, 07 Mar 2018 04:08:42 GMT  
		Size: 2.9 MB (2878547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb6447c27f065a302e9e2204574f8311113f63580a564e2735f4be53a5bf4bc`  
		Last Modified: Tue, 10 Apr 2018 02:26:53 GMT  
		Size: 140.7 MB (140692973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1106aaf57e60f69534794922dc48abe7f7e0187fa803b1ccd04e531c44a425`  
		Last Modified: Tue, 10 Apr 2018 02:48:28 GMT  
		Size: 454.0 KB (453965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f987c538dd885de47087a19a7832d6dc46c29fbd915bb317e5cd83c7943c26fc`  
		Last Modified: Tue, 10 Apr 2018 02:48:41 GMT  
		Size: 95.9 MB (95913220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94488afa14efd64e4f8f42d474bc57fd8e3b4ea30db5886b515ac5b020d49ddf`  
		Last Modified: Tue, 10 Apr 2018 02:48:28 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ffd99987a58d3b8045bb4f8fa0604d0d2d5eb079ae485c2aa4a6d703fd6ec7`  
		Last Modified: Tue, 10 Apr 2018 02:48:28 GMT  
		Size: 911.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b855b556e93d1ce073f30667093db0db029c94aa3f2057b630d43a4c79548dc5`  
		Last Modified: Tue, 10 Apr 2018 02:48:28 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffa9db18583428627ea0dfa6359cd9ecb3c19c2e525666fd2f079f58bc52e34`  
		Last Modified: Tue, 10 Apr 2018 02:49:31 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec17de66bfe156a2671b0a931193187243150f56fdcfa44a9673582c384c772`  
		Last Modified: Tue, 10 Apr 2018 02:49:36 GMT  
		Size: 14.2 MB (14187569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:a2f1c8eda7c8b580c31e31f117e7461e81ca127060f813e243aedbbcdde93956
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275828704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13054f792cddec28cc38219c8b0813936ebd9034c9616e87cce0f16eef53fadf`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 07 Mar 2018 14:16:03 GMT
ADD file:8a37d561cb3654a7a5f0129393726248dc67d03c914b0b4d13eeb4e2c435d359 in / 
# Wed, 07 Mar 2018 14:16:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 14:16:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 14:16:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 14:16:05 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:32:41 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 14:33:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:33:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Wed, 07 Mar 2018 14:34:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 07 Mar 2018 14:34:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Mar 2018 14:52:29 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 07 Mar 2018 14:53:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:53:25 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Wed, 07 Mar 2018 14:53:28 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 07 Mar 2018 14:53:29 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 07 Mar 2018 14:53:29 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Wed, 07 Mar 2018 14:53:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 07 Mar 2018 14:53:30 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 07 Mar 2018 14:53:31 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 07 Mar 2018 14:53:31 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 07 Mar 2018 14:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 07 Mar 2018 14:53:53 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 07 Mar 2018 14:53:53 GMT
COPY file:5db1c59c27d7ed50b509e2a8f02b65842257f46b6071db47d4411df25288152f in /config/ 
# Wed, 07 Mar 2018 14:54:18 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:010f2178c9cabb6a33a8186a7f5a984aba7e440e4b2b4d1a874f15d5fcb79a25`  
		Last Modified: Mon, 05 Mar 2018 14:53:44 GMT  
		Size: 42.0 MB (42036505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9703614626aa4412320bce4eba714a7898db5feb0f2cb5100dc7e9e0c37dd724`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d6768abda76abb8dcdff35826a831b24aa3c33ab9fa0086c706d9b63dbc143`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9277dcfd4cab4f7ae26e28683fb7aba48f291de2629bb7f0785228cb99ac7b0c`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6fee71c476b616ecf46e767f2b49c5a057eb59a22713c92e180c5395b0f91`  
		Last Modified: Wed, 07 Mar 2018 14:16:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb8317415d4d7222f9ee8450011359ef47bb8c56171fb993dbc4b0833c0a626`  
		Last Modified: Wed, 07 Mar 2018 14:36:03 GMT  
		Size: 2.8 MB (2765866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb925d778f022237d436876d34efd339fc021c4a3f9e08a99839e7d097010ac`  
		Last Modified: Wed, 07 Mar 2018 14:36:14 GMT  
		Size: 124.9 MB (124861176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4aad883e4299dec7d66e473e0851d5cfd63729b8186f1e5d74f33c86039f6b`  
		Last Modified: Wed, 07 Mar 2018 14:54:48 GMT  
		Size: 428.2 KB (428241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e8b772e82679db085e3f64ba0a277cd21d4583d4b4d1caf910bdc4f114aade`  
		Last Modified: Wed, 07 Mar 2018 14:54:57 GMT  
		Size: 91.8 MB (91796101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a3d1745cfdb45f6799244c8e8de22009f35c331da6cf0f82f39867a0e7731`  
		Last Modified: Wed, 07 Mar 2018 14:54:47 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32843ffa81e60ea534383900bbaa823bf7eb6097bcf6b5075db5a91d8fd10a9e`  
		Last Modified: Wed, 07 Mar 2018 14:54:48 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846a80d91cf5abd552009f563d7a329ec196fdf2342822f38b43d0dd196786c5`  
		Last Modified: Wed, 07 Mar 2018 14:54:47 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc35f8977884fc6d7542d848a7ffe43f42a8ed5a0581b71c6f2e174c70bfa40c`  
		Last Modified: Wed, 07 Mar 2018 14:55:22 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d44ee656d93c2ca7c86360a14a56b814037eba8d95a6d515089b1f46633560c`  
		Last Modified: Wed, 07 Mar 2018 14:55:25 GMT  
		Size: 13.9 MB (13935781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
