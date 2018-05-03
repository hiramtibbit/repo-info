## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:9adf0f624f121ff58cc2801df888edd72c3c3cfa0012b900ed4d2d88d4e482f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:1874d5994c027c17a06f41ccc40b2e4b8dc22fb16839378d27296c746f70d0a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.9 MB (306931515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333306ebf0c31effd1254b8120a8ed81cf217e051ca6ae55060e2d1bcca0b198`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 07:43:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sun, 29 Apr 2018 07:44:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sun, 29 Apr 2018 07:44:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 May 2018 02:47:49 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 03 May 2018 02:47:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 03 May 2018 03:07:17 GMT
ENV LIBERTY_VERSION=2018.4.0_0
# Thu, 03 May 2018 03:07:32 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Thu, 03 May 2018 03:07:32 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 May 2018 03:07:32 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 03 May 2018 03:07:33 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 03 May 2018 03:07:37 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 03 May 2018 03:07:37 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Thu, 03 May 2018 03:07:38 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 03 May 2018 03:07:38 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8329c76a164cd552499112851c45fc27579d65f372bc34446e2f7c2b498de2c`  
		Last Modified: Sun, 29 Apr 2018 08:35:54 GMT  
		Size: 127.2 MB (127235885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b2ae53dda7bb08fad53c1f23de4670fba47b3c297cdf25062a763c840c4c3c`  
		Last Modified: Thu, 03 May 2018 03:19:20 GMT  
		Size: 421.9 KB (421934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef4af22bc228fa5f0cc0e71ac8ddb0f72e766207c5d8d273847124a56d9ee2b`  
		Last Modified: Thu, 03 May 2018 03:22:45 GMT  
		Size: 133.2 MB (133221816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221e04f421908da5150f6744719604d5eea4df38cd5e4759506ec79c259f9373`  
		Last Modified: Thu, 03 May 2018 03:22:37 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f2e9fba5322d30d072615f0476b02c7360e2ea5e777764de53a3df198690a2`  
		Last Modified: Thu, 03 May 2018 03:22:37 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa219629015f094cbd9f71bb3b0a173f3206513964491f7ca28ea62cf9298b38`  
		Last Modified: Thu, 03 May 2018 03:22:37 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:175886e9b54153d6be2713c45c01f220f8a8ca1299dbb6a977a0b499e64210fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.4 MB (295410626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711e2840fb6cda9e3859c73cba62f22ae85eb6998a32b2ff11ce1e4f3ab515ef`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 19:29:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 19:29:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:29:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 19:30:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 19:30:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 00:52:45 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sun, 29 Apr 2018 00:53:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:57:55 GMT
ENV LIBERTY_VERSION=2018.4.0_0
# Sun, 29 Apr 2018 00:58:09 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sun, 29 Apr 2018 00:58:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 29 Apr 2018 00:58:10 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sun, 29 Apr 2018 00:58:10 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sun, 29 Apr 2018 00:58:13 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sun, 29 Apr 2018 00:58:14 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sun, 29 Apr 2018 00:58:14 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 29 Apr 2018 00:58:14 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b125a754ae3c66526ea700585cf966a79926129a09658b87e4b6aa26d6006e2`  
		Last Modified: Sat, 28 Apr 2018 19:32:03 GMT  
		Size: 2.9 MB (2875583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83af41ae35b63ecdb8badc4dc2c8816d3744d2ea44371a8690c6a01cfcb9cd1`  
		Last Modified: Sat, 28 Apr 2018 19:32:14 GMT  
		Size: 115.6 MB (115552002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f25fb0f9155eea49f8d78e977626614450b2a707ee762c5a3b268a0711f363`  
		Last Modified: Sun, 29 Apr 2018 00:58:27 GMT  
		Size: 420.8 KB (420768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1aa7628d83e380c0c241da231901f4d15cc8df340d1a20cc4d89c86bc2440c0`  
		Last Modified: Sun, 29 Apr 2018 01:00:07 GMT  
		Size: 133.2 MB (133221824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7f2fe267d54f58f5d27f55c5a4beb52ff92ff0a992c79631f886f9c30368d6`  
		Last Modified: Sun, 29 Apr 2018 00:59:55 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a91600ab843aae1a60f7f8d56c6e8163a952ee13a63e5a39d135b1768d211e`  
		Last Modified: Sun, 29 Apr 2018 00:59:55 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356bfb354ea2b7c1f03b6fd28dc307450273af5a3efeed88870d388b7a3fcb0e`  
		Last Modified: Sun, 29 Apr 2018 00:59:55 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:dd4d7f976ca452235c5ff6d7ae150f7125f3b9c8fa327d38cf6da0d0bbca4153
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.7 MB (322683319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c4835db462bcd2b7aed287c983a0c983787b2b8c50fb91c6ecb0ed5548c7d6`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:24:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 13:26:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 13:26:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:59:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 28 Apr 2018 20:00:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 20:08:18 GMT
ENV LIBERTY_VERSION=2018.4.0_0
# Sat, 28 Apr 2018 20:09:28 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 28 Apr 2018 20:09:29 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:09:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Apr 2018 20:09:31 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Apr 2018 20:09:35 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Apr 2018 20:09:36 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 28 Apr 2018 20:09:36 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 20:09:37 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ddb361bea1a0d38c5bb879f6e4029eabd91547e308828fabb9c475ca806266`  
		Last Modified: Sat, 28 Apr 2018 13:31:46 GMT  
		Size: 140.7 MB (140692608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7d68d8c5cd4b9a4d0d5d8caca83905ff375cdb6205992925aad821175353f6`  
		Last Modified: Sat, 28 Apr 2018 20:09:51 GMT  
		Size: 453.0 KB (453047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f03ebc5297a56de064f3f7b1e0393d37e072147d69e9779aa249936a01048f`  
		Last Modified: Sat, 28 Apr 2018 20:11:52 GMT  
		Size: 133.2 MB (133221880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85259b4d1c446fcc4d5a3066957075df08101a0a606dbb5fc88bbe05021307f`  
		Last Modified: Sat, 28 Apr 2018 20:11:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d643e521a4a2137bc3b7e58a5b9600c4c2eb3d5326fe4dc2a923cac05c281f`  
		Last Modified: Sat, 28 Apr 2018 20:11:38 GMT  
		Size: 1.7 KB (1720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b4fdef348877bb3dfba7bf2f3eada9385d23c36b818cc1a246a6d8d846ab75`  
		Last Modified: Sat, 28 Apr 2018 20:11:37 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0899953c6c1d4214a272928e0380ef51cf79ff5c92b53dd879bce3cec1210fa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305180046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26c4c0231bb843a751fe1f20cc2616fea3bcf3e6f4847840e74b893ee7fdf9c`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:27:12 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 28 Apr 2018 15:27:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 28 Apr 2018 15:27:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 20:54:18 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 28 Apr 2018 20:54:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 21:00:25 GMT
ENV LIBERTY_VERSION=2018.4.0_0
# Sat, 28 Apr 2018 21:00:46 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 28 Apr 2018 21:00:46 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 21:00:46 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Apr 2018 21:00:47 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Apr 2018 21:00:48 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Apr 2018 21:00:49 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 28 Apr 2018 21:00:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Apr 2018 21:00:49 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a3640849e04cadeeeeef876a321a69b59d0c3ef7bd190a1962ff08ee69ad60`  
		Last Modified: Sat, 28 Apr 2018 15:30:06 GMT  
		Size: 126.7 MB (126668729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cc380fcdc4a1cfe1ad116a6480ecf52d7244612c10d523b97b3a6ee10ded07`  
		Last Modified: Sat, 28 Apr 2018 21:01:08 GMT  
		Size: 427.6 KB (427551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b57aa48e28510309ca885096e2e728884ed4a848f47c2b60977b502a3cc4a1`  
		Last Modified: Sat, 28 Apr 2018 21:02:37 GMT  
		Size: 133.2 MB (133221822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01209c04f594f2cfc8dbb20b384cdcefeb64e687406a54f43d10e101e857b5d5`  
		Last Modified: Sat, 28 Apr 2018 21:02:26 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541884c4dc4140c38133423a7a4781a847b7121c74ca115037df15b34ca514`  
		Last Modified: Sat, 28 Apr 2018 21:02:27 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe66c63eef0009174819792fd66c610cd879a33be3a74a0f37275396d8e21099`  
		Last Modified: Sat, 28 Apr 2018 21:02:27 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
