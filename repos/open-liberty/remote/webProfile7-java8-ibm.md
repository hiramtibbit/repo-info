## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:09ffd267899a90688d9eca907ec92f087c3b2e31426b39f90bf8f7bb6fa899a5
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
$ docker pull open-liberty@sha256:326156d7d9ed5874f37ee796e0baf5b3fbad91dfd72acd21f3f40ae5b79529a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262308356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9675984b6f8ea6c7d934d0db82e5ddb5e627cc4d8216d270fa8bc1461ad4d13`
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
# Fri, 26 Jan 2018 06:54:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Fri, 26 Jan 2018 06:55:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 26 Jan 2018 06:55:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 09:38:54 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 26 Jan 2018 09:39:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 09:39:05 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Fri, 26 Jan 2018 09:39:11 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 26 Jan 2018 09:47:16 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 17 Feb 2018 19:19:56 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Sat, 17 Feb 2018 19:20:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 17 Feb 2018 19:41:24 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 17 Feb 2018 20:02:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 17 Feb 2018 20:23:11 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 17 Feb 2018 20:23:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 17 Feb 2018 21:26:10 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Sat, 17 Feb 2018 21:47:51 GMT
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
	-	`sha256:a3b2dbd5a7bc16af051c5e8c93a2e7ede819508f46f993a69ed3713f0cbcaf6e`  
		Last Modified: Fri, 26 Jan 2018 07:36:31 GMT  
		Size: 113.3 MB (113344218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32de0e32393adfc1c953fcf8c00b5b5753bec6c3aa83bcec400636c57d62f7bc`  
		Last Modified: Fri, 26 Jan 2018 10:01:26 GMT  
		Size: 421.3 KB (421347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5301f6b40114c8b530b00811626f607bd6aef2bb1b6596fa252807550bbb659a`  
		Last Modified: Fri, 26 Jan 2018 10:01:41 GMT  
		Size: 91.8 MB (91796113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af4135d631b7219a8791a7625efd94619a0b009d8a9763540a64f3ce37489f`  
		Last Modified: Sat, 17 Feb 2018 23:36:13 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178d2bdec751a3871429e8b7450362e252eb59c27933f4ded3c7a75ebc4ee996`  
		Last Modified: Sat, 17 Feb 2018 23:36:13 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c43e6a33fe5780f927148d52286ff810d66c397e3d0eda298e4b35609dbe4`  
		Last Modified: Sat, 17 Feb 2018 23:36:13 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8705bc8cb36b18a78ace9a95f210b7e6dec1d00b4602e83ba88fda750f9b851`  
		Last Modified: Sat, 17 Feb 2018 23:58:01 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26424f03f8a601981db338eaa740b017048feb4d7d44a42a97cf65a259c685b1`  
		Last Modified: Sat, 17 Feb 2018 23:58:06 GMT  
		Size: 10.7 MB (10675558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:f199820c4d1b179dd114bfb0e761a9062d556a2970534d63ea0cf63ac7e1610b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.8 MB (289791964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b9a40f093363554bf5f41ff8d9d289f28ffe108093a228e8d2b93c03e4af535`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Jan 2018 03:41:19 GMT
ADD file:7bb1badf2ddc010aa8511773b3116d31f6c0e7752d9a5fb4d51d3239ac648013 in / 
# Fri, 26 Jan 2018 03:41:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 03:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 03:41:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 03:41:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 03:41:34 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 03:59:26 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Jan 2018 03:59:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:23:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Wed, 21 Feb 2018 16:25:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb6bf0f241e6827b567fc57f67ed87e2dfd8ad6e0f2f142b4a4c2f8e924d8716';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='e5825f6d151b2f4656934c249ef439d8c0269865f1e764d5f079c0cea6fb6bbc';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='57de9a2a66f5426c0e9dcb39798cf635f33631e0f74d50d8af1ad5d2e1f79256';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47aa107a35327d84ef57bd0b6ebbdbbabb63f8fa24bc759343781b8ed4c789ad';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='ee2351e78c5b73ccf078905acc01b11eea01c78b6537836cc6d2baadaf7de769';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 21 Feb 2018 16:25:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 16:47:29 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 21 Feb 2018 16:47:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:52 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Wed, 21 Feb 2018 16:48:38 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 21 Feb 2018 16:48:39 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Wed, 21 Feb 2018 16:48:52 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Wed, 21 Feb 2018 16:48:57 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 21 Feb 2018 16:49:00 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Wed, 21 Feb 2018 16:49:06 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 21 Feb 2018 16:49:07 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 21 Feb 2018 16:49:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 21 Feb 2018 16:49:28 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Wed, 21 Feb 2018 16:49:49 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0ee828c1a6b9931787bac2eb1e3d18afb13755be0354a6d602bd7113a54bf77b`  
		Last Modified: Fri, 26 Jan 2018 03:43:47 GMT  
		Size: 45.3 MB (45288935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8729e11c4446b648e4410135637565cce4779fc24e3f0580f7dfe06121ac40ee`  
		Last Modified: Fri, 26 Jan 2018 03:43:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2409d39f3293be5f0d6732e6f078aaaf34adeaffd20d3d424229f7d1d63d8e2b`  
		Last Modified: Fri, 26 Jan 2018 03:43:34 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4098a4920a587b4d23814c5ad76a2876ddf59ed187558b9a55b577df2a365ec8`  
		Last Modified: Fri, 26 Jan 2018 03:43:34 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aafbe2bba3c8b964fab243e2c86b4ab84fc06465267d79d4e817b47e33d4b10`  
		Last Modified: Fri, 26 Jan 2018 03:43:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a24ec9d559ffc7dd59bc649cb749aedaca91d9a2a530dc2ee75c2cc5d7884d5`  
		Last Modified: Fri, 26 Jan 2018 04:07:37 GMT  
		Size: 2.9 MB (2878295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a9ff159c4ce5dba9d9e73bded6203c723e3cfeaee441d115a6041657e744bc`  
		Last Modified: Wed, 21 Feb 2018 16:30:21 GMT  
		Size: 138.9 MB (138926473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f557605a9af0b01a66b8e59e09d9d952799bbfdc83659ae8352ae7234349625`  
		Last Modified: Wed, 21 Feb 2018 16:51:13 GMT  
		Size: 453.6 KB (453639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbaa7c6acd928df5d7ec36f59f17c0b77c1cbe70e18022f95878b360da82e21`  
		Last Modified: Wed, 21 Feb 2018 16:51:23 GMT  
		Size: 91.8 MB (91796188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1a3b59a71d9c89d0a6b17c5df1a245abb8a86658abe6483b1aa4c616843117`  
		Last Modified: Wed, 21 Feb 2018 16:51:13 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611f61119a596efa24a16034ab51a2c17d536727f618a451ccfd11612e6265fa`  
		Last Modified: Wed, 21 Feb 2018 16:51:13 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd0fdd7b9f57ad27dd8d35551f8b52d656451d8cb69eb7c81e6ccba2e6b7a46`  
		Last Modified: Wed, 21 Feb 2018 16:51:13 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494ddab9d1e63737f33873e1992c8a370bffead71e984325314a8bdb330b4292`  
		Last Modified: Wed, 21 Feb 2018 16:51:44 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7fa2fcb38549aea482ef44adc7a256c7b055e948c91f4fd136b9cd1aa9359c`  
		Last Modified: Wed, 21 Feb 2018 16:51:48 GMT  
		Size: 10.4 MB (10443598 bytes)  
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
