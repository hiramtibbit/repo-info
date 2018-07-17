<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:beta`](#websphere-libertybeta)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:javaee8`](#websphere-libertyjavaee8)
-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:webProfile8`](#websphere-libertywebprofile8)

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:16a479c15da32552fca59f6870a64c375e037fa4865711a547d46e42dfaa239f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:caf65230bd739cd9efe65e2f0f511b5b662fb00912ff95800a5015863eeab9fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272524527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01631149ef655546356606e44137c4ba58103810257638276aa553ef98723fe4`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 00:47:00 GMT
ENV LIBERTY_VERSION=2018.7.0_0
# Tue, 10 Jul 2018 00:47:17 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 10 Jul 2018 00:47:17 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Jul 2018 00:47:18 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 10 Jul 2018 00:47:18 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 10 Jul 2018 00:47:21 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 10 Jul 2018 00:47:21 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 10 Jul 2018 00:47:21 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 10 Jul 2018 00:47:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9282d64235c01fd5b17e931f66a835d07baaf8b30033fa8e912126d4894fad6`  
		Last Modified: Tue, 10 Jul 2018 00:47:58 GMT  
		Size: 98.8 MB (98751390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadfd85f18a76fd051afc261970b01f432648aba50459e814b293443e2f1081b`  
		Last Modified: Tue, 10 Jul 2018 00:47:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7a1d67f06c36c49d671e26461388aaf1746f5378e203810ef73f8bab6c23f0`  
		Last Modified: Tue, 10 Jul 2018 00:47:44 GMT  
		Size: 1.6 KB (1624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5752ca19cac52c595a77981d0db0c16afbc54671eac34a9368de72da8fa87541`  
		Last Modified: Tue, 10 Jul 2018 00:47:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:d4858fccba1921a605b4aa2734bb07fbaaf4514148c0467acd7870458c914691
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260957004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c89e6d1ec78f03b095bb9aa58db567b87890e719229e8138ff0479419e783a`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 11:05:04 GMT
ENV LIBERTY_VERSION=2018.7.0_0
# Tue, 10 Jul 2018 11:05:22 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 10 Jul 2018 11:05:22 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Jul 2018 11:05:22 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 10 Jul 2018 11:05:23 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 10 Jul 2018 11:05:25 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 10 Jul 2018 11:05:26 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 10 Jul 2018 11:05:26 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 10 Jul 2018 11:05:26 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eef4edb51e0c0f9ce30b693a121e5216a1317504961f12eed75f441a8a134b9`  
		Last Modified: Tue, 10 Jul 2018 11:06:00 GMT  
		Size: 98.8 MB (98751390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec47281489f6989c2c29f496e49767c39935e3993a8299538d706e24c858c98`  
		Last Modified: Tue, 10 Jul 2018 11:05:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdf225a470a3b12f690ffd230d8eabe55c0c044783a7bd4b0a003a4a954f47b`  
		Last Modified: Tue, 10 Jul 2018 11:05:47 GMT  
		Size: 1.6 KB (1629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc64d8aa7c6e559126ee6da5bcedc4dea7d675becdebb5313ec5322a031097d6`  
		Last Modified: Tue, 10 Jul 2018 11:05:46 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:1c3c5bd5c0f68055dbdb105bc49dc2f0970d2146d6c65d0ad3947b6cd7d7d3d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288374203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857ff21904deeaacd699402db3dd405b11c2f33b10b8804faf809ef4930c0b44`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Jul 2018 10:34:05 GMT
ENV LIBERTY_VERSION=2018.7.0_0
# Wed, 11 Jul 2018 10:35:13 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Wed, 11 Jul 2018 10:35:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Jul 2018 10:35:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 11 Jul 2018 10:35:18 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Wed, 11 Jul 2018 10:35:25 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 11 Jul 2018 10:35:30 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Wed, 11 Jul 2018 10:35:31 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 11 Jul 2018 10:35:32 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bf4d771e17ba75127471e24397976bd14802df2278390c5975117d9e93b552`  
		Last Modified: Wed, 11 Jul 2018 10:36:11 GMT  
		Size: 98.8 MB (98751382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345091583df6fed88b2e853392ae7e6e5369db232906d16fbaa0c7c52768333e`  
		Last Modified: Wed, 11 Jul 2018 10:36:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cb1ced3b6d45f83501c4eb20de99a0614f3d8da4d5c396f6f8dae477bfcd87`  
		Last Modified: Wed, 11 Jul 2018 10:36:00 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742367fa17eb861303d6a4b8d33876d7cd014e386d852733891701424a1bacf`  
		Last Modified: Wed, 11 Jul 2018 10:36:00 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:5f94b13c3607f0469ca23fb082285cda6efe0ca4fbbd7a83c2d10f079d785a3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270784984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8346fa1d6a76eb63d7749fb99ef2b5fdf6eb7f8772b763ffeea3284d9deed02`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:51:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 11:52:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 11:52:09 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 12:11:24 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 12:11:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Jul 2018 12:00:18 GMT
ENV LIBERTY_VERSION=2018.7.0_0
# Tue, 10 Jul 2018 12:00:32 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 10 Jul 2018 12:00:33 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Jul 2018 12:00:33 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 10 Jul 2018 12:00:34 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 10 Jul 2018 12:00:38 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 10 Jul 2018 12:00:38 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 10 Jul 2018 12:00:38 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 10 Jul 2018 12:00:38 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:8d545ebe0646446b7bf4623e1ead75d5b4afca0913c0a7d6d3af211a2536b5d8`  
		Last Modified: Tue, 03 Jul 2018 11:54:50 GMT  
		Size: 126.7 MB (126682696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f656d235d6547f2f98cc58cf17121fba3b09d879e93c19c553d1b366bc14b56`  
		Last Modified: Tue, 03 Jul 2018 12:20:51 GMT  
		Size: 427.5 KB (427522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e018555177cb57d8f942862d0dec1fcf946f64a92acbb25239ffad9b6e516fd7`  
		Last Modified: Tue, 10 Jul 2018 12:00:59 GMT  
		Size: 98.8 MB (98751389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9543fb78b0fc718c4d59c1b3532db5a44e28f1f260a862e20fee0652c6de0e6`  
		Last Modified: Tue, 10 Jul 2018 12:00:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c817bebefeb4be999cc63f0701be48186e69aeeffab2c4e0d468e012904be5b`  
		Last Modified: Tue, 10 Jul 2018 12:00:51 GMT  
		Size: 1.6 KB (1614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86270c7cc4338c593138d73a438d2f59d6da3cc54c553e716c2a62489b8dd0d8`  
		Last Modified: Tue, 10 Jul 2018 12:00:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:48d00482c462761d92563ce9e68df87e1e3b862e89f384b2424af49e4c0ce7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:5b1c87c1d4870b7a0e0b07f24da71ad3f7847734298caa5c5e195db7a0f7a26f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (300037464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ebf895e434917525f45e0a4dbdd38bba4529e385c19e4aedd20e9f23a6d757`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jul 2018 23:53:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 02 Jul 2018 23:58:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 02 Jul 2018 23:58:46 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 02 Jul 2018 23:59:06 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2366d87d0f3525df294ea03e78e89d78bd4959e0d99dfcb3f5013c8190a2a4f`  
		Last Modified: Tue, 03 Jul 2018 00:06:57 GMT  
		Size: 97.9 MB (97937987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea74c1f6c5a449738164d3b6130b3fed613275de9d8fe452b9992d3138deca86`  
		Last Modified: Tue, 03 Jul 2018 00:06:43 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540261cd4664a4fd986da3adff8835299863b7953637aae6170eb6db974d34b7`  
		Last Modified: Tue, 03 Jul 2018 00:06:49 GMT  
		Size: 15.8 MB (15831777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:fbce1f660676e7c0297acede2834fd2641d2a970f93d61752ebc7697d596692d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (288984999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c71c15a6daf97703db94e9b283007095933c8e0c6e621f6511305ab750025ff6`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:13:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:13:59 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 03 Jul 2018 11:14:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bf579480437160eb3c2d3f0c0e3dd7b5d776bccd0df047dcb58618178b241a`  
		Last Modified: Tue, 03 Jul 2018 11:23:01 GMT  
		Size: 97.9 MB (97937913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1b250e8e2292de9bb608c04043a854b8119478684a9f9f677935166bd1c99b`  
		Last Modified: Tue, 03 Jul 2018 11:22:42 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68583ec35c8ceabb8d98d243b5a612841d64882f3b15baa8e849f0acdd585a0c`  
		Last Modified: Tue, 03 Jul 2018 11:22:50 GMT  
		Size: 16.3 MB (16346925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:6971b5464a216eecec1fd949187ee73e1755a3d12167200b1222550d900a54b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.6 MB (315648345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2f899f1e5fded71f5670a957988496309e66da511e0ec25ec9972313cf53ee`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:32:05 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:32:06 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 03 Jul 2018 09:32:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776f1c468eed12113f91b7c28e716fdaafc3d5b6f16cfa8b662c0fe2aaca132f`  
		Last Modified: Tue, 03 Jul 2018 09:42:06 GMT  
		Size: 97.9 MB (97944974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61425fcc856b1f32072499520fd8be44760a045e3dc24a563907cc39e74aa7e2`  
		Last Modified: Tue, 03 Jul 2018 09:41:55 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f7d468e79c46cd11399106ed73637987e417c2e06750d6ea5b42f7c734ac6`  
		Last Modified: Tue, 03 Jul 2018 09:41:58 GMT  
		Size: 15.6 MB (15585968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2a61011c6bac9ce158d2017e4cd51dba570c898948530e3e94879060e47aecd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.3 MB (298263539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e42a579ae25c855ce5ef38cb92d942c20ec60d61fed73de4e6f91804a69030c8`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 17 Jul 2018 19:47:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 19:47:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:47:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 19:47:49 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 19:47:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 19:47:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 19:47:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:47:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 19:47:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 19:47:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 19:47:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 19:48:00 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 19:48:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:48:00 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 19:48:00 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 19:48:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 19:48:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 17 Jul 2018 19:52:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 19:52:43 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 17 Jul 2018 19:52:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:393e590bd6e320e6bf0eede7547d8384ca307c84b0605815c8436b5e23b65974`  
		Last Modified: Tue, 17 Jul 2018 19:57:31 GMT  
		Size: 427.5 KB (427504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005556de212fc56f0419b68fa00388679c242f7dced94d186c3d0d70d414298`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 12.5 MB (12494050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbaf7caa4fabefa12021f73c3a22c73fda6b9ed5b47c4d3ca4f96b7551a8e5c`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f4541503151f8d77b8c27ff2e7065624f395e7e618cd7d06a5ae97a23467f`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac804642cf53949889da6aee40b3e08306c7c2dde51835d7f71526e6e67f0f2f`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732c72045f3b7d5de56aa59d1503a9c117b1fd2717c60a179238422041ff095c`  
		Last Modified: Tue, 17 Jul 2018 19:58:13 GMT  
		Size: 97.9 MB (97937746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da58165bbbfccda227df9347aa99421440c6be6f320eddcfbd37215d20ee14cf`  
		Last Modified: Tue, 17 Jul 2018 19:58:05 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ee5df1ca8b98901a65f29baf2a461dce3794dc6be0cf5e08cd68405d78e427`  
		Last Modified: Tue, 17 Jul 2018 19:58:09 GMT  
		Size: 15.7 MB (15749667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee8`

```console
$ docker pull websphere-liberty@sha256:4416736cdc87fb6b7085c50622b6a3c37b85da91e2164ac69ae2f7a6c7a81cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:50777771314c1f7b7137b024660934f18aa50d521bd517314ad0754e18020207
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308940088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a0cb94686a1dbb98a0d1e17933e859108908603efa149106dca68cb29d4f72`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jul 2018 23:53:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 00:03:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 00:03:39 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 00:04:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52103b7b942c0625ca0bdca014a938b00205aeded7982d5159023e4e986ffa30`  
		Last Modified: Tue, 03 Jul 2018 00:08:05 GMT  
		Size: 106.7 MB (106670875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f63dfad202148b6c6167051670887b12394503af272f893b4c1e6f10ea8524a`  
		Last Modified: Tue, 03 Jul 2018 00:07:52 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072bd8b5d83b6965166cbdf1a05b51caf28fc99d99157978a3ce2b5a3167813c`  
		Last Modified: Tue, 03 Jul 2018 00:07:57 GMT  
		Size: 16.0 MB (16001511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:248a630c06b5bb00d6da778907dc58d699fe2f515d19b241b5e708a5550f4cd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297734061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e178821cbff47e28fd3209a093b2f797c350bfb9ee0c8210b1f9a83d41327c76`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:18:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:18:37 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 11:19:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206b07d94a608ffc10c9265c7a41ecef3fdda87422511ea6b3bfc090c8a4b92e`  
		Last Modified: Tue, 03 Jul 2018 11:23:58 GMT  
		Size: 106.7 MB (106670245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc6c147e85852cd894ed3b9af202fe8252595c86b8cd67fe750fb9a5c605218`  
		Last Modified: Tue, 03 Jul 2018 11:23:45 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aa205dcde8263dda1ddc719b72b802897079b4822938080581767087ef0a24`  
		Last Modified: Tue, 03 Jul 2018 11:23:51 GMT  
		Size: 16.4 MB (16363655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:239a96e5522032ac4a7ed1411c14f222f62408fff068c3be9c79409f60745db8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324206121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45842a29b37a174ee437ac48cc83499debf6d8d252dc2f530e5d4dc07f176d14`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:37:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:37:35 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 09:38:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67097b2bf68e12fe057b6a866d38fa25534dcefc4509814910972cf113ef141e`  
		Last Modified: Tue, 03 Jul 2018 09:43:17 GMT  
		Size: 106.7 MB (106674508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f55d6392689807289ce6791f46758b9179a0d0b6fafee014f03c54c1b95c1a`  
		Last Modified: Tue, 03 Jul 2018 09:43:03 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df66fb8b9454a345ca8f2eae19aa3a7a1f77429f9373e7f74261ff2319a1cda`  
		Last Modified: Tue, 03 Jul 2018 09:43:08 GMT  
		Size: 15.4 MB (15414209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:1d6a3e7a4494c6e78c361b6c0d808c301034516a3e0c7965139930b7447a334f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.2 MB (307191795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24724787c04b83bbd8faccec08de64de2706ec32b9504904d682a59dac97fec9`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:51:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 11:52:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 11:52:09 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 12:11:24 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 12:11:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 12:11:31 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 12:11:31 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 12:11:31 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 12:11:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 12:11:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 12:11:35 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 12:11:35 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 12:11:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 12:11:37 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 12:11:37 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 12:11:37 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 12:11:37 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 12:11:38 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 12:11:38 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 12:11:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 12:19:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 12:19:55 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 12:20:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:8d545ebe0646446b7bf4623e1ead75d5b4afca0913c0a7d6d3af211a2536b5d8`  
		Last Modified: Tue, 03 Jul 2018 11:54:50 GMT  
		Size: 126.7 MB (126682696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f656d235d6547f2f98cc58cf17121fba3b09d879e93c19c553d1b366bc14b56`  
		Last Modified: Tue, 03 Jul 2018 12:20:51 GMT  
		Size: 427.5 KB (427522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6526106b524ae3f4dff2255361cbb620fb6d7c3990fda19bfd6f13c7605cfd44`  
		Last Modified: Tue, 03 Jul 2018 12:20:52 GMT  
		Size: 12.5 MB (12494059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531f9fcdee2829391aec20f145c9a4f7757f6faf62f7daf8ccb343aafd2f50fe`  
		Last Modified: Tue, 03 Jul 2018 12:20:49 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161bbddb92f25ea7dca6f385c8dd9e09d3cac5d80b89c10d98940a008b956e3e`  
		Last Modified: Tue, 03 Jul 2018 12:20:49 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc7c6934b731b6c0dce2009e84c0475b05d3269145d7eb9241f0ba13e9d5f2`  
		Last Modified: Tue, 03 Jul 2018 12:20:49 GMT  
		Size: 972.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73113f532af5bdd3fd24f00ca052bdea4d9d86b3aede271a9dfb3938aaf36969`  
		Last Modified: Tue, 03 Jul 2018 12:24:52 GMT  
		Size: 106.7 MB (106670411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4e40a1f501977100be6dac35bf4310c538ddc178cd3bf10be21ff47d2e29db`  
		Last Modified: Tue, 03 Jul 2018 12:24:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9ee0e62f0926498164392b83f796e4a82490b7a4ff985363f46c1290c53429`  
		Last Modified: Tue, 03 Jul 2018 12:24:11 GMT  
		Size: 16.0 MB (15993229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:cf4ac86e0e517765b86684b9d7dd690a4e5015253e1fe38cce3a80fcb3d3d917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:5ba5b3da1ff071af434819eed87b4c802d907542334ffc0b1b6de2682b39ac48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186266777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3871162d17191ed0fe548ae0f03d5c7d3898214c72bd68b1f409d7ef65cdca`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:cab106468c736ee1ee1316d379a12177c83b89702d406340f2b31d208f9f7227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174699237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd153ded124e9728bb333c8520431a899e3275c8f2914a3a3b23de570500137`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:90c2c617a17f072768b676f53db7e80c434fa9bf94961505e71fbf12659609b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.1 MB (202116477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7082397c23e18ec28b5763b8efb9b5be1a97dd8ff7226e1f02065ab2e4f8f221`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:efac5df2c8c37a971acd358a1614f229ef2a0f7de15b1a9e1aab45cc6a0bfa5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184575202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b57595d235e5eb35d418d2bf1d2a7dd1c6f011848f36a2e310ffaa1ace6e9f`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 17 Jul 2018 19:47:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 19:47:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:47:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 19:47:49 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 19:47:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 19:47:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 19:47:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:47:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 19:47:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 19:47:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 19:47:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 19:48:00 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 19:48:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:48:00 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 19:48:00 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 19:48:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:393e590bd6e320e6bf0eede7547d8384ca307c84b0605815c8436b5e23b65974`  
		Last Modified: Tue, 17 Jul 2018 19:57:31 GMT  
		Size: 427.5 KB (427504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005556de212fc56f0419b68fa00388679c242f7dced94d186c3d0d70d414298`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 12.5 MB (12494050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbaf7caa4fabefa12021f73c3a22c73fda6b9ed5b47c4d3ca4f96b7551a8e5c`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f4541503151f8d77b8c27ff2e7065624f395e7e618cd7d06a5ae97a23467f`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac804642cf53949889da6aee40b3e08306c7c2dde51835d7f71526e6e67f0f2f`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:4416736cdc87fb6b7085c50622b6a3c37b85da91e2164ac69ae2f7a6c7a81cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:50777771314c1f7b7137b024660934f18aa50d521bd517314ad0754e18020207
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308940088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a0cb94686a1dbb98a0d1e17933e859108908603efa149106dca68cb29d4f72`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jul 2018 23:53:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 00:03:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 00:03:39 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 00:04:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52103b7b942c0625ca0bdca014a938b00205aeded7982d5159023e4e986ffa30`  
		Last Modified: Tue, 03 Jul 2018 00:08:05 GMT  
		Size: 106.7 MB (106670875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f63dfad202148b6c6167051670887b12394503af272f893b4c1e6f10ea8524a`  
		Last Modified: Tue, 03 Jul 2018 00:07:52 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072bd8b5d83b6965166cbdf1a05b51caf28fc99d99157978a3ce2b5a3167813c`  
		Last Modified: Tue, 03 Jul 2018 00:07:57 GMT  
		Size: 16.0 MB (16001511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:248a630c06b5bb00d6da778907dc58d699fe2f515d19b241b5e708a5550f4cd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297734061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e178821cbff47e28fd3209a093b2f797c350bfb9ee0c8210b1f9a83d41327c76`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:18:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:18:37 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 11:19:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206b07d94a608ffc10c9265c7a41ecef3fdda87422511ea6b3bfc090c8a4b92e`  
		Last Modified: Tue, 03 Jul 2018 11:23:58 GMT  
		Size: 106.7 MB (106670245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc6c147e85852cd894ed3b9af202fe8252595c86b8cd67fe750fb9a5c605218`  
		Last Modified: Tue, 03 Jul 2018 11:23:45 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aa205dcde8263dda1ddc719b72b802897079b4822938080581767087ef0a24`  
		Last Modified: Tue, 03 Jul 2018 11:23:51 GMT  
		Size: 16.4 MB (16363655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:239a96e5522032ac4a7ed1411c14f222f62408fff068c3be9c79409f60745db8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.2 MB (324206121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45842a29b37a174ee437ac48cc83499debf6d8d252dc2f530e5d4dc07f176d14`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:37:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:37:35 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 09:38:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67097b2bf68e12fe057b6a866d38fa25534dcefc4509814910972cf113ef141e`  
		Last Modified: Tue, 03 Jul 2018 09:43:17 GMT  
		Size: 106.7 MB (106674508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f55d6392689807289ce6791f46758b9179a0d0b6fafee014f03c54c1b95c1a`  
		Last Modified: Tue, 03 Jul 2018 09:43:03 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df66fb8b9454a345ca8f2eae19aa3a7a1f77429f9373e7f74261ff2319a1cda`  
		Last Modified: Tue, 03 Jul 2018 09:43:08 GMT  
		Size: 15.4 MB (15414209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:1d6a3e7a4494c6e78c361b6c0d808c301034516a3e0c7965139930b7447a334f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.2 MB (307191795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24724787c04b83bbd8faccec08de64de2706ec32b9504904d682a59dac97fec9`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:51:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Tue, 03 Jul 2018 11:52:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 03 Jul 2018 11:52:09 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 03 Jul 2018 12:11:24 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 12:11:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 12:11:31 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 12:11:31 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 12:11:31 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 12:11:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 12:11:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 12:11:35 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 12:11:35 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 12:11:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 12:11:37 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 12:11:37 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 12:11:37 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 12:11:37 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 12:11:38 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 12:11:38 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 12:11:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 12:19:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 12:19:55 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Tue, 03 Jul 2018 12:20:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:8d545ebe0646446b7bf4623e1ead75d5b4afca0913c0a7d6d3af211a2536b5d8`  
		Last Modified: Tue, 03 Jul 2018 11:54:50 GMT  
		Size: 126.7 MB (126682696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f656d235d6547f2f98cc58cf17121fba3b09d879e93c19c553d1b366bc14b56`  
		Last Modified: Tue, 03 Jul 2018 12:20:51 GMT  
		Size: 427.5 KB (427522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6526106b524ae3f4dff2255361cbb620fb6d7c3990fda19bfd6f13c7605cfd44`  
		Last Modified: Tue, 03 Jul 2018 12:20:52 GMT  
		Size: 12.5 MB (12494059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:531f9fcdee2829391aec20f145c9a4f7757f6faf62f7daf8ccb343aafd2f50fe`  
		Last Modified: Tue, 03 Jul 2018 12:20:49 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161bbddb92f25ea7dca6f385c8dd9e09d3cac5d80b89c10d98940a008b956e3e`  
		Last Modified: Tue, 03 Jul 2018 12:20:49 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc7c6934b731b6c0dce2009e84c0475b05d3269145d7eb9241f0ba13e9d5f2`  
		Last Modified: Tue, 03 Jul 2018 12:20:49 GMT  
		Size: 972.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73113f532af5bdd3fd24f00ca052bdea4d9d86b3aede271a9dfb3938aaf36969`  
		Last Modified: Tue, 03 Jul 2018 12:24:52 GMT  
		Size: 106.7 MB (106670411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4e40a1f501977100be6dac35bf4310c538ddc178cd3bf10be21ff47d2e29db`  
		Last Modified: Tue, 03 Jul 2018 12:24:02 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9ee0e62f0926498164392b83f796e4a82490b7a4ff985363f46c1290c53429`  
		Last Modified: Tue, 03 Jul 2018 12:24:11 GMT  
		Size: 16.0 MB (15993229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:e8e672e11494b8d33fd9e4da92fe3994e3d4a3d85ec29d6135d00db2f972c1fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:7f45ba65128086b1df33370b161b0271e1d012da54dfd9aa72676a413ec827b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271732284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c2eafef4787f2da749ddc72eb71c3b2e5ef578cc549359e3ed86d09899b4d9`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jul 2018 23:53:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 02 Jul 2018 23:54:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 02 Jul 2018 23:54:41 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Mon, 02 Jul 2018 23:54:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157b587f456e1a9b31f7b88b6bcf179631a5f7f821c9cdc6564dcf38cdaa4264`  
		Last Modified: Tue, 03 Jul 2018 00:05:49 GMT  
		Size: 73.8 MB (73768933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0867dc9bc520ada7eb4fb4ebe4722ccf284026aec16c575f72c4023a189583bb`  
		Last Modified: Tue, 03 Jul 2018 00:05:39 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8d5f51506f9c18a4acc8190f67297cce3c8e87448ea44f4512dc75219735e2`  
		Last Modified: Tue, 03 Jul 2018 00:05:43 GMT  
		Size: 11.7 MB (11696020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:9e5597dd464cd5b8c786769974a7ec5159e7945562488b3c39d6667cef7fc68b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260263579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316e0be5a2faa17f071345f8cc5f66ce190998c24308d4d4f1e492ca9a0dd3c9`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:09:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:09:02 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Tue, 03 Jul 2018 11:09:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837dd45b22f2122423974403401b1ee1da1cb81691e65ffd591af14d56e3d47e`  
		Last Modified: Tue, 03 Jul 2018 11:21:45 GMT  
		Size: 73.8 MB (73768977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a38f15bafab58b7fa30eca53f6b8279dd63ca4c289f1bd25bb96cc6ee8a7104`  
		Last Modified: Tue, 03 Jul 2018 11:20:47 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f565e2ce1976ece687a614fa9826ea9ff29e013d7659af1053e4634e9939c2`  
		Last Modified: Tue, 03 Jul 2018 11:20:53 GMT  
		Size: 11.8 MB (11794810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:afd4c0c1504ea9b902245d30d4e06c3afa4431d3f04f3154353def170bcd9585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287739331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96336cebbe1907d6d6a40f318bc70a7e20e0dafc1cf17b129c33dd7e4b7cf8f1`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:25:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:25:53 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Tue, 03 Jul 2018 09:26:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b1c9b9f259a328b03448635abf48305184bd979a17f439392a68eaa8419f29`  
		Last Modified: Tue, 03 Jul 2018 09:41:16 GMT  
		Size: 73.8 MB (73771689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae99857937d8765ca608fa979beaee6dcd5664fefe58cd24210d9341a9ba619f`  
		Last Modified: Tue, 03 Jul 2018 09:41:07 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d1e8886d83ae9a3929a628f36f24b60872f5184d28fdd71a86656c7250b427`  
		Last Modified: Tue, 03 Jul 2018 09:41:11 GMT  
		Size: 11.9 MB (11850608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:1d42e7b0f061399276ab8f33645d79de8ec4b9952a6f26eef8d9185968bfd7e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270022046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdecc55ebffac8f64e092d917895c465ef18dd2cbb45b1054263c108c9f63159`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 17 Jul 2018 19:47:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 19:47:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:47:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 19:47:49 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 19:47:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 19:47:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 19:47:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:47:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 19:47:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 19:47:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 19:47:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 19:48:00 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 19:48:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:48:00 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 19:48:00 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 19:48:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 19:48:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 17 Jul 2018 19:49:19 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 19:49:19 GMT
COPY file:592487234213902c327fc4393ffb64101e23a5604cb12a8c7d9568e92281788d in /config/ 
# Tue, 17 Jul 2018 19:49:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:393e590bd6e320e6bf0eede7547d8384ca307c84b0605815c8436b5e23b65974`  
		Last Modified: Tue, 17 Jul 2018 19:57:31 GMT  
		Size: 427.5 KB (427504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005556de212fc56f0419b68fa00388679c242f7dced94d186c3d0d70d414298`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 12.5 MB (12494050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbaf7caa4fabefa12021f73c3a22c73fda6b9ed5b47c4d3ca4f96b7551a8e5c`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f4541503151f8d77b8c27ff2e7065624f395e7e618cd7d06a5ae97a23467f`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac804642cf53949889da6aee40b3e08306c7c2dde51835d7f71526e6e67f0f2f`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add58be32979b31d1c16e161c7777b0543808913609a73b757df10127a35713a`  
		Last Modified: Tue, 17 Jul 2018 19:57:45 GMT  
		Size: 73.8 MB (73768753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144871fa6920edf98eed7bb908d5248bf45c6a07546cb06384e630afee824fdd`  
		Last Modified: Tue, 17 Jul 2018 19:57:39 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bb0ee755d7305c29e946560bf9e6492244f63cb4d893b99d54e6965c239c49`  
		Last Modified: Tue, 17 Jul 2018 19:57:42 GMT  
		Size: 11.7 MB (11677534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:0901a38cde991489c62a59b653b0e5bcb8b0bbe66945836c5815f56c1d2760f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:79a6c294c9d3eef832c6cf24a2c7505ed55b033ded00068bad7eccbb5a77fc8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271488778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4b2de60864130d999b7d3caffb184e649189fe29626e913f4b723063ad67e9`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jul 2018 23:53:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 02 Jul 2018 23:56:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 02 Jul 2018 23:56:33 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 02 Jul 2018 23:56:47 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e150bee14d4c830981f037adfda792763f365f2b53fbcfec00a3ec66a234927`  
		Last Modified: Tue, 03 Jul 2018 00:06:24 GMT  
		Size: 73.8 MB (73768833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f93152c4b21a8e85d8543ceaf0d73f39e97425b662d2ee4447262fd382ccdc`  
		Last Modified: Tue, 03 Jul 2018 00:06:14 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2718866fbf2ef228f2a895ca900927290b65501a9a3e7637bba28085f5af74cd`  
		Last Modified: Tue, 03 Jul 2018 00:06:18 GMT  
		Size: 11.5 MB (11452611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:649915c6db3026de0827159f63663fee15a3bfbde67a6be89704664b2747b171
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (259956808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81665c81a674529fe5be3e436d9d60ce54deaf27a8c1ee5bfa79688e08fd9857`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:11:11 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:11:16 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 03 Jul 2018 11:11:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f31fe3d7da0d06e0f4a453783a372064d34d232e424898a33b256f2aec6b87c`  
		Last Modified: Tue, 03 Jul 2018 11:22:25 GMT  
		Size: 73.8 MB (73768827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d2dd597501ce2b68ab21e6e33074134b9278c8252ff6ba49bfe2322d8d7f2b`  
		Last Modified: Tue, 03 Jul 2018 11:22:14 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686fad06395a9f6602ee337069ddedbdba6572a3892dfbba2731533f7868cca7`  
		Last Modified: Tue, 03 Jul 2018 11:22:19 GMT  
		Size: 11.5 MB (11488188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:bc259c903c33491026e32fd16a3ca5c0cff8959ae6e0b5557490e8224485dc04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.2 MB (287182256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7d7d3788e08e015444e645a5eb61666a50b7c0fddfa3b8e12641851d4572dd`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:28:35 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:28:37 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 03 Jul 2018 09:28:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43698884a308c1f9eaa3ed1e3e5840efe11caa149ffddf65654a8cfdafc88b6d`  
		Last Modified: Tue, 03 Jul 2018 09:41:39 GMT  
		Size: 73.8 MB (73771945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a59359d4c033093fe73e0792819bc2b7ffb5015502890c08640b22286a682a`  
		Last Modified: Tue, 03 Jul 2018 09:41:30 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21f3330cb6762689a22ad50a4b27d56d17fb37bc8988e96e0dd9e4e84304cd0`  
		Last Modified: Tue, 03 Jul 2018 09:41:34 GMT  
		Size: 11.3 MB (11293277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f06e2da64a2d80104f8d1a6a44cd60d8fc907ce76123c1f435239ee0d45157a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269763436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2870f03196044e8634245ecff93d2bd5706ae48aedda73a4095a48a838dfa42`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 17 Jul 2018 19:47:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 19:47:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:47:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 19:47:49 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 19:47:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 19:47:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 19:47:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:47:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 19:47:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 19:47:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 19:47:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 19:48:00 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 19:48:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:48:00 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 19:48:00 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 19:48:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 19:48:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 17 Jul 2018 19:50:46 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 19:50:47 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 17 Jul 2018 19:50:57 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:393e590bd6e320e6bf0eede7547d8384ca307c84b0605815c8436b5e23b65974`  
		Last Modified: Tue, 17 Jul 2018 19:57:31 GMT  
		Size: 427.5 KB (427504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005556de212fc56f0419b68fa00388679c242f7dced94d186c3d0d70d414298`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 12.5 MB (12494050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbaf7caa4fabefa12021f73c3a22c73fda6b9ed5b47c4d3ca4f96b7551a8e5c`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f4541503151f8d77b8c27ff2e7065624f395e7e618cd7d06a5ae97a23467f`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac804642cf53949889da6aee40b3e08306c7c2dde51835d7f71526e6e67f0f2f`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e05757a9a43b9f321f25e4789dc7c1918002ec27b054d64c53598d4b14a5baf`  
		Last Modified: Tue, 17 Jul 2018 19:57:59 GMT  
		Size: 73.8 MB (73768646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871ceaabf6ecce2dbc10b571903fa94dc66a5ca6260e17e57731ac84d33e4759`  
		Last Modified: Tue, 17 Jul 2018 19:57:53 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fecee0f9e513773c84c072360d868b7ec2f33576bcc163473298a81f5bcf07`  
		Last Modified: Tue, 17 Jul 2018 19:57:55 GMT  
		Size: 11.4 MB (11419033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile8`

```console
$ docker pull websphere-liberty@sha256:e2daac0358c008d20450ca8d235ac38a50a564eb0ab288b160ec5030cad69352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:fceae0288ed48ad2a9e354d076a4d1ba54705ac5b2e63c58be2bab56be0bc39b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270720671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40daadc8e7da578f6d05bc527e7c11a4fe122b340c92a8b8122fc36bb8d13dff`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 02 Jul 2018 23:19:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 02 Jul 2018 23:20:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:20:14 GMT
ENV JAVA_VERSION=1.8.0_sr5fp17
# Mon, 02 Jul 2018 23:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e502345ad25ac4e3e71eccdd77872aec8bc4ecd02866064cf8493e053d486ca7';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='f8eced52ecfc49cc4d7c7c51317c937beca6b5f4bde465ce77d022278df7cbd4';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f49ea4b093d047b68c4f5782c16a4c56a94c2dbea1c0d51501e29533396db5e3';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8a7805f5a28effdbe61ddf7e52a1dd7ab9f260d9c3c75d01d61146acfeb31f5e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='361f7ed9e34094d94c38d1cc3af9dd6056706a649b87814be95737cc9adbc175';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jul 2018 23:20:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jul 2018 23:52:17 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 02 Jul 2018 23:52:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:52:35 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Mon, 02 Jul 2018 23:52:35 GMT
ARG LIBERTY_URL
# Mon, 02 Jul 2018 23:52:43 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jul 2018 23:52:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 02 Jul 2018 23:52:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:52:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Mon, 02 Jul 2018 23:52:49 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 02 Jul 2018 23:52:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Mon, 02 Jul 2018 23:52:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jul 2018 23:52:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Mon, 02 Jul 2018 23:52:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 02 Jul 2018 23:52:52 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 02 Jul 2018 23:52:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Mon, 02 Jul 2018 23:52:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jul 2018 23:53:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 00:01:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 00:01:10 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 03 Jul 2018 00:01:25 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:8b9a5b216aca4eac2b26b6df07e201f87847ec0c48c9cde37876936fd16490c6`  
		Last Modified: Mon, 02 Jul 2018 23:24:57 GMT  
		Size: 3.0 MB (3020270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5f5b47aa4b848ca8efaba3bf68bd7788ca1e0234d801b19ed882adf792920`  
		Last Modified: Mon, 02 Jul 2018 23:25:09 GMT  
		Size: 127.2 MB (127203892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6079241900f4115802dbf570ba20e262babb64cd48caae717dd741d3267c8c9b`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 421.8 KB (421769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37829784f5a5824867d4447f4ed159264f698cf6a771a4110acfed51f6a0c74`  
		Last Modified: Tue, 03 Jul 2018 00:05:21 GMT  
		Size: 12.5 MB (12494066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf58521af0478a8070d8c8462bcdebe51369ec94d505d4a0dcb1afec939b9c4`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3168c4ef400e7ac6f88039741206d6929b454a49c0c88eb358f30f9e3e284e`  
		Last Modified: Tue, 03 Jul 2018 00:05:18 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f921ca69d1e18c64f7d2c5f6f33773b6f786992598aa75a47930e4c60d1ec2`  
		Last Modified: Tue, 03 Jul 2018 00:05:19 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a977e74f4b1f595b3c1dc0d0e0f67c6718092e9984a284b878c3520a5989d1`  
		Last Modified: Tue, 03 Jul 2018 00:07:34 GMT  
		Size: 72.8 MB (72847949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f38eb762c96b90ed10c5ecc4d9595d479b8b71f44b60d3b27c34f2ad4d8c`  
		Last Modified: Tue, 03 Jul 2018 00:07:26 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731086d0961b4c8c07b4c5460ea0375e1714ed88de88f4a46f7e4b1cec16e190`  
		Last Modified: Tue, 03 Jul 2018 00:07:30 GMT  
		Size: 11.6 MB (11605388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:c4bbddff7297ae1645adc973e1ab619cea68530ef5d6ee1b538247c17cf99eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259317668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea82a65579a5d9b3a018327aff0fb4dca5e0f3c6751f320f518e2cd589a4a7d`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 11:06:39 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 11:06:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 11:07:03 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 11:07:03 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 11:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 11:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 11:07:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 11:07:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 11:07:15 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 11:07:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 11:07:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 11:07:18 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 11:07:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 11:07:19 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 11:07:19 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 11:07:19 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 11:07:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 11:16:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 11:16:15 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 03 Jul 2018 11:16:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:fedba5af1a84e837a25e368a0320a64f22f88cb797c05d826ff4fddc96c72d1b`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 421.1 KB (421122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199e3fd26900f72abd6a012a5e2b0ef47f9cb001cb1e2ffcba278542ae3b70a`  
		Last Modified: Tue, 03 Jul 2018 11:20:31 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02cf11951f3fe8ab378b8d717f502ff0fd592d518f4f9230f6ac3513d650698a`  
		Last Modified: Tue, 03 Jul 2018 11:20:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f865ad97783144ea554f41d0acc85f8a189cb5a4dd77c47c32c733e8cf72cf2`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee7ca3a31582269ce95523f66cfd4da0112a77c559e36735d9e623f39931deb`  
		Last Modified: Tue, 03 Jul 2018 11:20:27 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b354c86ebf1d5521971ebb8a0a20a1fd97d2863cf172186f5d45a8c92b946230`  
		Last Modified: Tue, 03 Jul 2018 11:23:29 GMT  
		Size: 72.8 MB (72847828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0b8ecf810dd3a043152ab32eb1629733875a7370c0c53521e50cfabb24725`  
		Last Modified: Tue, 03 Jul 2018 11:23:18 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79a91d7796bdb53076bbbc3f768ecfa4059a734bf3af29cb3981eb7f26d402a5`  
		Last Modified: Tue, 03 Jul 2018 11:23:24 GMT  
		Size: 11.8 MB (11770046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:235313a82c39ac882983af1f8f8e122f4fe7dc18b02beeb614f87448091768e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286344841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a76a72193190c92b48d4b956083fc688b80a8507c57aa177005907428e9ce1b`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 03 Jul 2018 09:20:30 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 03 Jul 2018 09:21:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:21:09 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 03 Jul 2018 09:21:11 GMT
ARG LIBERTY_URL
# Tue, 03 Jul 2018 09:21:12 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 03 Jul 2018 09:21:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 03 Jul 2018 09:21:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:21:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 03 Jul 2018 09:21:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 03 Jul 2018 09:21:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 03 Jul 2018 09:22:27 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 03 Jul 2018 09:22:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 03 Jul 2018 09:22:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 03 Jul 2018 09:23:07 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 03 Jul 2018 09:23:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 03 Jul 2018 09:23:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 03 Jul 2018 09:23:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 03 Jul 2018 09:34:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 03 Jul 2018 09:34:25 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 03 Jul 2018 09:34:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:a3fb922693b842b726b9b9350a58d2f749ac292999b86e5d2a0c5f20f3edf26c`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 453.1 KB (453055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f09c6530403641fb2539423c2deb37e5a5e9654278c95e1c1a74af16d8eb6a`  
		Last Modified: Tue, 03 Jul 2018 09:40:51 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4335ba77d80824ccfe9fa6ce61455fba4fdd839f2061b4d1f169187cb2ee1a02`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926460548beb81f65108b8c6d697352fdf574971a7a8a241f2d4e4a90f58f248`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fd1ff25857cbd527bb292ee81b1ca44864332ac7bc89bc6b41565c346479eb`  
		Last Modified: Tue, 03 Jul 2018 09:40:49 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caaa5081542d328b6bb05b0af28836a6b8855aa333942ae12e11e3bfc4eec64b`  
		Last Modified: Tue, 03 Jul 2018 09:42:31 GMT  
		Size: 72.9 MB (72851610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc29e2b64fa77d217a121a80afbd865986ffdbb448ee99d364b0d2b0093971b8`  
		Last Modified: Tue, 03 Jul 2018 09:42:22 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5bcbde8f15566d60f66649351a8751b248b7904c6b679c4fadf490c51ddf686`  
		Last Modified: Tue, 03 Jul 2018 09:42:25 GMT  
		Size: 11.4 MB (11376196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d824ff01600070ed16d6c72167fedc5fdbfe2382b5882be8edd7c21f5fc56c32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (268996482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956ff27725e0dd1a29da44927abbb5bd6f7b253e6d758dbd9db77a84b3f5d0d6`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 17 Jul 2018 19:47:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 17 Jul 2018 19:47:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:47:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 17 Jul 2018 19:47:49 GMT
ARG LIBERTY_URL
# Tue, 17 Jul 2018 19:47:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 17 Jul 2018 19:47:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 17 Jul 2018 19:47:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 19:47:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 17 Jul 2018 19:47:55 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 17 Jul 2018 19:47:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 17 Jul 2018 19:47:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 17 Jul 2018 19:48:00 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 17 Jul 2018 19:48:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 17 Jul 2018 19:48:00 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 17 Jul 2018 19:48:00 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 17 Jul 2018 19:48:00 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 17 Jul 2018 19:48:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 17 Jul 2018 19:54:47 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 17 Jul 2018 19:54:47 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 17 Jul 2018 19:54:58 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:393e590bd6e320e6bf0eede7547d8384ca307c84b0605815c8436b5e23b65974`  
		Last Modified: Tue, 17 Jul 2018 19:57:31 GMT  
		Size: 427.5 KB (427504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0005556de212fc56f0419b68fa00388679c242f7dced94d186c3d0d70d414298`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 12.5 MB (12494050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbaf7caa4fabefa12021f73c3a22c73fda6b9ed5b47c4d3ca4f96b7551a8e5c`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337f4541503151f8d77b8c27ff2e7065624f395e7e618cd7d06a5ae97a23467f`  
		Last Modified: Tue, 17 Jul 2018 19:57:32 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac804642cf53949889da6aee40b3e08306c7c2dde51835d7f71526e6e67f0f2f`  
		Last Modified: Tue, 17 Jul 2018 19:57:33 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424e050e28263cf77968ced5e710f06508bba5f7909cf069ee1d9bab7f17d86c`  
		Last Modified: Tue, 17 Jul 2018 19:58:27 GMT  
		Size: 72.8 MB (72848155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6655e6979d997031490b1c3fa654d490596bb014eee3113a3b0856fc680f4041`  
		Last Modified: Tue, 17 Jul 2018 19:58:21 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e392ba9bb6adcd9c6ac15665e73d72b2efafff270e3a464a78ff15fc2d3861`  
		Last Modified: Tue, 17 Jul 2018 19:58:24 GMT  
		Size: 11.6 MB (11572570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
