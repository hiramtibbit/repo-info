## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:2581f99f013aaa45fb97735c38d3e3a2b3694eb414c72ed525fca36005a70ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:ae0fe00363f7cbf41f710fa139bba5adccc1e96d6dfce6f8adc3373df0c1627e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273937920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcba3d725a9bafce08fd6435c5379fcc621db4260c571e476c15ef05f2f4a2ad`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 23:25:30 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 25 Jan 2018 23:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 18:48:41 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Tue, 20 Feb 2018 18:49:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 20 Feb 2018 18:49:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Feb 2018 22:18:30 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 20 Feb 2018 22:18:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Feb 2018 22:18:39 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Tue, 20 Feb 2018 22:18:44 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 20 Feb 2018 22:18:44 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Tue, 20 Feb 2018 22:18:45 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Tue, 20 Feb 2018 22:18:46 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 20 Feb 2018 22:18:46 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Tue, 20 Feb 2018 22:18:46 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 20 Feb 2018 22:18:46 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 20 Feb 2018 22:18:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 20 Feb 2018 22:19:26 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Tue, 20 Feb 2018 22:19:37 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5f9cfd3999c1db10b50cfaa3dc0325484be91e61b306f9e9296a08c4bf9eea`  
		Last Modified: Thu, 25 Jan 2018 23:29:31 GMT  
		Size: 3.0 MB (3021186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69133510e94f388200c303b9b1ddd1cae0b47305080414d33f09d5e1ce6ad7f5`  
		Last Modified: Tue, 20 Feb 2018 18:55:51 GMT  
		Size: 125.3 MB (125304560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc41746577066821b4d5ed15f7a21b01ba1d4fd991f8ce0edf31abc40548ae9e`  
		Last Modified: Tue, 20 Feb 2018 22:22:39 GMT  
		Size: 422.4 KB (422421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504561bfd3151364844e41646521fab29a74f0eeaa8806e7ceb7f08347256cff`  
		Last Modified: Tue, 20 Feb 2018 22:22:45 GMT  
		Size: 91.8 MB (91796105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3db1eac8e7c6c3a1a0753754ce7037fa454acb070a52cce87167ec5107d6a7`  
		Last Modified: Tue, 20 Feb 2018 22:22:37 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd6d887ec9dceb52e0273723d622281b97947a72112b3c61461b1791f730891`  
		Last Modified: Tue, 20 Feb 2018 22:22:38 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c7f51a386664bb9de1cb2b882acba367d95c245bdb76a2072b5a2f882645b7`  
		Last Modified: Tue, 20 Feb 2018 22:22:37 GMT  
		Size: 524.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d88ad9905a15eec9b52064238f7273d7f104c1a6544001fa744edc818c6321`  
		Last Modified: Tue, 20 Feb 2018 22:23:53 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3738649f693c0318d6e6ba6842da1c15f8c745616e1072dcf9e339a4ac6e4d4c`  
		Last Modified: Tue, 20 Feb 2018 22:23:57 GMT  
		Size: 10.5 MB (10525470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:fcfe314c687c4ca279e9e36711779d969cf4a87f7e47f351b3cb77a37d60ce1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262982388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6165ac91c5aed45bd35e0e804a4d21e16223b05ee572533a9d8f927aa33c2e`
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
# Fri, 23 Feb 2018 22:59:57 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Fri, 23 Feb 2018 23:00:15 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
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
	-	`sha256:ca6dd48f07a8187444954ff4b06ed0c60d74fd04500d94ddce560efb9721c664`  
		Last Modified: Fri, 23 Feb 2018 23:25:15 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0a562617de2eb802c52860f49165ffa9f2d488474ad86d91b3bc06a6f88710`  
		Last Modified: Fri, 23 Feb 2018 23:25:20 GMT  
		Size: 10.8 MB (10757777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:23aab8716e902d90bc986efd518511627c38881841abf6f5b6377a6e946bad20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.8 MB (289837169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08d815bf8082433f7f556a8bcc6a6fb9be93dfb88929fa929c59734cafe55feb`
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
# Wed, 07 Mar 2018 04:27:47 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Wed, 07 Mar 2018 04:28:05 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
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
	-	`sha256:12dd56db807f52f955ea0c050b87763f183acd1e3e8f64710fbfcad9005593bf`  
		Last Modified: Wed, 07 Mar 2018 04:29:52 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37ea22b99eb0324f666d3ccc5c19ff0f2ffc1004a6bf67811e63d8f49f375b9`  
		Last Modified: Wed, 07 Mar 2018 04:29:56 GMT  
		Size: 10.4 MB (10406916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:0d2cb8555423337b3932990708a182fbaf788c3b6305e43ddc560e553be0ec51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272468941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8928c24346a4d14ac5c4a70e4518af5393f475a87412e089b5d2598ad11ef2`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Jan 2018 14:15:44 GMT
ADD file:f981fcb775310ce0cf30f037ab72494e51ec03ee704617f95f2f2d324a5075fa in / 
# Fri, 26 Jan 2018 14:15:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 14:15:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 14:15:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 14:15:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:32:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Jan 2018 14:32:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 11:42:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Wed, 21 Feb 2018 11:43:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 21 Feb 2018 11:43:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 12:04:38 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 21 Feb 2018 12:04:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 12:04:45 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Wed, 21 Feb 2018 12:04:50 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 21 Feb 2018 12:04:50 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 21 Feb 2018 12:04:51 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Wed, 21 Feb 2018 12:04:52 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 21 Feb 2018 12:04:52 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 21 Feb 2018 12:04:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 21 Feb 2018 12:04:54 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 21 Feb 2018 12:04:54 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 21 Feb 2018 12:05:01 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Wed, 21 Feb 2018 12:05:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:43b18e89cbaed260beaf040713aeb6dffcd9863f30ae9aceb3e07dfe2c08d0f7`  
		Last Modified: Fri, 26 Jan 2018 14:16:45 GMT  
		Size: 42.0 MB (41952249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7bf346a9767979d87f9cbc89e6c6f896a0aa6cdf7e4e40aa10408a7cc70fd2`  
		Last Modified: Fri, 26 Jan 2018 14:16:37 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cba14c7fd1df11ef843ea83e937accf9351d5e0f413bbdfb88f4adea42b2847`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b3be61aa5dc1c2132b4a5dfddeb3fe0e0e49521c64565f9c0f3662850afd12`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ecf42732558b6296cc0450a556d0af95c831d12ee437da72f718bfecdcfce7`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3330a7f6c695c134d16dbfc3207a1f59a5f4127958fe419c3ebe931930f79b6`  
		Last Modified: Fri, 26 Jan 2018 14:35:02 GMT  
		Size: 2.8 MB (2765610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8eedf31484cc97fe42c81133d159c7e73df09e3f15cb1b3679eebbcefb91c8`  
		Last Modified: Wed, 21 Feb 2018 11:45:02 GMT  
		Size: 124.9 MB (124861212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73119decc2c2f98adfcf871b4f26c93bdbd83cc7e6e0c3ed61d124abe909974c`  
		Last Modified: Wed, 21 Feb 2018 12:06:12 GMT  
		Size: 428.0 KB (427966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f735e1c246df5782b58c22e02f7a43be4bac0a9e09e6b3fd1cfd80afacabf9`  
		Last Modified: Wed, 21 Feb 2018 12:06:19 GMT  
		Size: 91.8 MB (91796105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c4891a5528f681b1d945d1b998f906046ab2b86114a8f67dd59a8b0d34dfc6`  
		Last Modified: Wed, 21 Feb 2018 12:06:13 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b891580cd62550a83ad6e4a2b7fc3d9f08934b44907cb3e118ef6296251a5b1`  
		Last Modified: Wed, 21 Feb 2018 12:06:12 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc701da4844c6aff42b80078b76faf78e4be10176dfff56568d6c51a580e38c`  
		Last Modified: Wed, 21 Feb 2018 12:06:12 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b941ae4e4f29523c99af5a5a9fc380061ec0e01178be96b82a1825caf4e71b7`  
		Last Modified: Wed, 21 Feb 2018 12:06:30 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd1715e887ab5872b24040d9ad7a65d17bc655e4398757af1b16354c3c7ba66`  
		Last Modified: Wed, 21 Feb 2018 12:06:32 GMT  
		Size: 10.7 MB (10661124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
