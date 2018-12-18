## `websphere-liberty:springBoot1`

```console
$ docker pull websphere-liberty@sha256:58354b517e14cf8a41c600ca08f85ac9b7b0c81f99dab1bbd88744201b28d948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `websphere-liberty:springBoot1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:5d40485acb9eae6c4eb1e081d00c5e48e6ee1ad590718a7206860d75b81f31d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229578724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c28fc9acd053f2c0fe3228f6af688fe968d44edd633cb28c3d0ab529a158b38`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Fri, 30 Nov 2018 01:54:48 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 30 Nov 2018 01:54:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Tue, 18 Dec 2018 00:35:11 GMT
COPY multi:538410bd9925cef3d00d27b3b7fe265267b61293c4d7499d152a22606bb000d6 in /licenses/ 
# Tue, 18 Dec 2018 00:35:23 GMT
ENV LIBERTY_VERSION=18.0.0_04
# Tue, 18 Dec 2018 00:35:23 GMT
ARG LIBERTY_URL
# Tue, 18 Dec 2018 00:35:23 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 18 Dec 2018 00:35:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Tue, 18 Dec 2018 00:35:27 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 00:35:28 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.4
# Tue, 18 Dec 2018 00:35:28 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 18 Dec 2018 00:35:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 18 Dec 2018 00:35:30 GMT
COPY file:33c836e256d1dc158eb16054b1527c8928dd80ffb952434ba8c97b337807677c in /opt/ibm/docker/ 
# Tue, 18 Dec 2018 00:35:32 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Tue, 18 Dec 2018 00:35:32 GMT
USER 1001
# Tue, 18 Dec 2018 00:35:32 GMT
EXPOSE 9080 9443
# Tue, 18 Dec 2018 00:35:32 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 18 Dec 2018 00:35:33 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 18 Dec 2018 00:35:33 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 18 Dec 2018 00:35:38 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 18 Dec 2018 00:35:58 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 18 Dec 2018 00:35:59 GMT
COPY file:b161907c284b3a66fd563181fa915ceeb5f014deeaba437c29935f12c1367ca9 in /config/ 
# Tue, 18 Dec 2018 00:36:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
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
	-	`sha256:01e6f5fdb27a4e56085a121783317cf0ac5dc7b2956f5b8f3ec3012447790f83`  
		Last Modified: Fri, 30 Nov 2018 02:13:47 GMT  
		Size: 425.1 KB (425137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9d285837ba3252e94af4a207b170c784b87c29ee668c653835ab51dcde584f`  
		Last Modified: Tue, 18 Dec 2018 00:50:44 GMT  
		Size: 40.6 KB (40632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030b23ca6769bbcd46c1b48fd514033880a9b5622bc7a9c1372472c077192ae2`  
		Last Modified: Tue, 18 Dec 2018 00:50:47 GMT  
		Size: 12.7 MB (12651737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e36b4e51c86ef54f20d9c4dbc972086cd65839c6dee574efc0cb9d89dd669a`  
		Last Modified: Tue, 18 Dec 2018 00:50:44 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a95ff4c3e27764def2db54a4f6c02796ee021585aea04981f98810b950ff50`  
		Last Modified: Tue, 18 Dec 2018 00:50:44 GMT  
		Size: 977.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51efc95fded4daf3a21e1edb2ea79e3b821bb7d9c20e0365b681e4afcf3fa9ce`  
		Last Modified: Tue, 18 Dec 2018 00:50:44 GMT  
		Size: 12.7 MB (12652679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912f9565852f72bb3e2cffc5d0e624d67a3c26f074ff428661094087ccf45648`  
		Last Modified: Tue, 18 Dec 2018 00:50:57 GMT  
		Size: 20.5 MB (20478855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b84e49f35680cf1436d3fa8a6871b482fdb846c71366671a3233c54d0beb08`  
		Last Modified: Tue, 18 Dec 2018 00:50:55 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f059602c5b5d93af935a9acbf44e5717692961f272c976efff5379f294ead`  
		Last Modified: Tue, 18 Dec 2018 00:50:57 GMT  
		Size: 8.8 MB (8830491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
