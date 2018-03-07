## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:b6ac9fb16d3ec3bacd2473344f7f3c18b364037a9b74d998108f7b39d495f9fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:c18ab20eda36f58571acb3e34358ccd7d557545df11fe3c5b0a9f1d109b404c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.3 MB (277259080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae6db7cf354e706327265a1a7748afb458ed4a784684f773af67d53112cf2db`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 03:33:57 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 03:34:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:34:10 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Wed, 07 Mar 2018 03:34:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 07 Mar 2018 03:34:46 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Mar 2018 08:44:05 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 07 Mar 2018 08:44:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 08:44:13 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Wed, 07 Mar 2018 08:44:19 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 07 Mar 2018 08:44:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 07 Mar 2018 08:44:20 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Wed, 07 Mar 2018 08:44:22 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 07 Mar 2018 08:44:22 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 07 Mar 2018 08:44:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 07 Mar 2018 08:44:22 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 07 Mar 2018 08:44:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 07 Mar 2018 08:45:08 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 07 Mar 2018 08:45:08 GMT
COPY file:5db1c59c27d7ed50b509e2a8f02b65842257f46b6071db47d4411df25288152f in /config/ 
# Wed, 07 Mar 2018 08:45:34 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f51c84437412aefdd5b57f02dc9974d4abcf492373dc15b5daeae44f1eca05`  
		Last Modified: Wed, 07 Mar 2018 03:37:19 GMT  
		Size: 3.0 MB (3021321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296f13174583c25b95a9564ba28fba3570ca0d3f1d25a8c4a00b6f380e1e09bd`  
		Last Modified: Wed, 07 Mar 2018 03:37:30 GMT  
		Size: 125.3 MB (125304556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a28ef4aed2d41d3e767044931dc6763e9255c436ab9d8a981b3d08f82346ee9`  
		Last Modified: Wed, 07 Mar 2018 08:46:21 GMT  
		Size: 422.6 KB (422571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842007310c3b391b90d3960a6fd7c24f309cc34a1e3ce970a733ec50632aadb8`  
		Last Modified: Wed, 07 Mar 2018 08:46:30 GMT  
		Size: 91.8 MB (91796104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f314cba76c0aebdcdc05cd3307f4f27f5c24e97a048b55d53c7ad748dddd7a56`  
		Last Modified: Wed, 07 Mar 2018 08:46:21 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a784da222104a4139953777f4139d38f239bb3816af5cd570783719823cf52`  
		Last Modified: Wed, 07 Mar 2018 08:46:21 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15f3afd63a8dfa753735f2fe82f0e80f0ab4b3206603f7eeb3b146ab011599b`  
		Last Modified: Wed, 07 Mar 2018 08:46:21 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e54816de1f913a84bb4fb29e7a3b1d95f2477863c6007aa1eb341d392a0568c`  
		Last Modified: Wed, 07 Mar 2018 08:47:48 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a6f8c4d1d4894b5dc916b9faf7b21a099cc2cc269898870be19808ecc1dd4e`  
		Last Modified: Wed, 07 Mar 2018 08:47:50 GMT  
		Size: 13.7 MB (13745712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:d26e4ecfa3ddcaf348548a7ac19c7e571828834aa1a306613738ca45c05a60c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266552840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b15d0c92d82dca0c9eaebeb64c49d42af37beb81c02b7d063e3a73d0792371f1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Jan 2018 05:28:53 GMT
ADD file:a2fdeed58b54171aafdc4d0d63bbc2233b05616df11ca447de69925eb2544458 in / 
# Fri, 26 Jan 2018 05:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 05:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 05:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 05:28:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 05:28:57 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 06:45:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Jan 2018 06:48:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 12:24:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Fri, 23 Feb 2018 12:25:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 23 Feb 2018 12:25:26 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Feb 2018 22:48:23 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 23 Feb 2018 22:48:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 22:48:35 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Fri, 23 Feb 2018 22:48:42 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 23 Feb 2018 22:48:42 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 23 Feb 2018 22:48:43 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 23 Feb 2018 22:48:48 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 23 Feb 2018 22:48:49 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 23 Feb 2018 22:48:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 23 Feb 2018 22:48:50 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 23 Feb 2018 22:48:50 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 23 Feb 2018 23:01:25 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 23 Feb 2018 23:01:25 GMT
COPY file:5db1c59c27d7ed50b509e2a8f02b65842257f46b6071db47d4411df25288152f in /config/ 
# Fri, 23 Feb 2018 23:02:08 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:69bfba48bfd5dab360bc002520a76059d75c25a05130328fdd48cc9a6661c6bd`  
		Last Modified: Fri, 26 Jan 2018 06:02:06 GMT  
		Size: 43.2 MB (43189118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4135ad7a18f392f5676d43b00b3662be9c56308b19ffbbe5dac1cd4ce13c3386`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ac84c4380a8c58145cd5563c2edecb0894b6a269bf9e88282cb1280fe4fe57`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e68e48a9a4dc516c724d5aca5ea687dddfca2426ba5bd53edd733f8de37790`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e7a06bcfb60f6c102866e83fb5998ef9b99f2baa2497da175df01f2a3bf03`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ec7589bebfa4e2385a1270bcef098c95f1e6a04d81308f5df3d5c97332c536`  
		Last Modified: Fri, 26 Jan 2018 07:36:16 GMT  
		Size: 2.9 MB (2877317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9276348d6e660869f0a75de0c8bfdb902ae48acd85c143a816d40d9ddff2611a`  
		Last Modified: Fri, 23 Feb 2018 13:00:19 GMT  
		Size: 113.9 MB (113936094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860d727a3b05176168f30777be43193fc603d42d88d85e602c91578b021136a8`  
		Last Modified: Fri, 23 Feb 2018 23:17:50 GMT  
		Size: 421.3 KB (421347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56819b98e72ab8700b7cdf0282af8edb49df3853a02eb0d1d71cfb6c878a3c53`  
		Last Modified: Fri, 23 Feb 2018 23:18:01 GMT  
		Size: 91.8 MB (91796096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3407bf6974e54fe3647dfff7163cf1fb00119983ec841f7c5dee5d93a0504bf6`  
		Last Modified: Fri, 23 Feb 2018 23:17:50 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4088669add696bc36535803145bd9bedd659bd6bf8ceb7dcdd530cc749e71949`  
		Last Modified: Fri, 23 Feb 2018 23:17:49 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a4c12e980a21990acbf4ec646fd896d1c8fa2697067de71bce40db30b2c7ed`  
		Last Modified: Fri, 23 Feb 2018 23:17:49 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bcd5a015dac29f9d51870f98004a501b5790a08b0b8b7c204a86610ad27fc3`  
		Last Modified: Fri, 23 Feb 2018 23:27:26 GMT  
		Size: 891.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e84abfc4516b9ba0aeba616edab771f77d9613298b6e42e753bea1bfb7a13b7`  
		Last Modified: Fri, 23 Feb 2018 23:27:32 GMT  
		Size: 14.3 MB (14327873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9585e801e3a159f51a2f2c9facbc223d1a7c15fc4f057ced66ee4af69e6012c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293079006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de74d2296b3faf2f2eea7573736ec8e3ca02d14aee292679893e120a06f01974`
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
# Wed, 07 Mar 2018 04:01:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Wed, 07 Mar 2018 04:03:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 07 Mar 2018 04:03:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Mar 2018 04:25:50 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 07 Mar 2018 04:26:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:26:16 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Wed, 07 Mar 2018 04:27:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 07 Mar 2018 04:27:12 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 07 Mar 2018 04:27:17 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Wed, 07 Mar 2018 04:27:22 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 07 Mar 2018 04:27:24 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 07 Mar 2018 04:27:26 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 07 Mar 2018 04:27:28 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 07 Mar 2018 04:27:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 07 Mar 2018 04:28:14 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 07 Mar 2018 04:28:16 GMT
COPY file:5db1c59c27d7ed50b509e2a8f02b65842257f46b6071db47d4411df25288152f in /config/ 
# Wed, 07 Mar 2018 04:28:50 GMT
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
	-	`sha256:94dc59a1dc473c88dca4f10fd6ac9950f6c2723deb4d1a0662da93749ac7b3a9`  
		Last Modified: Wed, 07 Mar 2018 04:09:02 GMT  
		Size: 138.9 MB (138926498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957dda77d57d83815cd3641d177e610185ba135b25958a77f4dacb38b76843db`  
		Last Modified: Wed, 07 Mar 2018 04:29:26 GMT  
		Size: 453.9 KB (453936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d60c79d4e6b886708433a216652b21082e689bfae1e5916c3b10a5a45bbed8`  
		Last Modified: Wed, 07 Mar 2018 04:29:37 GMT  
		Size: 91.8 MB (91796184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e62c248b95e7b99a2d1d314b157d8a832d1f013ea7086ca42b375519f0b89d`  
		Last Modified: Wed, 07 Mar 2018 04:29:25 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be52709736b68a1d0194b3f6e07360eaa0f700803d224a2a04124b25b64daf57`  
		Last Modified: Wed, 07 Mar 2018 04:29:24 GMT  
		Size: 904.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e273f427a034d94e2d9925f8f9488d8e42afe1d4a709a7092477a2c71edbfc`  
		Last Modified: Wed, 07 Mar 2018 04:29:24 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b99077306244b502e15f43d28eaf098dbbdb0911027be4cd6391df69d2e68c`  
		Last Modified: Wed, 07 Mar 2018 04:30:10 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ecd28aa65c7d1afce2ce6111d95585fa08aaeb45271de132bf0a10a7d6e74e`  
		Last Modified: Wed, 07 Mar 2018 04:30:13 GMT  
		Size: 13.6 MB (13648396 bytes)  
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
