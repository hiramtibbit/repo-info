## `websphere-liberty:microProfile1`

```console
$ docker pull websphere-liberty@sha256:89a974d11cacd8ab06b503fa2c0f15486b7c3468daddcbd5a4cbb29f371f6836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:16ef8f6e307b023ae57b8ca52382eab54f1505f471fbbae21e642ead6944d5fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285158728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2bcd287927a778dd1d57fb6ce5d7ef1ce44b732ab5219250f1d5c6adc929ce`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:31:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 01:31:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 02 Nov 2018 22:20:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Fri, 02 Nov 2018 22:21:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 02 Nov 2018 22:21:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Nov 2018 23:11:33 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 02 Nov 2018 23:11:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Fri, 02 Nov 2018 23:11:39 GMT
COPY multi:65ecd0d30892283932825fae754d5ad5006b59821ca269614209e67d74f4d177 in /licenses/ 
# Fri, 02 Nov 2018 23:11:39 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 02 Nov 2018 23:11:39 GMT
ARG LIBERTY_URL
# Fri, 02 Nov 2018 23:11:40 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 02 Nov 2018 23:11:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Fri, 02 Nov 2018 23:11:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Nov 2018 23:11:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 02 Nov 2018 23:11:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 02 Nov 2018 23:11:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 02 Nov 2018 23:11:57 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 02 Nov 2018 23:11:58 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 02 Nov 2018 23:12:08 GMT
USER [1001]
# Fri, 02 Nov 2018 23:12:09 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 02 Nov 2018 23:12:09 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 02 Nov 2018 23:12:09 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 02 Nov 2018 23:12:09 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 02 Nov 2018 23:14:00 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 02 Nov 2018 23:23:26 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:23:26 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Fri, 02 Nov 2018 23:23:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28276d7851498aed83f57d54de769785ae5b0c665005245dcbfb33f63c023c1`  
		Last Modified: Fri, 19 Oct 2018 01:34:13 GMT  
		Size: 3.0 MB (3021267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11880c4882d7ad9c1c5ed063479aed6626b604a7c5977d5b453ce38171e19abb`  
		Last Modified: Fri, 02 Nov 2018 22:28:17 GMT  
		Size: 127.4 MB (127440662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a161673215f57fc24e3a29475795b17b66fb7b5b1589722d40043abc8bbd95`  
		Last Modified: Fri, 02 Nov 2018 23:26:21 GMT  
		Size: 425.5 KB (425474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c756f6af4e3648ea007e4a0c959dee2249db1e7cc30af869d40e58875d2b1172`  
		Last Modified: Fri, 02 Nov 2018 23:26:20 GMT  
		Size: 39.8 KB (39844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed7afb1ebe3700ec09e04cbc52786bd140baa8253e49af610027fd995d711fe`  
		Last Modified: Fri, 02 Nov 2018 23:26:22 GMT  
		Size: 12.5 MB (12520533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de4b7acd36b8ea9943217e7470ac2a3e3fd4740412bd0242d6483d36edc1a1d`  
		Last Modified: Fri, 02 Nov 2018 23:26:19 GMT  
		Size: 683.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd8e89433ad118218f43cd3a23cdf2c6d406039b40834480f7e3da970740bc`  
		Last Modified: Fri, 02 Nov 2018 23:26:19 GMT  
		Size: 972.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4757f7f3bfae17640e2329d3691d407e52d6c4d4241dacf2df034743c4edbc`  
		Last Modified: Fri, 02 Nov 2018 23:26:21 GMT  
		Size: 12.5 MB (12521894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371e3457415ac69635e80c77b2b6cb2d84a0cdc38b9db10b250329732c9eb637`  
		Last Modified: Fri, 02 Nov 2018 23:30:30 GMT  
		Size: 73.8 MB (73807748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e990b2330fe650876a27e80888e2f1e04fc46a8a777e62b999e6e967d3a51fab`  
		Last Modified: Fri, 02 Nov 2018 23:30:25 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0002a08b075efe24f412de935dced42057d9dc2ea22e13d330830e720b80d20b`  
		Last Modified: Fri, 02 Nov 2018 23:30:27 GMT  
		Size: 12.0 MB (12024590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:b69a9bbf9b9f1e23883399344d5f56461fc4b1aeed55e8c9462bff1a270b78d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273654582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52e59bd49bf7569b6f22324af37b885ba3e295927d61c1ac22f2024f6d94e19`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 19 Oct 2018 12:42:16 GMT
ADD file:2771ee18ccb3a0a6b045ef2a4d355702c369493d5244dd3bf680221376780e37 in / 
# Fri, 19 Oct 2018 12:42:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:42:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:42:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:42:18 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:47:07 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 13:47:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:47:15 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 19 Oct 2018 13:47:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 19 Oct 2018 13:47:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 19 Oct 2018 14:13:46 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 19 Oct 2018 14:13:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 24 Oct 2018 10:41:32 GMT
COPY multi:65ecd0d30892283932825fae754d5ad5006b59821ca269614209e67d74f4d177 in /licenses/ 
# Wed, 24 Oct 2018 10:41:33 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Wed, 24 Oct 2018 10:41:33 GMT
ARG LIBERTY_URL
# Wed, 24 Oct 2018 10:41:33 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 24 Oct 2018 10:41:37 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 24 Oct 2018 10:41:37 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Oct 2018 10:41:38 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Wed, 24 Oct 2018 10:41:38 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 24 Oct 2018 10:41:40 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 24 Oct 2018 10:41:40 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Wed, 24 Oct 2018 10:41:42 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 24 Oct 2018 10:41:42 GMT
USER [1001]
# Wed, 24 Oct 2018 10:41:42 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 24 Oct 2018 10:41:42 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 24 Oct 2018 10:41:43 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 24 Oct 2018 10:41:43 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 24 Oct 2018 10:42:03 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 24 Oct 2018 10:50:25 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:50:26 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Sat, 27 Oct 2018 13:18:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:5be2374a5e1d8357d7b4b6e6c599bfb97e7ac60e347f2a0593c2e13ec9fdef71`  
		Last Modified: Fri, 19 Oct 2018 12:45:04 GMT  
		Size: 43.6 MB (43582407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9364a60af5db1019b325953424c8dd43fcff674830ff20a10cfcd5e1b150e5a9`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc52ae61cb7946f8eed2a6a0064c124bb6bf33beae72f115c056589a93c9e0`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2de2ebafad38a2c63f30d22f5474029b85c279bf03d4fb5a47fdb3183ebf22c`  
		Last Modified: Fri, 19 Oct 2018 12:44:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e91de9574f1c794efec4853625929b824a80cfefffbc8ac6d9c9adf64ab9c`  
		Last Modified: Fri, 19 Oct 2018 13:50:00 GMT  
		Size: 2.9 MB (2876528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42874c5255929b6af403a5bbb238791d57d3904844c069ae764f538659abeaca`  
		Last Modified: Fri, 19 Oct 2018 13:50:13 GMT  
		Size: 115.7 MB (115749614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfb5b32c6bfde7a0bb83ac3576827635e062f4909011e78c0b6c3bd6810fc88`  
		Last Modified: Fri, 19 Oct 2018 14:25:53 GMT  
		Size: 424.2 KB (424215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d58f51cc55889766bdec3737f77a48f3911bf66e8d865256a8c74edca69e13c`  
		Last Modified: Wed, 24 Oct 2018 10:53:09 GMT  
		Size: 39.8 KB (39838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2d30408d8793b09db45ff59879e93089d638e5623220acca2d524261aefe36`  
		Last Modified: Wed, 24 Oct 2018 10:53:11 GMT  
		Size: 12.5 MB (12520539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153a9dee135e67bd5159b151ad4d5db2a8e9425d0d3f875e6e5b2b28c2455945`  
		Last Modified: Wed, 24 Oct 2018 10:53:09 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1000467fb9038808577d4fbe7b0216ffa0defeead6af82de6791a0283fdaa665`  
		Last Modified: Wed, 24 Oct 2018 10:53:09 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3891ab6c5882aec429300124cc642a025d122e031efbe5117cf625c3f9ee3eb5`  
		Last Modified: Wed, 24 Oct 2018 10:53:11 GMT  
		Size: 12.5 MB (12521863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d986cee8a138a19411062788d7c6c1ee7ad7951b3c3578e3e0582b5d79a12`  
		Last Modified: Wed, 24 Oct 2018 10:56:22 GMT  
		Size: 73.8 MB (73807712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd960e323a7f4c07576d160cd33a404541dcc5dc8e2d8599afe013a53d030f3e`  
		Last Modified: Wed, 24 Oct 2018 10:56:14 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981d16f6c3f4cd0c1fef675869653a866d14683ed6ebcf32cc68bb8183bcc42a`  
		Last Modified: Sat, 27 Oct 2018 13:21:56 GMT  
		Size: 12.1 MB (12128028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:d7d782ceca4163dbe42aed9ec671fcd1d9e245fe8db57f2781ef902c99be7ebe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301354494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da157204e69a23b74ce23d848e375cafd970ec4f37eb24ba0bca2fe9495d6ab`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 19 Oct 2018 09:18:12 GMT
ADD file:83bbdd1323204fa7e588cfc9ae14a0f79ccc3aec1c2b65a6fa2fe61031ca8526 in / 
# Fri, 19 Oct 2018 09:18:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:18:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:24:20 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 10:24:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 03 Nov 2018 08:18:40 GMT
ENV JAVA_VERSION=1.8.0_sr5fp25
# Sat, 03 Nov 2018 08:20:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9fcca491b709b40400cd43fe35894b890cffef45f07c6f971d8c307e0e10828d';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='72481fb9cb1747c0ef698ad8e795e6bb2e5db23102db110865a53b3c63d5763d';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6e4ec2291f4ae28b69f268617c9969defc1bbe01c728c89cf6ae9f7218774beb';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e235a7bfa2e48234466e54dddfe4f6e2085aab29795e21a3b327fce4945fe01a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='813dca327966269d4bda4a7fae12f52d9e85b5f906934352f831ecda47499a87';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 03 Nov 2018 08:20:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 03 Nov 2018 10:00:51 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 03 Nov 2018 10:01:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 03 Nov 2018 10:01:13 GMT
COPY multi:65ecd0d30892283932825fae754d5ad5006b59821ca269614209e67d74f4d177 in /licenses/ 
# Sat, 03 Nov 2018 10:01:14 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Sat, 03 Nov 2018 10:01:16 GMT
ARG LIBERTY_URL
# Sat, 03 Nov 2018 10:01:21 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 03 Nov 2018 10:01:40 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 03 Nov 2018 10:01:42 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 10:01:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Sat, 03 Nov 2018 10:01:46 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 03 Nov 2018 10:01:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 03 Nov 2018 10:01:57 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Sat, 03 Nov 2018 10:02:28 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 03 Nov 2018 10:02:29 GMT
USER [1001]
# Sat, 03 Nov 2018 10:02:31 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 03 Nov 2018 10:02:31 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 03 Nov 2018 10:02:32 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 03 Nov 2018 10:02:34 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 03 Nov 2018 10:06:42 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 03 Nov 2018 10:20:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:20:16 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Sat, 03 Nov 2018 10:20:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:7ed658e8418de83c169844e4cb1976fd203a10bde1b1bd781ffcc21b87b2bf28`  
		Last Modified: Fri, 19 Oct 2018 09:21:25 GMT  
		Size: 45.6 MB (45646874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4807b07291b49c998842bd0ed325db1cb3a57b98130db09b5206833c709ddabb`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01682f72bbbcb4c8313b50d42d16020793353431f6f427757d8a9b88b3c14003`  
		Last Modified: Fri, 19 Oct 2018 09:21:14 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1bb878e4ec980e14c3e114e8ef030fd23c251f0bf65b6b8be725ace0527b5d`  
		Last Modified: Fri, 19 Oct 2018 09:21:15 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8da819a99ab6afe437db9cd3ebc1c55ca8b27814b1e5afc7af334496ff7156c`  
		Last Modified: Fri, 19 Oct 2018 10:34:41 GMT  
		Size: 2.9 MB (2880585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754f7341f59d474cfdf3a61ae170c670b92f53a22f28b4b9532164b6f01719b1`  
		Last Modified: Sat, 03 Nov 2018 08:25:49 GMT  
		Size: 141.3 MB (141344831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257ba3a1ae5d85ea08a9d2b8ab777454ce977be4bc590fd4433ea0d9c0dc4efe`  
		Last Modified: Sat, 03 Nov 2018 10:24:52 GMT  
		Size: 456.1 KB (456075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8939a42ec1ae65667733877557dfb0649d4f8ca8f4c7f110df794b86e1c9139`  
		Last Modified: Sat, 03 Nov 2018 10:24:49 GMT  
		Size: 39.8 KB (39844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b712626a41bb93c9b912735489c008add08fdc93f2bb63722f0ebc680157ed`  
		Last Modified: Sat, 03 Nov 2018 10:24:52 GMT  
		Size: 12.5 MB (12520604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a798a2d450bdbdbdc4fcefd9e1fe23421c0e67ae5ac626f8561f5ce875515e2`  
		Last Modified: Sat, 03 Nov 2018 10:24:49 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296c6bfc37de1f35d00161f420dbcccb39c3d04a2a53ec467c8b7eaef6d6bba6`  
		Last Modified: Sat, 03 Nov 2018 10:24:49 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c42662d215d9b0b4c408f56961880ea878cab32926732fbe8834ff50cb81d49`  
		Last Modified: Sat, 03 Nov 2018 10:24:52 GMT  
		Size: 12.5 MB (12522009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00941a7bc1346698b06eb774d65c6dd0981ddd808935c7d02069d38d5042ece3`  
		Last Modified: Sat, 03 Nov 2018 10:30:06 GMT  
		Size: 73.8 MB (73812355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b97654525170a429d4eba22dc5726797b9f312b1f268b85e0a771542ef40a3`  
		Last Modified: Sat, 03 Nov 2018 10:29:57 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0ab662a31437628bcdf06449d90395d97477c47e8a699f974f5d66c68bc968`  
		Last Modified: Sat, 03 Nov 2018 10:30:00 GMT  
		Size: 12.1 MB (12127415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f9d5ac5c0f75176f097c86bcc137079d5736f9c30d9b3be88b6e5c26335fafad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.4 MB (283366896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abffdc98945fab7e39fe2c52edcd4697ac7a563b1cbb2e787a00fd08b79a0f7`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 19 Oct 2018 12:51:17 GMT
ADD file:69e301ffa78d77e7d058b6d5717cbda806dafa4fd8831ff69a799b5de46a9588 in / 
# Fri, 19 Oct 2018 12:51:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:51:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:51:19 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:11:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 19 Oct 2018 13:11:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:11:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 19 Oct 2018 13:12:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 19 Oct 2018 13:12:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 19 Oct 2018 13:30:51 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 19 Oct 2018 13:30:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 24 Oct 2018 11:44:29 GMT
COPY multi:65ecd0d30892283932825fae754d5ad5006b59821ca269614209e67d74f4d177 in /licenses/ 
# Wed, 24 Oct 2018 11:44:29 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Wed, 24 Oct 2018 11:44:29 GMT
ARG LIBERTY_URL
# Wed, 24 Oct 2018 11:44:30 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 24 Oct 2018 11:44:33 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 24 Oct 2018 11:44:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Oct 2018 11:44:34 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Wed, 24 Oct 2018 11:44:34 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 24 Oct 2018 11:44:35 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 24 Oct 2018 11:44:35 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Wed, 24 Oct 2018 11:44:37 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 24 Oct 2018 11:44:37 GMT
USER [1001]
# Wed, 24 Oct 2018 11:44:37 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 24 Oct 2018 11:44:37 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 24 Oct 2018 11:44:37 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 24 Oct 2018 11:44:37 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 24 Oct 2018 11:44:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 24 Oct 2018 11:52:42 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:52:42 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Sat, 27 Oct 2018 12:26:37 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:09d85ef3b4600313835e8037960f2578b7b03ecba684a0f382c8c1b665c616f8`  
		Last Modified: Fri, 19 Oct 2018 12:52:16 GMT  
		Size: 42.3 MB (42303016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315cc56d0cc97674f3818c077692a179844efd310fd7e0207864b51af16167b3`  
		Last Modified: Fri, 19 Oct 2018 12:52:09 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd8b63257afccd13d25c7f6ee2333d1f7348037b6f14eab5bee00eaf9aab99`  
		Last Modified: Fri, 19 Oct 2018 12:52:09 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb7e4feb17a1e3db5ca4e2c6649a869c9aa25339cfc790681a2fb5c6dc1060a`  
		Last Modified: Fri, 19 Oct 2018 12:52:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d659ade0f1060deb1ad682f66464451013f886566246b569f363404bb4db24`  
		Last Modified: Fri, 19 Oct 2018 13:14:12 GMT  
		Size: 2.8 MB (2764971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36a6ce20ac704c97958441635e9844fa7ea75810a71bfbb8f5e0be3fe32ba31`  
		Last Modified: Fri, 19 Oct 2018 13:14:25 GMT  
		Size: 126.7 MB (126696482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c5fd437c1061717228ed3c0152636fd29ff43bf9ccba7da6f53b57581fe3`  
		Last Modified: Fri, 19 Oct 2018 13:43:12 GMT  
		Size: 430.3 KB (430256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0628b1667b6594e07ecfb5c17a9d4ea8b12b7d31e8927139c4016b6806d784ad`  
		Last Modified: Wed, 24 Oct 2018 11:55:02 GMT  
		Size: 39.8 KB (39838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc61d7a84ba602591d177ac368e64858db07dcb030dfa11aa30245cd371e19da`  
		Last Modified: Wed, 24 Oct 2018 11:55:04 GMT  
		Size: 12.5 MB (12520534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9844841c44694560ff21465479e5505a5cdc696a7b785a048c9a012c06a65184`  
		Last Modified: Wed, 24 Oct 2018 11:55:02 GMT  
		Size: 688.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb054a99bcf8b85872a19aa82e0413a2efcc08631610b1cc27f06030ee8d910`  
		Last Modified: Wed, 24 Oct 2018 11:55:02 GMT  
		Size: 977.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1454e789a02f6856d974baca03f307b4dff4b5fc00fcc61f28015de4ae5f51a6`  
		Last Modified: Wed, 24 Oct 2018 11:55:04 GMT  
		Size: 12.5 MB (12521889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ba259750f5e07dfa4e999167d10316cd3d9a329363edf057f7c9db49e23a8a`  
		Last Modified: Wed, 24 Oct 2018 11:56:34 GMT  
		Size: 73.8 MB (73808115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca0e8a0eb7d3cfc9f0a22b9b7e6c42f8b5ee966fca3fd7ff542d944d0b6f80`  
		Last Modified: Wed, 24 Oct 2018 11:56:28 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464acca3fd31934539c2930abc8c93e29a3ba983752447af5b29ab9466907dd5`  
		Last Modified: Sat, 27 Oct 2018 12:28:46 GMT  
		Size: 12.3 MB (12277998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
