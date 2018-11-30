## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:53482ad848bd131e0caead0a14516e77d07d10ea90db038b07326c35e3e493a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:6fce419effc9eb83702e1a3a41c45b15915f915e4251fa8481820ba0525e5d34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311033899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d625de0f517b2dbeb96fb9e742448f67c17ecf2ff0279f834df28773d2300a6f`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:15:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 19 Nov 2018 22:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 30 Nov 2018 01:19:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 30 Nov 2018 01:20:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='962cff44b493645d789411cc0a3d23796c41159f5c45c2fc297a161e45e39836';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='ddba881ac7431c352a559c546ee704ad902b83573da417a10bf6e968222e450c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b906de7cff34affb1371e2c29b9cc80e1d62ca2c32d1088f0167e422b702ef9a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='c0568460ef383e6e3f56b93cfc296601d3e5aae4aba167b69cb9949ffa932c82';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='81acd84a1365a631ceb3d848838e3978d23b99dec362adc112ad3a159739ecf1';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 30 Nov 2018 01:20:28 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 30 Nov 2018 01:47:40 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 30 Nov 2018 01:47:40 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 30 Nov 2018 01:52:32 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 30 Nov 2018 01:52:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 30 Nov 2018 01:52:49 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 30 Nov 2018 01:52:50 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 30 Nov 2018 01:53:05 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 30 Nov 2018 01:53:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 30 Nov 2018 01:53:20 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 30 Nov 2018 01:53:20 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 30 Nov 2018 01:54:48 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 30 Nov 2018 01:55:02 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b2fbbc72b1f552c0411f96735f0171009df0be2ee232ae2e75d9d99524ef11`  
		Last Modified: Mon, 19 Nov 2018 22:20:04 GMT  
		Size: 3.0 MB (3020935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa35dfd74487f23a5fadfbca70a08d820b91f9dee5198a2b6ef1679dd38277e9`  
		Last Modified: Fri, 30 Nov 2018 01:27:17 GMT  
		Size: 128.1 MB (128062224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ade56d64661e97d8b614264e4e338a651848356d38efe0a4c0e60ebf83745e1`  
		Last Modified: Fri, 30 Nov 2018 02:02:07 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c1252ace29b7fe9ed8033d4277abb79a06e3c75055ca37cebbc4d87d97c2ef`  
		Last Modified: Fri, 30 Nov 2018 02:05:10 GMT  
		Size: 125.2 MB (125213620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6d2c38040233aee38694116d89fd8cd6ad10dca779e7de76302cb4d975a892`  
		Last Modified: Fri, 30 Nov 2018 02:04:57 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869049f576a1a832b380d1d967dee44a6751745141cae74af870be1466233f4`  
		Last Modified: Fri, 30 Nov 2018 02:04:57 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea4e84c2ac2644494f8db05090cbf4a21b430b9695d34ad6fa2a5bfb2395a3b`  
		Last Modified: Fri, 30 Nov 2018 02:06:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cefd502b5f51a1228832ddd5c5fc03994dfd5277569ed8e494ddc40e2c185d2`  
		Last Modified: Fri, 30 Nov 2018 02:06:32 GMT  
		Size: 11.3 MB (11321246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:9ee53054eea152d818e64f532a9c54a40b28bc77ba1c7e91ade430eb50b01e54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.7 MB (298677644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:530d8e29a27cdf0a12fe87ce0a63fc04696ac3cfa73ca2b6e34ade12863cdb5d`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 20 Nov 2018 12:20:00 GMT
ADD file:6fdc065a2fbe1084b10b598d239ab639f144d17d4496012dbdec7d8456e3a307 in / 
# Tue, 20 Nov 2018 12:20:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 12:20:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:20:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 12:20:03 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:13:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:13:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:13:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:14:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:14:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 20 Nov 2018 13:40:37 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 20 Nov 2018 13:40:37 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Tue, 20 Nov 2018 13:42:04 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Tue, 20 Nov 2018 13:42:17 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:17 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 20 Nov 2018 13:42:18 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Tue, 20 Nov 2018 13:42:19 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 20 Nov 2018 13:42:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 20 Nov 2018 13:42:19 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 20 Nov 2018 13:42:20 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 20 Nov 2018 13:42:37 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Tue, 20 Nov 2018 13:42:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:a3aca6307c1aa2b2cc8d15fa3e646157166eed6703321b3a79783f481ae6273a`  
		Last Modified: Mon, 19 Nov 2018 15:09:59 GMT  
		Size: 43.6 MB (43635706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643e7d4d3a0a2cb275ee831c6bd19df14945331b343788664b0f8f864fb5fcf0`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e299cd08753476963cf11490637d277a0d98a1c5b8b7d47db843da5b32ecaa8`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc02c766472ded7c53da06de596743880346590bbf6f778c04fa03ead701f3b`  
		Last Modified: Tue, 20 Nov 2018 12:24:35 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff38b55c864afb6636418c53d251bb8283b7f948851f351440609a6029e1bb84`  
		Last Modified: Tue, 20 Nov 2018 13:16:51 GMT  
		Size: 2.9 MB (2876368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a0a646e22edba6fe2eb75e509b41c9c46253504f00077db1e41627ea7c432`  
		Last Modified: Tue, 20 Nov 2018 13:17:03 GMT  
		Size: 115.8 MB (115763335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f98e7af4a3fc5c8e1fcb79f92281e988360a3fb4735df1789018d3826791ac`  
		Last Modified: Tue, 20 Nov 2018 13:45:36 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00035d02f085dc758721ec8dbf82a232b99a6dc6b25efcdc6bcd83911d375471`  
		Last Modified: Tue, 20 Nov 2018 13:47:25 GMT  
		Size: 125.2 MB (125213624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70580cee7f4a1777f9ab997b37a6aba48a29d47acefc74c7fa5a3e2f5401e8d`  
		Last Modified: Tue, 20 Nov 2018 13:47:07 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfebba668a5c6010c7b935a9a7801a6375bbbbbb4883603f6155cfda6ede52be`  
		Last Modified: Tue, 20 Nov 2018 13:47:07 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f928ec5bc85b67bd1619355057caf9c46fb2a298373ab1d9ca00d1da9ffbf5f9`  
		Last Modified: Tue, 20 Nov 2018 13:47:55 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48026ea8bc9403290fbf5875007ebf262640a658b04caa9f2d1320cbf0a5889`  
		Last Modified: Tue, 20 Nov 2018 13:47:58 GMT  
		Size: 11.2 MB (11184953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:ba4756045f5e46bcf47caccede95860a328a8642c559ef748e305cd125771fee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.0 MB (327038675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60fe60055303488758907d537119ace581cfde01258d0ca7a8bb68c264a848b0`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 20 Nov 2018 09:31:16 GMT
ADD file:cb540f7e8c3e08020b164ac22b03b29afba2ceee95f8dd5abd8013e4e02372d8 in / 
# Tue, 20 Nov 2018 09:31:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:31:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:31:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:31:28 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:19:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 10:20:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 30 Nov 2018 09:26:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 30 Nov 2018 09:28:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='962cff44b493645d789411cc0a3d23796c41159f5c45c2fc297a161e45e39836';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='ddba881ac7431c352a559c546ee704ad902b83573da417a10bf6e968222e450c';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='b906de7cff34affb1371e2c29b9cc80e1d62ca2c32d1088f0167e422b702ef9a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='c0568460ef383e6e3f56b93cfc296601d3e5aae4aba167b69cb9949ffa932c82';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='81acd84a1365a631ceb3d848838e3978d23b99dec362adc112ad3a159739ecf1';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 30 Nov 2018 09:36:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 30 Nov 2018 10:25:11 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 30 Nov 2018 10:25:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 30 Nov 2018 10:39:31 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 30 Nov 2018 10:39:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 30 Nov 2018 10:41:52 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 30 Nov 2018 10:41:54 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 30 Nov 2018 10:42:59 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 30 Nov 2018 10:43:15 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 30 Nov 2018 10:43:16 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 30 Nov 2018 10:43:17 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 30 Nov 2018 10:43:46 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 30 Nov 2018 10:44:11 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:7ea631de703fad0f373d9aff9771c730726128e296e2e5311131ab3438855046`  
		Last Modified: Tue, 20 Nov 2018 09:53:03 GMT  
		Size: 45.7 MB (45694909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589fdb4ddc043f28784fba346cab7fe7fd9711385872c3ec8a7f45c9e44a1b9`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d217e98717edd666c49de76323d085a7a3c6cfd8bb43723522136c5fdd0aab`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f66c0cb95d14802e1df0d308ca65d874322a65b6208757826ef942c61164fbe`  
		Last Modified: Tue, 20 Nov 2018 09:52:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ba443302d1e528ff9c5aead9c6fd3fe4c385e60894041ce381245a06209ccf`  
		Last Modified: Tue, 20 Nov 2018 10:33:14 GMT  
		Size: 2.9 MB (2880631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc46ec6adbbc536087eeb01d67ad351c34988bb547a392a77623cce80b99b18`  
		Last Modified: Fri, 30 Nov 2018 09:57:41 GMT  
		Size: 141.9 MB (141881241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d59e54dc99bf0cad35b74c08f180858a95cd123d98a730eb5c6677397b0c26`  
		Last Modified: Fri, 30 Nov 2018 11:09:12 GMT  
		Size: 436.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad21cd9bca93cec0bf857d50f1d9b8d9afcd9737f561333e4aa2ded19ebd7f6`  
		Last Modified: Fri, 30 Nov 2018 11:24:15 GMT  
		Size: 125.2 MB (125213192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac4b878ae4f08691cb352517e319b039e8899c8cdfaeea3a69869ffa1683840`  
		Last Modified: Fri, 30 Nov 2018 11:23:57 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff8d12ceb4818d8502e09e3706d90a4e4b93c84ab757d09ec467f41aae37ab6`  
		Last Modified: Fri, 30 Nov 2018 11:23:57 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cabdb9422941341715ce5bcd1e3183b7054053a4200c351a04f5ccb33704232`  
		Last Modified: Fri, 30 Nov 2018 11:33:04 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59bb3ea0ace73076a2443504adf36bc73efa12adb7abd80175f9805d1c09d58`  
		Last Modified: Fri, 30 Nov 2018 11:33:08 GMT  
		Size: 11.4 MB (11364917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:6b8550eabf7b4aa520073b0bd21cf94a9e91b054a953a62c0d1a71a323a7d801
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.3 MB (308318631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f960df3288fdc62a8a91bad68263faf9b5b67f87ac8dfad7a77d6f483c2c43`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 20 Nov 2018 13:11:21 GMT
ADD file:b77f6d24d8c56183678bdd336bbba6fe26ad37d1a964c91cb91ad225c2e84406 in / 
# Tue, 20 Nov 2018 13:11:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:11:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:11:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:11:27 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:27 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Nov 2018 13:29:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Tue, 20 Nov 2018 13:30:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 20 Nov 2018 13:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 20 Nov 2018 13:49:24 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 20 Nov 2018 13:49:25 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Tue, 20 Nov 2018 13:51:07 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Tue, 20 Nov 2018 13:51:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:51:23 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 20 Nov 2018 13:51:24 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Tue, 20 Nov 2018 13:51:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 20 Nov 2018 13:51:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 20 Nov 2018 13:51:29 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 20 Nov 2018 13:51:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 20 Nov 2018 13:51:42 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Tue, 20 Nov 2018 13:51:58 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:e106090ffbaf8ccb97860ef61a165dfec5a1c3dc44bf455e12d088c42a60010f`  
		Last Modified: Mon, 19 Nov 2018 15:11:28 GMT  
		Size: 42.4 MB (42363363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6dfca1c5fa4e1ed6f0787784f1ddd02ab6b55d0b741fa5f2cfc3ebcd6ae045`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc58638e6a1418dbc11e178f7020b4493a592fb0ddc19ab287c91b769c4526d`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475a0504a32677e770f759dcb0a5bba535e0927168bef4ef761b9c458d29e29f`  
		Last Modified: Tue, 20 Nov 2018 13:13:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c13bc010bbc9909b1dab6dfb49b0ea3693a60d30728eaf7deec53f3afe0daf`  
		Last Modified: Tue, 20 Nov 2018 13:32:30 GMT  
		Size: 2.8 MB (2765136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ae477a0e89f84e899d0fa1187264e718e7e0ff56b1688e143c1d7bd849aa6e`  
		Last Modified: Tue, 20 Nov 2018 13:32:47 GMT  
		Size: 126.7 MB (126726813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e49cff8fc93c934198ab3bd1d43e40805f764cc43adcc75ad737a5e51a23ba7`  
		Last Modified: Tue, 20 Nov 2018 13:54:30 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2490d52f51e459c4fa192fa3a53c824d637d827c5c132b4d95952428427ca586`  
		Last Modified: Tue, 20 Nov 2018 13:55:38 GMT  
		Size: 125.2 MB (125212958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936c81b8cdfa52bc81c1f623beed3c5186d49f2d159e17b66d2e111f50b42cc4`  
		Last Modified: Tue, 20 Nov 2018 13:55:22 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726b1ece58a5bcd867c0b1ef9aa47302ff26e71a49dcb53cc56fee43c4102d0`  
		Last Modified: Tue, 20 Nov 2018 13:55:22 GMT  
		Size: 807.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b278f5a59f130306786577a0865f050e80a3b0940ce2f411d6d0828de96ea32`  
		Last Modified: Tue, 20 Nov 2018 13:55:53 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5678a5de5ec51c8572f5b132bf6103975cbdbfc312c01df44a4df2a07aaa91a`  
		Last Modified: Tue, 20 Nov 2018 13:55:57 GMT  
		Size: 11.2 MB (11246765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
