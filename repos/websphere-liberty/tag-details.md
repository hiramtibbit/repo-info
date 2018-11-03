<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:18.0.0.3-javaee7`](#websphere-liberty18003-javaee7)
-	[`websphere-liberty:18.0.0.3-javaee8`](#websphere-liberty18003-javaee8)
-	[`websphere-liberty:18.0.0.3-kernel`](#websphere-liberty18003-kernel)
-	[`websphere-liberty:18.0.0.3-microProfile1`](#websphere-liberty18003-microprofile1)
-	[`websphere-liberty:18.0.0.3-microProfile2`](#websphere-liberty18003-microprofile2)
-	[`websphere-liberty:18.0.0.3-springBoot1`](#websphere-liberty18003-springboot1)
-	[`websphere-liberty:18.0.0.3-springBoot2`](#websphere-liberty18003-springboot2)
-	[`websphere-liberty:18.0.0.3-webProfile7`](#websphere-liberty18003-webprofile7)
-	[`websphere-liberty:18.0.0.3-webProfile8`](#websphere-liberty18003-webprofile8)
-	[`websphere-liberty:beta`](#websphere-libertybeta)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:javaee8`](#websphere-libertyjavaee8)
-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:microProfile1`](#websphere-libertymicroprofile1)
-	[`websphere-liberty:microProfile2`](#websphere-libertymicroprofile2)
-	[`websphere-liberty:springBoot1`](#websphere-libertyspringboot1)
-	[`websphere-liberty:springBoot2`](#websphere-libertyspringboot2)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:webProfile8`](#websphere-libertywebprofile8)

## `websphere-liberty:18.0.0.3-javaee7`

```console
$ docker pull websphere-liberty@sha256:abea890244ebeea47e07cbdfae882a8d42f0ca13f541b97d076fb6d4af0f5961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:3cbbb435574227c6e1c27accc045909d337a446e84140d60f62f2c2bb8e99470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316316277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0743794e1982498b6420bebbf6063e95b245f2bbff2a8cd785972b91bfb8bc`
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
# Fri, 02 Nov 2018 23:18:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:18:34 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 02 Nov 2018 23:18:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:3772a6907b3726653eea41966bee5191896ab3a01f60c5c8aed4cbab9a16d983`  
		Last Modified: Fri, 02 Nov 2018 23:28:44 GMT  
		Size: 101.2 MB (101178352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38239161c4ad9ea142bd8bb6bc10f4deaefe81fe557b9fac19eba4a7479d17`  
		Last Modified: Fri, 02 Nov 2018 23:28:37 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130d81984d9cc16e62add8a785d9edf5ec0fb5b2397eb525d9cc3dc65a3c46aa`  
		Last Modified: Fri, 02 Nov 2018 23:28:38 GMT  
		Size: 15.8 MB (15811172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:2e4fc9963c2d9168e4721a2c548c95b4a19f81eb6979e051999b08fec4271f4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (305036421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86724040f306c1a9849bea2e4faa1aa1515f2139da3a954205d84e1b382baad1`
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
# Wed, 24 Oct 2018 10:45:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:45:46 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 27 Oct 2018 13:16:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:3cccf89e12ac64ee3d71977cef5dcb8c151ff1f4a482736155d7a5b78422a39f`  
		Last Modified: Wed, 24 Oct 2018 10:54:41 GMT  
		Size: 101.2 MB (101178429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad62178527dec22a3120d2337181c2c7188f252c79064eaeaf920db3b3ce1f8`  
		Last Modified: Wed, 24 Oct 2018 10:54:30 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4839264eb29c7f1176b52302548f63c64d7ac4eafefd36786cf5710e3e51b41c`  
		Last Modified: Sat, 27 Oct 2018 13:20:34 GMT  
		Size: 16.1 MB (16138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:876a10f1e2db449125fd3c9821a8ed03df812947f6040ed4b729179dc5a2010f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.3 MB (332328038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51b4ee295fd454cbecc728be4d2884de401c93d0a96b897ed1120c947339cbd`
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
# Sat, 03 Nov 2018 10:12:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:12:18 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 03 Nov 2018 10:12:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:99ff31a982190636e3b0e78f6ddaa149b75d058b9a7180672afc1db9ba7d993e`  
		Last Modified: Sat, 03 Nov 2018 10:27:49 GMT  
		Size: 101.2 MB (101182487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a8e0a042f1c0fca74fcc27472141e5a6f8ca3df6506518be71e4cba38a196f`  
		Last Modified: Sat, 03 Nov 2018 10:27:36 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff40ff308dbf6c3d5a8ed1df3016efdc302f6d4d718a893b2b5cab1d7bba313`  
		Last Modified: Sat, 03 Nov 2018 10:27:40 GMT  
		Size: 15.7 MB (15730466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:94091dc78905cf52fe0783d25171c490215c30a0d1b8735430e7c098b18ef41e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314335187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a6c5a041b199fa87add8a248be27e2fe34b0daf94f60bc167f84f69674e5a9`
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
# Wed, 24 Oct 2018 11:48:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:48:17 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 27 Oct 2018 12:25:40 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:eb8a438b9794da28d8779bef0d1c33cac57938058db004db87d54be4423a879c`  
		Last Modified: Wed, 24 Oct 2018 11:55:46 GMT  
		Size: 101.2 MB (101178436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9852eeac8888285673cb7d635eadc7ab5fc7d749c9605f693615f52657568fd`  
		Last Modified: Wed, 24 Oct 2018 11:55:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3e1c5dffb6c8e4da542da00e0e797e51c17f30d986ae3c2ad5e74919641325`  
		Last Modified: Sat, 27 Oct 2018 12:28:08 GMT  
		Size: 15.9 MB (15875609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:18.0.0.3-javaee8`

```console
$ docker pull websphere-liberty@sha256:e8e3a24961e2a2aaf12396c6b68b94e8e094fe3f8042b275d710fedaa802103c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-javaee8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:502cdfdb364022e5558e0666c7fdb3f0f3e80f39b2adab44222c89b3db1953d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313433558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94a2768e90ea39e9332d76962dba7cdf7e83061341affecbfd36fa51df4e02`
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
# Fri, 02 Nov 2018 23:20:21 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:20:22 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Fri, 02 Nov 2018 23:20:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:c0a8aab82065b4c023528e4dcc7554710ed6be825d7f5bb9d77c14efbc18bac2`  
		Last Modified: Fri, 02 Nov 2018 23:29:17 GMT  
		Size: 98.1 MB (98137923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02cf17f4279dfa3186be43d3c588805d0d0df7104685b86545598f335533eda`  
		Last Modified: Fri, 02 Nov 2018 23:29:10 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf8cb8e8879f3fa1641e3950cacf9144f19b6a76a236c3e9342d85b45c94710`  
		Last Modified: Fri, 02 Nov 2018 23:29:13 GMT  
		Size: 16.0 MB (15968886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-javaee8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:ce8a0cba3610a8ddc9102337c35908f2a7e3cd8acf79d80634f1163473719c1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302151317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0f68ec78de79337e0b1fb712343d2f4f9be38aa00de60fb4ee49cd160e55aa`
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
# Wed, 24 Oct 2018 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:47:31 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 13:17:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:ddcc290f19f059361cfd2b1ae767381bcf1263c16769a19afd0941e5abbdeaed`  
		Last Modified: Wed, 24 Oct 2018 10:55:12 GMT  
		Size: 98.1 MB (98138140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9f8b9c90aac96780fd92bcc189e7ecf371754d85a9b0ba1b1502bf1b73bb2`  
		Last Modified: Wed, 24 Oct 2018 10:55:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69690a07028af432c8c8d22977e5688b0aa6edaa036a27d1cdb4e86942e98127`  
		Last Modified: Sat, 27 Oct 2018 13:20:58 GMT  
		Size: 16.3 MB (16293979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-javaee8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:dc314f4de50f6da80c40897f551a6513ba5d480c94dd1146e68c65e7c39d1cff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329385818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7607a6fab10cbcc293551ff0f2e0803f47bf4d6c689a3ffee1968dccc37aa0de`
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
# Sat, 03 Nov 2018 10:15:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:15:19 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 03 Nov 2018 10:15:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:490765cff12a48898971eb55b1160b94cca2e1fd2b16e502938cd55891748060`  
		Last Modified: Sat, 03 Nov 2018 10:28:34 GMT  
		Size: 98.1 MB (98138669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973a3ef91896782dc82129d348acc4380f7905be31258adbbdecc78c4dd445dc`  
		Last Modified: Sat, 03 Nov 2018 10:28:19 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84c3cca23ce2d913f5445670e4884bb1dc2f6e4a3a0dd5d8792859a919d9c10`  
		Last Modified: Sat, 03 Nov 2018 10:28:24 GMT  
		Size: 15.8 MB (15832063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-javaee8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d60f1e24a43b2e20308edd002df74fe00a02e72bf776a7469147f43d1de3e4c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 MB (311379042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b180555f819e41cc43e5ab362d1f88506a655b2bf447d5f4c02284a59a985b0`
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
# Wed, 24 Oct 2018 11:50:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:50:05 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 12:26:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:defb2a5672efbe71838363cd36adb4dc12483f077fd99e8554b0f01cd3d9fdf7`  
		Last Modified: Wed, 24 Oct 2018 11:56:01 GMT  
		Size: 98.1 MB (98138097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e587f78835475da9cee45963f8a2923f4a3094835df7fe1213b5874d076815`  
		Last Modified: Wed, 24 Oct 2018 11:55:54 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10646d5a5bb2f682908e1286a9fb2d46f1a1b209edd50a27daa8f5497f3a16`  
		Last Modified: Sat, 27 Oct 2018 12:28:22 GMT  
		Size: 16.0 MB (15959801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:18.0.0.3-kernel`

```console
$ docker pull websphere-liberty@sha256:f61cfbf2983bcc59db00a2a4d25e794e627ef306e0dfed3dc010892ab0f3b31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:70171e01672de8d6fda8380beb2c48da00e4099964a30134c1d41afececba6d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199325817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35024447bc128db8c943e301ecfea4289723e856d2ded0b03ab1dbec22398a58`
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

### `websphere-liberty:18.0.0.3-kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:1f9d7403b05e0cf667dae87fd21703346029207dfa6fff122648acd260318351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187718267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4019730b3e7cf3b60ba467cba0002188365d4f8a04a3e1f6b8ef2f3f0a7c235b`
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

### `websphere-liberty:18.0.0.3-kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e4b57c490b4d0e195222ad61cf0413c65fec21465b383d9368fa7ef5ca72d9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215414150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dab1d6e024a5bc3bb4a899b8751437da9b13cfa8ef68ae15779c5428e0cbc15`
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

### `websphere-liberty:18.0.0.3-kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:a97c2bd068bc5e794ffd1049410aac7bd22b893412c79caab9a434acdfeca804
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197280208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c33d9db65d539121fe7c247ec8d2659247ba4db1982feed838117060fefbfa0`
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

## `websphere-liberty:18.0.0.3-microProfile1`

```console
$ docker pull websphere-liberty@sha256:89a974d11cacd8ab06b503fa2c0f15486b7c3468daddcbd5a4cbb29f371f6836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-microProfile1` - linux; amd64

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

### `websphere-liberty:18.0.0.3-microProfile1` - linux; 386

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

### `websphere-liberty:18.0.0.3-microProfile1` - linux; ppc64le

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

### `websphere-liberty:18.0.0.3-microProfile1` - linux; s390x

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

## `websphere-liberty:18.0.0.3-microProfile2`

```console
$ docker pull websphere-liberty@sha256:01979cdd9829738b6bea12cffcdb31aa6b1a100a86c389e24f29e068f937688e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-microProfile2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:f60a7fb03b62e6568f82d15fd02e1f5aea6c60f6842dfe1ba942866713d9449b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293904990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9fee4ab268185d0f94d50af6432812581aa0a00d7c222afd8768c93e8e7c68`
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
# Fri, 02 Nov 2018 23:25:01 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:25:01 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Fri, 02 Nov 2018 23:25:14 GMT
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
	-	`sha256:48658824568944ea5b4134be2731a6570f65c03963527175188306e852abdbc5`  
		Last Modified: Fri, 02 Nov 2018 23:31:02 GMT  
		Size: 82.5 MB (82530843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef25db058392e2b95c2c78077361af6dd05df8d1832e8df5868a2bca5081c7d6`  
		Last Modified: Fri, 02 Nov 2018 23:30:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d658319e57c5edd9a5fabd962b8d5b3161cc0c972c5af510161b5ecb5380fc`  
		Last Modified: Fri, 02 Nov 2018 23:30:58 GMT  
		Size: 12.0 MB (12047757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-microProfile2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:128d4f5ca847272cce5ab87e1356f79f9f9b03e8fb88ac3f3554d2eb208a813e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.6 MB (282572902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e6b54724cc80e616315dc067d9b4603c179b1c542a431dbf78c05ee3f2ba5c`
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
# Wed, 24 Oct 2018 10:52:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:52:00 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 27 Oct 2018 13:18:36 GMT
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
	-	`sha256:63396387f2363b52ff9f3b53bc4ad04bb49f649301d9435ad8349da93483c5e6`  
		Last Modified: Wed, 24 Oct 2018 10:56:52 GMT  
		Size: 82.5 MB (82530894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d48784b3b32092a3ca6859629a622b88aaa390f980ac07b8c5a8e83fd69c005`  
		Last Modified: Wed, 24 Oct 2018 10:56:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0cf420c8c5e49b97be8a923c8323d9c97030f3ffd9310dd286ebcf485c44de`  
		Last Modified: Sat, 27 Oct 2018 13:22:21 GMT  
		Size: 12.3 MB (12323169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-microProfile2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e6ebafea8aead6d147fa578fa4e0f1490848d5602b4679ad0667e7e59350ad91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310228484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541500f189402c53551af26b02d928c17fec5a3e211e425255ba7f256c6b4c39`
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
# Sat, 03 Nov 2018 10:22:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:22:45 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 03 Nov 2018 10:23:02 GMT
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
	-	`sha256:c876223f1cc12b7131744a15243021e3235adfa4b12fe84d626f3dfa0c781c4f`  
		Last Modified: Sat, 03 Nov 2018 10:30:51 GMT  
		Size: 82.5 MB (82534911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa019737a3678d23fe1a95b9a0a4ea2c442085f4242409fb1a5321679ce4383`  
		Last Modified: Sat, 03 Nov 2018 10:30:40 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35abdf4ac113fa266980956853d96915a352cea7052b21d500c55c988dc11da6`  
		Last Modified: Sat, 03 Nov 2018 10:30:43 GMT  
		Size: 12.3 MB (12278849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-microProfile2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:fdd35b67f7ef6a04f9b02813b207746bb9053dd53c7c3a287f487584f9984597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490105bdd1d13b7b430886ca215520865e88372e5fc638c4d849270793d5793c`
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
# Wed, 24 Oct 2018 11:54:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:54:10 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 27 Oct 2018 12:26:59 GMT
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
	-	`sha256:956b0509d62f12f8b8b3bf38feb7b3a700bc1d5eebdb4e9f419d6d4cc7e9cc15`  
		Last Modified: Wed, 24 Oct 2018 11:56:50 GMT  
		Size: 82.5 MB (82530897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f4611666aa6ead38f651abca8fe8b91ed193bd7c95d87d85305171abc9f6a8`  
		Last Modified: Wed, 24 Oct 2018 11:56:44 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c676fbe50f7b9389f4e5680bac345065b778711b181b8db0a2b532d703cfa3`  
		Last Modified: Sat, 27 Oct 2018 12:28:57 GMT  
		Size: 12.2 MB (12183416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:18.0.0.3-springBoot1`

```console
$ docker pull websphere-liberty@sha256:265005aa68382b0926d908b556fd4cf11293e465b0ad8d9513cfd473fa199cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-springBoot1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:aef394c8ca39ff1c4737cb23aeed08a2071830e89ce777be05d3ea4aaac4615f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231447246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f81953ae43d519a93dd255e9d4d503ce9e18d3f29a91bb3f99c3c8a66c067`
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
# Fri, 02 Nov 2018 23:14:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:14:19 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Fri, 02 Nov 2018 23:14:28 GMT
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
	-	`sha256:db73402870b3d1e52324454a913eb89362a24b1ac6618a89de585ce0d68a7459`  
		Last Modified: Fri, 02 Nov 2018 23:27:36 GMT  
		Size: 23.6 MB (23626803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f6d7bb7d6cf4175193179164bbd79a6cfd14c1c4ac5635985dc23ecaf13b`  
		Last Modified: Fri, 02 Nov 2018 23:27:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed34ccb1366c3d4d17176965d4ecd4fbfa3eabd06dc76861e30089ae9470db4`  
		Last Modified: Fri, 02 Nov 2018 23:27:37 GMT  
		Size: 8.5 MB (8494068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-springBoot1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:f1ba32ea0cb772a7121c264c3233d6120270c204bead128577797010d3814a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220014334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4e8fb12d4d33566b3ee6578c9a57fcdd690e53220a48bef1af09e0cd725c80`
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
# Wed, 24 Oct 2018 10:42:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:42:23 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 27 Oct 2018 13:15:44 GMT
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
	-	`sha256:abe8bd9778d0f8f2713714f09d43e7f899c857169ffa5375bba38ed7463e84c2`  
		Last Modified: Wed, 24 Oct 2018 10:53:35 GMT  
		Size: 23.6 MB (23626835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b5752ec0bcf894a4056ebbb5b909950d66b97444225c6d52900974521f2720`  
		Last Modified: Wed, 24 Oct 2018 10:53:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d1506216790a7fa2eabebc33d41471a70bd992c0780fcaeee47a15d84cc57d`  
		Last Modified: Sat, 27 Oct 2018 13:19:44 GMT  
		Size: 8.7 MB (8668675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-springBoot1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:b331a7650cea0a8210ecda4bfe4aadd3bab950f2386dccba62929b0b1d65de5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247381509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ad9b9807db4dc6b6b4d9755e4a7b23254ff22be73c4b81e52a930215ea9714`
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
# Sat, 03 Nov 2018 10:07:12 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:07:13 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 03 Nov 2018 10:07:26 GMT
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
	-	`sha256:d4957ffb9397a6130814f6e92161160b41b8cd5c80de24607d0b836dd1a8a055`  
		Last Modified: Sat, 03 Nov 2018 10:26:11 GMT  
		Size: 23.6 MB (23627677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af89f09e603ecf84666c3fe6e5688b78067e60780723485a9605f673b1652c0a`  
		Last Modified: Sat, 03 Nov 2018 10:26:07 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972c25c822dd099a09ebc397726b6c6abcdaf3a5e2f58c954b53d15f189f6345`  
		Last Modified: Sat, 03 Nov 2018 10:26:11 GMT  
		Size: 8.3 MB (8339126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-springBoot1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:c0e56ef756cbab6debfa776064862808c7c40c285c1c361bbf4fcbdbdfee4a31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229259339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8a8fe44b2a947f9667c2a249118115eef3068b237be548c9cc84dff471f2c0`
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
# Wed, 24 Oct 2018 11:45:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:45:04 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 27 Oct 2018 12:25:00 GMT
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
	-	`sha256:785e4d38e591c881c66534cc015abfe71f7c7e5e0ece3cb0a0b2bf67059e3493`  
		Last Modified: Wed, 24 Oct 2018 11:55:15 GMT  
		Size: 23.6 MB (23626886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42abb507c813d7b046d3a9b133d11e71c683108bdad9c335b15a5302f9ce3243`  
		Last Modified: Wed, 24 Oct 2018 11:55:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa46631dba9cc1734731d8a985db4a8ddd4927996704d44a06a5e757a0969115`  
		Last Modified: Sat, 27 Oct 2018 12:27:45 GMT  
		Size: 8.4 MB (8351691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:18.0.0.3-springBoot2`

```console
$ docker pull websphere-liberty@sha256:93a142e06b8d9f29307fc7a96b3ea661fbad31ee89d4c928a95f64a6714abe2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-springBoot2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:0734c1b54591549675e5574c14c44a1adc727fe767a8c642522028236466193c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231361375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529a949c3cf53bf1c49e42a1b41ab5764ff8503891fcc5e71bf7dafe85ae7a1c`
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
# Fri, 02 Nov 2018 23:25:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:25:52 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Fri, 02 Nov 2018 23:25:59 GMT
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
	-	`sha256:617af841d0fb34d8b8e7b99c008f003b22d067fc68de124c3183d670417de9c6`  
		Last Modified: Fri, 02 Nov 2018 23:31:43 GMT  
		Size: 23.6 MB (23629287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e285d9267a11fb9a594c545546eb730ae6490168c504ab7a7c574faf9a441a07`  
		Last Modified: Fri, 02 Nov 2018 23:31:39 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d66f19da58d7cb88a6709b485147097843aae6ef201765f38a7abeb1783321`  
		Last Modified: Fri, 02 Nov 2018 23:31:42 GMT  
		Size: 8.4 MB (8405715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-springBoot2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:6521dbf116f74a324cb33e91b280c985d90e2b7455ea22b24946bc1313e166b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (219955811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198c126e936354ad9e4aa65fe943df0c90e9e1bb5ad45efa4000a0c78de4251f`
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
# Wed, 24 Oct 2018 10:52:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:52:44 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 27 Oct 2018 13:18:57 GMT
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
	-	`sha256:201e91b61ce9bd5c62289c95ba2f17faee181824a57bfbf02cb61ceaa6507444`  
		Last Modified: Wed, 24 Oct 2018 10:57:29 GMT  
		Size: 23.6 MB (23629314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d46fe20304f4767188b6ffe27fa0b2828553bb8e1b1a569d36867ee3489be1`  
		Last Modified: Wed, 24 Oct 2018 10:57:25 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8433e79b5395ae855362ee870e2ea5001a68f5a9beda3dbddda640d6e860c3`  
		Last Modified: Sat, 27 Oct 2018 13:22:55 GMT  
		Size: 8.6 MB (8607672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-springBoot2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:de7c158dff940850e92396f2f2e4dd51bd3435c3cc90f2062dcfbc1aed026150
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247376028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174649dda259dde9945c09ec5e3e688202df75937dd410520bf678deb12f7f95`
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
# Sat, 03 Nov 2018 10:24:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:24:14 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 03 Nov 2018 10:24:24 GMT
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
	-	`sha256:ae0f3d040eebb35a1a98e97577ada9fac3a0d72c6bd6f50f37ef68fefa8a514d`  
		Last Modified: Sat, 03 Nov 2018 10:31:36 GMT  
		Size: 23.6 MB (23630193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f6d923378429d182dd38a8939848ccce786e801128f450b31513def3df6c5`  
		Last Modified: Sat, 03 Nov 2018 10:31:33 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031a6e5aee327034a475ca5843c739eb1fcc3cd706ee3c52732dbd1c4cf6761e`  
		Last Modified: Sat, 03 Nov 2018 10:31:36 GMT  
		Size: 8.3 MB (8331128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-springBoot2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2702fda9c37d0cb3d7b3e3282a9cd1d7e93004a8f63b34cbb8fa4e3596c5bd58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229345750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568b199a04222db0ff3eab1cb3bcdb3acc51481db742fdc47ba799ce896fed8d`
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
# Wed, 24 Oct 2018 11:54:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:54:45 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 27 Oct 2018 12:27:14 GMT
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
	-	`sha256:b833b11ba5503fc2ed3b1e0cae2edd3a37e76926dc2a7e2331ca2b5ef319d4d9`  
		Last Modified: Wed, 24 Oct 2018 11:57:04 GMT  
		Size: 23.6 MB (23629374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5800bb6e0ca03e1a7ff7dcb2062883a62b7037c6e6795bd55fdc2c073892a32`  
		Last Modified: Wed, 24 Oct 2018 11:57:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606266a238f9d8af5d3f43d2e9ba2fa62d8fb82b36d3483e1da74d11424db9ff`  
		Last Modified: Sat, 27 Oct 2018 12:29:11 GMT  
		Size: 8.4 MB (8435611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:18.0.0.3-webProfile7`

```console
$ docker pull websphere-liberty@sha256:6d6a52d68a64948741e675cb3cad07b3c4ae8256f4c761dc7ae8991ae2db0cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c57e45920efff9db5e5d755290e3049f04131bdcbe26b61bacb72a84e0ac3b28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291271460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9651de79e3520c46aaa689a5587a29ad48cac9ed30d27eb0c501100a11aa0f4`
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
# Fri, 02 Nov 2018 23:16:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:16:24 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 02 Nov 2018 23:16:40 GMT
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
	-	`sha256:bd1abd33a2f819e1d99b78506293dbf73fec0d27b2a95d16283bd424a1d77756`  
		Last Modified: Fri, 02 Nov 2018 23:28:08 GMT  
		Size: 80.6 MB (80577155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1001d6f5ec33064ab52af6e9ab701bf0c8d95033d950bb3902fe1ee66338ee8`  
		Last Modified: Fri, 02 Nov 2018 23:28:01 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8221d79d192566c2b4b6dcd74dec74fbe30d29b06c4091dad3ba098e8db34a88`  
		Last Modified: Fri, 02 Nov 2018 23:28:04 GMT  
		Size: 11.4 MB (11367918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:305a8987249f56bfbcf8e7dd2110366371871a9953b2ccf29f6a05dcbc645820
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279871731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d012ef3fd3981d6a6945cd175939e8bfd9a2752fd7cdfd3542624e19e6e7400f`
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
# Wed, 24 Oct 2018 10:43:53 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:43:54 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 27 Oct 2018 13:16:11 GMT
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
	-	`sha256:737392654d89c8151cc639fade3c07bdddedeecd836ebf6c8fa69be4fd446198`  
		Last Modified: Wed, 24 Oct 2018 10:54:09 GMT  
		Size: 80.6 MB (80577400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aa3aae26e9b1b1aabca286769adf4093aad2e9098c79b0a03270944eb004a8`  
		Last Modified: Wed, 24 Oct 2018 10:54:00 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961f5ab371bf6d764f35b9abe59898ce52879fefa300be58cd4f885070026176`  
		Last Modified: Sat, 27 Oct 2018 13:20:08 GMT  
		Size: 11.6 MB (11575497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:02dea7856e437b9ed7033dee598b0dd6a067e796eb8c389a3b4321dfd73476e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307429491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30d52e999004934e1f3abcbce93c69bacb8f36c1eef8fb02bdabcca382afa37`
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
# Sat, 03 Nov 2018 10:09:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:09:17 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 03 Nov 2018 10:09:41 GMT
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
	-	`sha256:b2656d11851e9c18c2253d63b40d5d1e38a6b1a2149b1d7ff48dfcea3a89e749`  
		Last Modified: Sat, 03 Nov 2018 10:27:00 GMT  
		Size: 80.6 MB (80581173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba655673f8fb491090bfdd104ed4806114285ac033e46229198edbe4996a20`  
		Last Modified: Sat, 03 Nov 2018 10:26:47 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad98bd66e84fc86dc13b2cbca02c20c7c3e96c53127a2dd6b091bd403652db39`  
		Last Modified: Sat, 03 Nov 2018 10:26:51 GMT  
		Size: 11.4 MB (11433601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:3e97f6bd4797520e0595a32733a75d6c3a8bad9d42237e849f50fa9d79a04ae7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289276139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef79b196b6ebf7af2326861f937cfa6e52a2ba002a8082a855d0b08e343b4e3`
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
# Wed, 24 Oct 2018 11:46:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:46:28 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 27 Oct 2018 12:25:19 GMT
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
	-	`sha256:b2db94f4d5f998e259120b3a29f7d43f00d6256570543536659a8607b7848da0`  
		Last Modified: Wed, 24 Oct 2018 11:55:30 GMT  
		Size: 80.6 MB (80577260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf4a7bf96fc416a3606971d6fdad9421d4ba58f5f772ed4f3e348c3321dbfe9`  
		Last Modified: Wed, 24 Oct 2018 11:55:23 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54ae953d53f953769672354823d672d8cfd39de161601f2c5a953293325264`  
		Last Modified: Sat, 27 Oct 2018 12:27:56 GMT  
		Size: 11.4 MB (11418104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:18.0.0.3-webProfile8`

```console
$ docker pull websphere-liberty@sha256:ff330fcd187652e5af279af8a4d5d3558730b2245505c433204189ecf6cc11ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:18.0.0.3-webProfile8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:a6975c5a5016337944f1b98f900f7c6ae84627e98a943ce6b22009341746cb13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278141306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8479e4b322efe81708cf2d25d488f99207c3523a7c58b97b6ac13cef5932cc47`
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
# Fri, 02 Nov 2018 23:21:52 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:21:52 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Fri, 02 Nov 2018 23:22:05 GMT
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
	-	`sha256:c10b456a9496fb9373d1de2ba829af4979fcb00066f04c87d02fb5a9c8c8d40a`  
		Last Modified: Fri, 02 Nov 2018 23:29:59 GMT  
		Size: 67.2 MB (67230882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a01464b600619a43df26e991aeb25199f972918b5b408445a68026c14d869c`  
		Last Modified: Fri, 02 Nov 2018 23:29:54 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ea9bbb1f7c8011d68294e6c9dbaceb1fcca88e2df27a3a41286425af3c7596`  
		Last Modified: Fri, 02 Nov 2018 23:29:57 GMT  
		Size: 11.6 MB (11584037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-webProfile8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:7856a2de264b99a59fcb8ff5ee924c4b5feeb86f00eaf5de36226f6b36f82e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266629280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc24eb3e22d1c99165e1845212ce7be7370a0b6e0e2d62be76bb2a85c7972fe`
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
# Wed, 24 Oct 2018 10:48:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:48:56 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 27 Oct 2018 13:17:41 GMT
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
	-	`sha256:2fd52ee4d425cc2df7272bb18a1480e2b7fdc40c831171c4ee8e00ef311a469b`  
		Last Modified: Wed, 24 Oct 2018 10:55:51 GMT  
		Size: 67.2 MB (67231131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329441d249d8ef9d529aa35cf4b97af36eb662edfdeab2555a64afd03ecdeb2`  
		Last Modified: Wed, 24 Oct 2018 10:55:42 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e7b01aa696f70e3ed8b7b2db4f6146f50dc8ae2c0aef711ce05508ac56cf7e`  
		Last Modified: Sat, 27 Oct 2018 13:21:32 GMT  
		Size: 11.7 MB (11679314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-webProfile8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:2b294d17b78357d333e4e97464d75abf1b64d5f8aee97067e7d35f4fe810b878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294122516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121face9e02bcb7c04863a229aebe92d56dd128696eafc8fe7937da1030ee243`
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
# Sat, 03 Nov 2018 10:17:46 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:17:52 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 03 Nov 2018 10:18:09 GMT
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
	-	`sha256:a999a6ca4eee6d26ec4402ecf351d16e763a8141cce7c9f44ab11faeb06508b5`  
		Last Modified: Sat, 03 Nov 2018 10:29:28 GMT  
		Size: 67.2 MB (67233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6cfeafb7c62b188f654fe51ab6c8d6697080e176ab111819006892ac57da4b`  
		Last Modified: Sat, 03 Nov 2018 10:29:19 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a524bf6d65a30045d323dcea30f0d765b18ad5355b35d51480eeccfd1fb62025`  
		Last Modified: Sat, 03 Nov 2018 10:29:24 GMT  
		Size: 11.5 MB (11473995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:18.0.0.3-webProfile8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:dcffce3826bbe406e6bfed79859e924b1251c0fc7f8c96995de641ce26e5d542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275947388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a03fab1d3b2dcab5331f72c4cb0acb2de7e443110f2b10f0c6b162ea3a3128`
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
# Wed, 24 Oct 2018 11:51:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:51:20 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 27 Oct 2018 12:26:20 GMT
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
	-	`sha256:44b72d9a054523311901e6d5e50d1b3de1f224d7e783dd1da4759467113ecbb1`  
		Last Modified: Wed, 24 Oct 2018 11:56:20 GMT  
		Size: 67.2 MB (67230931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be7d2d45e8d31d95654424ad1a8724772cdb9145cbbd45dc434fcb8572f6445`  
		Last Modified: Wed, 24 Oct 2018 11:56:14 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3210591dadc4a5f6677b070d13d60674ce5c39446d8feccc9fdf604336e8e81a`  
		Last Modified: Sat, 27 Oct 2018 12:28:35 GMT  
		Size: 11.4 MB (11435680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:6453c124f6e69b6975d746f4ab458ef6c047d1628ef6bdbaa19bb2d551468fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:779f71cfe0dc2cac35fd5a25ae98bd0f43877c6e438b0508f3216473672a0d24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.9 MB (378882151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93d7f8bfd908edfde10ecfd581a5300ee7406c68bc0753e9e648b6a43caa9ac`
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
# Fri, 02 Nov 2018 23:12:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Fri, 02 Nov 2018 23:12:42 GMT
ENV LIBERTY_VERSION=2018.10.0_0
# Fri, 02 Nov 2018 23:12:56 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Fri, 02 Nov 2018 23:13:05 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Nov 2018 23:13:06 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 02 Nov 2018 23:13:07 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 02 Nov 2018 23:13:08 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 02 Nov 2018 23:13:14 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 02 Nov 2018 23:13:22 GMT
USER [1001]
# Fri, 02 Nov 2018 23:13:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 02 Nov 2018 23:13:23 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:f4dbb69b5680ad434d32bb36f8e64ecc723f1f13511bb1a68b30da6f9c28f865`  
		Last Modified: Fri, 02 Nov 2018 23:26:48 GMT  
		Size: 425.4 KB (425446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65797c688840e60fa0cac2da0e659f5066d33fc7a46149dffddafabbf9c7d8de`  
		Last Modified: Fri, 02 Nov 2018 23:27:20 GMT  
		Size: 102.3 MB (102318859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b945c70f591f87e770550d8d4069854dbc43e63057ce2715a842ad82700b`  
		Last Modified: Fri, 02 Nov 2018 23:26:48 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfa4018238c56a8e3d2483de7b1594b52c6353d9c319e4b900fcdd064f2f76c`  
		Last Modified: Fri, 02 Nov 2018 23:26:47 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7bb61effbd1b779ad6a3f7784e4713e51c1a439358faa8b631d7cef633a325`  
		Last Modified: Fri, 02 Nov 2018 23:26:56 GMT  
		Size: 102.3 MB (102319387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:5dff73191acd2832fe34dcd183ab9f5d1cd960eac885ccbd141bbdeda8501fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.3 MB (367274653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362f5d0d3e8ea7ed5226d94fc17d51ca9ab9482a9bc5cd7626229aee64927225`
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
# Fri, 19 Oct 2018 14:14:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 27 Oct 2018 13:14:54 GMT
ENV LIBERTY_VERSION=2018.10.0_0
# Sat, 27 Oct 2018 13:15:11 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 27 Oct 2018 13:15:11 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Oct 2018 13:15:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 27 Oct 2018 13:15:13 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Oct 2018 13:15:14 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 27 Oct 2018 13:15:21 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 27 Oct 2018 13:15:21 GMT
USER [1001]
# Sat, 27 Oct 2018 13:15:21 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 27 Oct 2018 13:15:21 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:1d80d39f8ca9d94b892446f429abe3532e26062543190d573742d1c9a8fac4d6`  
		Last Modified: Fri, 19 Oct 2018 14:26:08 GMT  
		Size: 424.2 KB (424204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee217a2ce401cc79658b3fa499d6ae23a5974b0593d5f47f30bb4fd19d9dd8`  
		Last Modified: Sat, 27 Oct 2018 13:19:28 GMT  
		Size: 102.3 MB (102318861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace26656f1b845ad7b9baac6c1971492d3ee761299a1f2df197636ef87e01ed5`  
		Last Modified: Sat, 27 Oct 2018 13:19:15 GMT  
		Size: 1.6 KB (1613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3a9d2f1c8bc234ee7ac6ecbc3bc2317bd230e586c59567cb2291c33e62ff90`  
		Last Modified: Sat, 27 Oct 2018 13:19:15 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd72d93735a91faef654b45d9a739eb0cf85314f2a35262c0772e93f91f8d03`  
		Last Modified: Sat, 27 Oct 2018 13:19:28 GMT  
		Size: 102.3 MB (102319395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:1b30076d3bb4088fe95d0bc48b910b176f034d00e1672811536dd300cf5180bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.0 MB (394970362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f086f2f33c5f978598b2a1341004a8b31ef0e0c65f63b56ca47ff0b5be88bc2`
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
# Sat, 03 Nov 2018 10:03:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 03 Nov 2018 10:03:18 GMT
ENV LIBERTY_VERSION=2018.10.0_0
# Sat, 03 Nov 2018 10:04:21 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 03 Nov 2018 10:04:22 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Nov 2018 10:04:23 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 03 Nov 2018 10:04:30 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 03 Nov 2018 10:04:31 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 03 Nov 2018 10:06:26 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 03 Nov 2018 10:06:27 GMT
USER [1001]
# Sat, 03 Nov 2018 10:06:28 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 03 Nov 2018 10:06:29 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:2932a2e15d50e794c6414484ee4845bf216d299f1c613cba0405a126d5e029e4`  
		Last Modified: Sat, 03 Nov 2018 10:25:30 GMT  
		Size: 456.0 KB (456011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d2d84f70595a4c3ea64435727c8837432d1655e846aed239060462a3c9d6d3`  
		Last Modified: Sat, 03 Nov 2018 10:25:46 GMT  
		Size: 102.3 MB (102318930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effbfa166299046693b03adb8db75c277a644fb1ee89556a8589218ab6351cfc`  
		Last Modified: Sat, 03 Nov 2018 10:25:29 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7799faa35ebac90e911a89f65bffe4b17473d719453f0297b356b4314ce51e`  
		Last Modified: Sat, 03 Nov 2018 10:25:29 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6d3702458e8649c8b28e845de0242fbb576e896694976d2c529c2ac94c2f23`  
		Last Modified: Sat, 03 Nov 2018 10:25:44 GMT  
		Size: 102.3 MB (102319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:99ecb9df2d1e1724c3afc31a3adf707ecb68941f6a15fac8a5a57c5447ed5619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.8 MB (376836626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12351f3fa7c155c20d7ced0589ff57e5c219e2e4ec9d75207c36860faa5cadc5`
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
# Fri, 19 Oct 2018 13:31:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Sat, 27 Oct 2018 12:24:21 GMT
ENV LIBERTY_VERSION=2018.10.0_0
# Sat, 27 Oct 2018 12:24:37 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 27 Oct 2018 12:24:37 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Oct 2018 12:24:37 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 27 Oct 2018 12:24:40 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Oct 2018 12:24:40 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 27 Oct 2018 12:24:46 GMT
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 27 Oct 2018 12:24:46 GMT
USER [1001]
# Sat, 27 Oct 2018 12:24:47 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 27 Oct 2018 12:24:47 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:d7fc297ae96b178f8204546178d5e0dd1e73fb02880574768976241bceecad04`  
		Last Modified: Fri, 19 Oct 2018 13:43:18 GMT  
		Size: 430.2 KB (430249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f1684de25bb81660e5feb8646433434d2e653b3d860474d1625977c3d19c8a`  
		Last Modified: Sat, 27 Oct 2018 12:27:36 GMT  
		Size: 102.3 MB (102318882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7dd4bc53d3d3275681e1b3ce1935e09a9af81785c36ae3b87749f89645ea4c`  
		Last Modified: Sat, 27 Oct 2018 12:27:28 GMT  
		Size: 1.6 KB (1611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa47e66c7d9887d2c444a7fb93b17ff99e8232fb538b12515d166ab2a56ab0b`  
		Last Modified: Sat, 27 Oct 2018 12:27:31 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9822c9ec8a2c1d295d737e496a9391ee9a41cf5e83559bbd08a4d92d2cc80d`  
		Last Modified: Sat, 27 Oct 2018 12:27:36 GMT  
		Size: 102.3 MB (102319431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:abea890244ebeea47e07cbdfae882a8d42f0ca13f541b97d076fb6d4af0f5961
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:3cbbb435574227c6e1c27accc045909d337a446e84140d60f62f2c2bb8e99470
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316316277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0743794e1982498b6420bebbf6063e95b245f2bbff2a8cd785972b91bfb8bc`
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
# Fri, 02 Nov 2018 23:18:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:18:34 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 02 Nov 2018 23:18:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:3772a6907b3726653eea41966bee5191896ab3a01f60c5c8aed4cbab9a16d983`  
		Last Modified: Fri, 02 Nov 2018 23:28:44 GMT  
		Size: 101.2 MB (101178352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf38239161c4ad9ea142bd8bb6bc10f4deaefe81fe557b9fac19eba4a7479d17`  
		Last Modified: Fri, 02 Nov 2018 23:28:37 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130d81984d9cc16e62add8a785d9edf5ec0fb5b2397eb525d9cc3dc65a3c46aa`  
		Last Modified: Fri, 02 Nov 2018 23:28:38 GMT  
		Size: 15.8 MB (15811172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:2e4fc9963c2d9168e4721a2c548c95b4a19f81eb6979e051999b08fec4271f4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (305036421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86724040f306c1a9849bea2e4faa1aa1515f2139da3a954205d84e1b382baad1`
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
# Wed, 24 Oct 2018 10:45:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:45:46 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 27 Oct 2018 13:16:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:3cccf89e12ac64ee3d71977cef5dcb8c151ff1f4a482736155d7a5b78422a39f`  
		Last Modified: Wed, 24 Oct 2018 10:54:41 GMT  
		Size: 101.2 MB (101178429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad62178527dec22a3120d2337181c2c7188f252c79064eaeaf920db3b3ce1f8`  
		Last Modified: Wed, 24 Oct 2018 10:54:30 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4839264eb29c7f1176b52302548f63c64d7ac4eafefd36786cf5710e3e51b41c`  
		Last Modified: Sat, 27 Oct 2018 13:20:34 GMT  
		Size: 16.1 MB (16138793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:876a10f1e2db449125fd3c9821a8ed03df812947f6040ed4b729179dc5a2010f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.3 MB (332328038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51b4ee295fd454cbecc728be4d2884de401c93d0a96b897ed1120c947339cbd`
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
# Sat, 03 Nov 2018 10:12:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:12:18 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 03 Nov 2018 10:12:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:99ff31a982190636e3b0e78f6ddaa149b75d058b9a7180672afc1db9ba7d993e`  
		Last Modified: Sat, 03 Nov 2018 10:27:49 GMT  
		Size: 101.2 MB (101182487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a8e0a042f1c0fca74fcc27472141e5a6f8ca3df6506518be71e4cba38a196f`  
		Last Modified: Sat, 03 Nov 2018 10:27:36 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff40ff308dbf6c3d5a8ed1df3016efdc302f6d4d718a893b2b5cab1d7bba313`  
		Last Modified: Sat, 03 Nov 2018 10:27:40 GMT  
		Size: 15.7 MB (15730466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:94091dc78905cf52fe0783d25171c490215c30a0d1b8735430e7c098b18ef41e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314335187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a6c5a041b199fa87add8a248be27e2fe34b0daf94f60bc167f84f69674e5a9`
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
# Wed, 24 Oct 2018 11:48:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:48:17 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 27 Oct 2018 12:25:40 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:eb8a438b9794da28d8779bef0d1c33cac57938058db004db87d54be4423a879c`  
		Last Modified: Wed, 24 Oct 2018 11:55:46 GMT  
		Size: 101.2 MB (101178436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9852eeac8888285673cb7d635eadc7ab5fc7d749c9605f693615f52657568fd`  
		Last Modified: Wed, 24 Oct 2018 11:55:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3e1c5dffb6c8e4da542da00e0e797e51c17f30d986ae3c2ad5e74919641325`  
		Last Modified: Sat, 27 Oct 2018 12:28:08 GMT  
		Size: 15.9 MB (15875609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee8`

```console
$ docker pull websphere-liberty@sha256:e8e3a24961e2a2aaf12396c6b68b94e8e094fe3f8042b275d710fedaa802103c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:502cdfdb364022e5558e0666c7fdb3f0f3e80f39b2adab44222c89b3db1953d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313433558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94a2768e90ea39e9332d76962dba7cdf7e83061341affecbfd36fa51df4e02`
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
# Fri, 02 Nov 2018 23:20:21 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:20:22 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Fri, 02 Nov 2018 23:20:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:c0a8aab82065b4c023528e4dcc7554710ed6be825d7f5bb9d77c14efbc18bac2`  
		Last Modified: Fri, 02 Nov 2018 23:29:17 GMT  
		Size: 98.1 MB (98137923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02cf17f4279dfa3186be43d3c588805d0d0df7104685b86545598f335533eda`  
		Last Modified: Fri, 02 Nov 2018 23:29:10 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf8cb8e8879f3fa1641e3950cacf9144f19b6a76a236c3e9342d85b45c94710`  
		Last Modified: Fri, 02 Nov 2018 23:29:13 GMT  
		Size: 16.0 MB (15968886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:ce8a0cba3610a8ddc9102337c35908f2a7e3cd8acf79d80634f1163473719c1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302151317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0f68ec78de79337e0b1fb712343d2f4f9be38aa00de60fb4ee49cd160e55aa`
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
# Wed, 24 Oct 2018 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:47:31 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 13:17:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:ddcc290f19f059361cfd2b1ae767381bcf1263c16769a19afd0941e5abbdeaed`  
		Last Modified: Wed, 24 Oct 2018 10:55:12 GMT  
		Size: 98.1 MB (98138140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9f8b9c90aac96780fd92bcc189e7ecf371754d85a9b0ba1b1502bf1b73bb2`  
		Last Modified: Wed, 24 Oct 2018 10:55:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69690a07028af432c8c8d22977e5688b0aa6edaa036a27d1cdb4e86942e98127`  
		Last Modified: Sat, 27 Oct 2018 13:20:58 GMT  
		Size: 16.3 MB (16293979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:dc314f4de50f6da80c40897f551a6513ba5d480c94dd1146e68c65e7c39d1cff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329385818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7607a6fab10cbcc293551ff0f2e0803f47bf4d6c689a3ffee1968dccc37aa0de`
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
# Sat, 03 Nov 2018 10:15:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:15:19 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 03 Nov 2018 10:15:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:490765cff12a48898971eb55b1160b94cca2e1fd2b16e502938cd55891748060`  
		Last Modified: Sat, 03 Nov 2018 10:28:34 GMT  
		Size: 98.1 MB (98138669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973a3ef91896782dc82129d348acc4380f7905be31258adbbdecc78c4dd445dc`  
		Last Modified: Sat, 03 Nov 2018 10:28:19 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84c3cca23ce2d913f5445670e4884bb1dc2f6e4a3a0dd5d8792859a919d9c10`  
		Last Modified: Sat, 03 Nov 2018 10:28:24 GMT  
		Size: 15.8 MB (15832063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d60f1e24a43b2e20308edd002df74fe00a02e72bf776a7469147f43d1de3e4c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 MB (311379042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b180555f819e41cc43e5ab362d1f88506a655b2bf447d5f4c02284a59a985b0`
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
# Wed, 24 Oct 2018 11:50:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:50:05 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 12:26:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:defb2a5672efbe71838363cd36adb4dc12483f077fd99e8554b0f01cd3d9fdf7`  
		Last Modified: Wed, 24 Oct 2018 11:56:01 GMT  
		Size: 98.1 MB (98138097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e587f78835475da9cee45963f8a2923f4a3094835df7fe1213b5874d076815`  
		Last Modified: Wed, 24 Oct 2018 11:55:54 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10646d5a5bb2f682908e1286a9fb2d46f1a1b209edd50a27daa8f5497f3a16`  
		Last Modified: Sat, 27 Oct 2018 12:28:22 GMT  
		Size: 16.0 MB (15959801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:f61cfbf2983bcc59db00a2a4d25e794e627ef306e0dfed3dc010892ab0f3b31f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:70171e01672de8d6fda8380beb2c48da00e4099964a30134c1d41afececba6d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199325817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35024447bc128db8c943e301ecfea4289723e856d2ded0b03ab1dbec22398a58`
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

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:1f9d7403b05e0cf667dae87fd21703346029207dfa6fff122648acd260318351
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187718267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4019730b3e7cf3b60ba467cba0002188365d4f8a04a3e1f6b8ef2f3f0a7c235b`
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

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e4b57c490b4d0e195222ad61cf0413c65fec21465b383d9368fa7ef5ca72d9bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215414150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dab1d6e024a5bc3bb4a899b8751437da9b13cfa8ef68ae15779c5428e0cbc15`
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

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:a97c2bd068bc5e794ffd1049410aac7bd22b893412c79caab9a434acdfeca804
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197280208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c33d9db65d539121fe7c247ec8d2659247ba4db1982feed838117060fefbfa0`
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

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:3a5d78ce9006f64da0fa39b226cd115b24697cd2bdd7f1b83a715999fe3daf3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:502cdfdb364022e5558e0666c7fdb3f0f3e80f39b2adab44222c89b3db1953d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313433558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94a2768e90ea39e9332d76962dba7cdf7e83061341affecbfd36fa51df4e02`
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
# Fri, 02 Nov 2018 23:20:21 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:20:22 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Fri, 02 Nov 2018 23:20:41 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:c0a8aab82065b4c023528e4dcc7554710ed6be825d7f5bb9d77c14efbc18bac2`  
		Last Modified: Fri, 02 Nov 2018 23:29:17 GMT  
		Size: 98.1 MB (98137923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02cf17f4279dfa3186be43d3c588805d0d0df7104685b86545598f335533eda`  
		Last Modified: Fri, 02 Nov 2018 23:29:10 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf8cb8e8879f3fa1641e3950cacf9144f19b6a76a236c3e9342d85b45c94710`  
		Last Modified: Fri, 02 Nov 2018 23:29:13 GMT  
		Size: 16.0 MB (15968886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:ce8a0cba3610a8ddc9102337c35908f2a7e3cd8acf79d80634f1163473719c1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302151317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0f68ec78de79337e0b1fb712343d2f4f9be38aa00de60fb4ee49cd160e55aa`
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
# Wed, 24 Oct 2018 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:47:31 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 13:17:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:ddcc290f19f059361cfd2b1ae767381bcf1263c16769a19afd0941e5abbdeaed`  
		Last Modified: Wed, 24 Oct 2018 10:55:12 GMT  
		Size: 98.1 MB (98138140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b9f8b9c90aac96780fd92bcc189e7ecf371754d85a9b0ba1b1502bf1b73bb2`  
		Last Modified: Wed, 24 Oct 2018 10:55:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69690a07028af432c8c8d22977e5688b0aa6edaa036a27d1cdb4e86942e98127`  
		Last Modified: Sat, 27 Oct 2018 13:20:58 GMT  
		Size: 16.3 MB (16293979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:f0aac1a27fd41302270958068f1040178245d133808cf0d70a52467a379a0188
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329284566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faee2a5e1202a1917037670ed738220340f046aacdbffba090346d1fd2a38537`
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
# Fri, 19 Oct 2018 10:25:01 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 19 Oct 2018 10:27:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 19 Oct 2018 10:27:16 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 19 Oct 2018 11:03:49 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 19 Oct 2018 11:04:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 24 Oct 2018 08:16:53 GMT
COPY multi:65ecd0d30892283932825fae754d5ad5006b59821ca269614209e67d74f4d177 in /licenses/ 
# Wed, 24 Oct 2018 08:16:54 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Wed, 24 Oct 2018 08:16:56 GMT
ARG LIBERTY_URL
# Wed, 24 Oct 2018 08:16:57 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 24 Oct 2018 08:17:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 24 Oct 2018 08:17:10 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Oct 2018 08:17:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Wed, 24 Oct 2018 08:17:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 24 Oct 2018 08:17:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 24 Oct 2018 08:17:20 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Wed, 24 Oct 2018 08:17:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 24 Oct 2018 08:17:49 GMT
USER [1001]
# Wed, 24 Oct 2018 08:17:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 24 Oct 2018 08:17:54 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 24 Oct 2018 08:17:56 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 24 Oct 2018 08:17:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 24 Oct 2018 08:18:21 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 24 Oct 2018 08:28:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 08:29:00 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 09:26:58 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:13b81554cbda3cd1291f966b234893b7aef04bcf45cfce5e01f9c8af9c999acc`  
		Last Modified: Fri, 19 Oct 2018 10:35:03 GMT  
		Size: 141.2 MB (141242771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2b6e04eb3a7e9c33bf92b73eb57010d48f7842e22a2c477679ff0771df9a8a`  
		Last Modified: Fri, 19 Oct 2018 11:26:40 GMT  
		Size: 456.1 KB (456060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74d491a66de3bdf89407f917a15b4df8d632fec5239d4567aa0a686d3d7bccd`  
		Last Modified: Wed, 24 Oct 2018 08:37:28 GMT  
		Size: 39.8 KB (39841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741477b7a69945bf13ed91544c21edd2fc35547845bd4b7f76dee84372c3aae0`  
		Last Modified: Wed, 24 Oct 2018 08:37:33 GMT  
		Size: 12.5 MB (12520601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c352bcbe93566c5fa79f8c92dc89404ac2f793abbdbfa28b23a7257e680ac8bf`  
		Last Modified: Wed, 24 Oct 2018 08:37:28 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe18c3e03f6b40c146b2f2db02030a50fe3d73d3552e1e07381902ddbba63ec`  
		Last Modified: Wed, 24 Oct 2018 08:37:27 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2cf901e513ddec416ebbe517748b2232d612e8ea2ccc2ad4e79554a92e8d57`  
		Last Modified: Wed, 24 Oct 2018 08:37:30 GMT  
		Size: 12.5 MB (12522022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d248fe5849516c07571fdfd028198b3a96ee96127ad3456b629d89c8990bef`  
		Last Modified: Wed, 24 Oct 2018 08:39:58 GMT  
		Size: 98.1 MB (98138799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89a0aae9c420d40bee4b873924dde6f6dfb348226e97eea8dc5727a83b14f87`  
		Last Modified: Wed, 24 Oct 2018 08:39:45 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931a6209c8bcc86c078e69ea587219003a0400ef27d058ed09caa5069bdc5985`  
		Last Modified: Sat, 27 Oct 2018 09:31:30 GMT  
		Size: 15.8 MB (15832738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d60f1e24a43b2e20308edd002df74fe00a02e72bf776a7469147f43d1de3e4c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.4 MB (311379042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b180555f819e41cc43e5ab362d1f88506a655b2bf447d5f4c02284a59a985b0`
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
# Wed, 24 Oct 2018 11:50:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:50:05 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 27 Oct 2018 12:26:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/*
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
	-	`sha256:defb2a5672efbe71838363cd36adb4dc12483f077fd99e8554b0f01cd3d9fdf7`  
		Last Modified: Wed, 24 Oct 2018 11:56:01 GMT  
		Size: 98.1 MB (98138097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e587f78835475da9cee45963f8a2923f4a3094835df7fe1213b5874d076815`  
		Last Modified: Wed, 24 Oct 2018 11:55:54 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10646d5a5bb2f682908e1286a9fb2d46f1a1b209edd50a27daa8f5497f3a16`  
		Last Modified: Sat, 27 Oct 2018 12:28:22 GMT  
		Size: 16.0 MB (15959801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:01979cdd9829738b6bea12cffcdb31aa6b1a100a86c389e24f29e068f937688e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:f60a7fb03b62e6568f82d15fd02e1f5aea6c60f6842dfe1ba942866713d9449b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293904990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9fee4ab268185d0f94d50af6432812581aa0a00d7c222afd8768c93e8e7c68`
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
# Fri, 02 Nov 2018 23:25:01 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:25:01 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Fri, 02 Nov 2018 23:25:14 GMT
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
	-	`sha256:48658824568944ea5b4134be2731a6570f65c03963527175188306e852abdbc5`  
		Last Modified: Fri, 02 Nov 2018 23:31:02 GMT  
		Size: 82.5 MB (82530843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef25db058392e2b95c2c78077361af6dd05df8d1832e8df5868a2bca5081c7d6`  
		Last Modified: Fri, 02 Nov 2018 23:30:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d658319e57c5edd9a5fabd962b8d5b3161cc0c972c5af510161b5ecb5380fc`  
		Last Modified: Fri, 02 Nov 2018 23:30:58 GMT  
		Size: 12.0 MB (12047757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:128d4f5ca847272cce5ab87e1356f79f9f9b03e8fb88ac3f3554d2eb208a813e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.6 MB (282572902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e6b54724cc80e616315dc067d9b4603c179b1c542a431dbf78c05ee3f2ba5c`
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
# Wed, 24 Oct 2018 10:52:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:52:00 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 27 Oct 2018 13:18:36 GMT
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
	-	`sha256:63396387f2363b52ff9f3b53bc4ad04bb49f649301d9435ad8349da93483c5e6`  
		Last Modified: Wed, 24 Oct 2018 10:56:52 GMT  
		Size: 82.5 MB (82530894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d48784b3b32092a3ca6859629a622b88aaa390f980ac07b8c5a8e83fd69c005`  
		Last Modified: Wed, 24 Oct 2018 10:56:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0cf420c8c5e49b97be8a923c8323d9c97030f3ffd9310dd286ebcf485c44de`  
		Last Modified: Sat, 27 Oct 2018 13:22:21 GMT  
		Size: 12.3 MB (12323169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e6ebafea8aead6d147fa578fa4e0f1490848d5602b4679ad0667e7e59350ad91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310228484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541500f189402c53551af26b02d928c17fec5a3e211e425255ba7f256c6b4c39`
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
# Sat, 03 Nov 2018 10:22:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:22:45 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 03 Nov 2018 10:23:02 GMT
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
	-	`sha256:c876223f1cc12b7131744a15243021e3235adfa4b12fe84d626f3dfa0c781c4f`  
		Last Modified: Sat, 03 Nov 2018 10:30:51 GMT  
		Size: 82.5 MB (82534911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa019737a3678d23fe1a95b9a0a4ea2c442085f4242409fb1a5321679ce4383`  
		Last Modified: Sat, 03 Nov 2018 10:30:40 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35abdf4ac113fa266980956853d96915a352cea7052b21d500c55c988dc11da6`  
		Last Modified: Sat, 03 Nov 2018 10:30:43 GMT  
		Size: 12.3 MB (12278849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:fdd35b67f7ef6a04f9b02813b207746bb9053dd53c7c3a287f487584f9984597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490105bdd1d13b7b430886ca215520865e88372e5fc638c4d849270793d5793c`
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
# Wed, 24 Oct 2018 11:54:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:54:10 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 27 Oct 2018 12:26:59 GMT
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
	-	`sha256:956b0509d62f12f8b8b3bf38feb7b3a700bc1d5eebdb4e9f419d6d4cc7e9cc15`  
		Last Modified: Wed, 24 Oct 2018 11:56:50 GMT  
		Size: 82.5 MB (82530897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f4611666aa6ead38f651abca8fe8b91ed193bd7c95d87d85305171abc9f6a8`  
		Last Modified: Wed, 24 Oct 2018 11:56:44 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c676fbe50f7b9389f4e5680bac345065b778711b181b8db0a2b532d703cfa3`  
		Last Modified: Sat, 27 Oct 2018 12:28:57 GMT  
		Size: 12.2 MB (12183416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `websphere-liberty:microProfile2`

```console
$ docker pull websphere-liberty@sha256:01979cdd9829738b6bea12cffcdb31aa6b1a100a86c389e24f29e068f937688e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:f60a7fb03b62e6568f82d15fd02e1f5aea6c60f6842dfe1ba942866713d9449b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293904990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9fee4ab268185d0f94d50af6432812581aa0a00d7c222afd8768c93e8e7c68`
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
# Fri, 02 Nov 2018 23:25:01 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:25:01 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Fri, 02 Nov 2018 23:25:14 GMT
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
	-	`sha256:48658824568944ea5b4134be2731a6570f65c03963527175188306e852abdbc5`  
		Last Modified: Fri, 02 Nov 2018 23:31:02 GMT  
		Size: 82.5 MB (82530843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef25db058392e2b95c2c78077361af6dd05df8d1832e8df5868a2bca5081c7d6`  
		Last Modified: Fri, 02 Nov 2018 23:30:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d658319e57c5edd9a5fabd962b8d5b3161cc0c972c5af510161b5ecb5380fc`  
		Last Modified: Fri, 02 Nov 2018 23:30:58 GMT  
		Size: 12.0 MB (12047757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:128d4f5ca847272cce5ab87e1356f79f9f9b03e8fb88ac3f3554d2eb208a813e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.6 MB (282572902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e6b54724cc80e616315dc067d9b4603c179b1c542a431dbf78c05ee3f2ba5c`
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
# Wed, 24 Oct 2018 10:52:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:52:00 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 27 Oct 2018 13:18:36 GMT
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
	-	`sha256:63396387f2363b52ff9f3b53bc4ad04bb49f649301d9435ad8349da93483c5e6`  
		Last Modified: Wed, 24 Oct 2018 10:56:52 GMT  
		Size: 82.5 MB (82530894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d48784b3b32092a3ca6859629a622b88aaa390f980ac07b8c5a8e83fd69c005`  
		Last Modified: Wed, 24 Oct 2018 10:56:43 GMT  
		Size: 572.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0cf420c8c5e49b97be8a923c8323d9c97030f3ffd9310dd286ebcf485c44de`  
		Last Modified: Sat, 27 Oct 2018 13:22:21 GMT  
		Size: 12.3 MB (12323169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e6ebafea8aead6d147fa578fa4e0f1490848d5602b4679ad0667e7e59350ad91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310228484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:541500f189402c53551af26b02d928c17fec5a3e211e425255ba7f256c6b4c39`
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
# Sat, 03 Nov 2018 10:22:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:22:45 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 03 Nov 2018 10:23:02 GMT
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
	-	`sha256:c876223f1cc12b7131744a15243021e3235adfa4b12fe84d626f3dfa0c781c4f`  
		Last Modified: Sat, 03 Nov 2018 10:30:51 GMT  
		Size: 82.5 MB (82534911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa019737a3678d23fe1a95b9a0a4ea2c442085f4242409fb1a5321679ce4383`  
		Last Modified: Sat, 03 Nov 2018 10:30:40 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35abdf4ac113fa266980956853d96915a352cea7052b21d500c55c988dc11da6`  
		Last Modified: Sat, 03 Nov 2018 10:30:43 GMT  
		Size: 12.3 MB (12278849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:fdd35b67f7ef6a04f9b02813b207746bb9053dd53c7c3a287f487584f9984597
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291995095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490105bdd1d13b7b430886ca215520865e88372e5fc638c4d849270793d5793c`
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
# Wed, 24 Oct 2018 11:54:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:54:10 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 27 Oct 2018 12:26:59 GMT
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
	-	`sha256:956b0509d62f12f8b8b3bf38feb7b3a700bc1d5eebdb4e9f419d6d4cc7e9cc15`  
		Last Modified: Wed, 24 Oct 2018 11:56:50 GMT  
		Size: 82.5 MB (82530897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f4611666aa6ead38f651abca8fe8b91ed193bd7c95d87d85305171abc9f6a8`  
		Last Modified: Wed, 24 Oct 2018 11:56:44 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c676fbe50f7b9389f4e5680bac345065b778711b181b8db0a2b532d703cfa3`  
		Last Modified: Sat, 27 Oct 2018 12:28:57 GMT  
		Size: 12.2 MB (12183416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:springBoot1`

```console
$ docker pull websphere-liberty@sha256:265005aa68382b0926d908b556fd4cf11293e465b0ad8d9513cfd473fa199cc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:aef394c8ca39ff1c4737cb23aeed08a2071830e89ce777be05d3ea4aaac4615f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231447246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f81953ae43d519a93dd255e9d4d503ce9e18d3f29a91bb3f99c3c8a66c067`
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
# Fri, 02 Nov 2018 23:14:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:14:19 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Fri, 02 Nov 2018 23:14:28 GMT
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
	-	`sha256:db73402870b3d1e52324454a913eb89362a24b1ac6618a89de585ce0d68a7459`  
		Last Modified: Fri, 02 Nov 2018 23:27:36 GMT  
		Size: 23.6 MB (23626803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d4f6d7bb7d6cf4175193179164bbd79a6cfd14c1c4ac5635985dc23ecaf13b`  
		Last Modified: Fri, 02 Nov 2018 23:27:34 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed34ccb1366c3d4d17176965d4ecd4fbfa3eabd06dc76861e30089ae9470db4`  
		Last Modified: Fri, 02 Nov 2018 23:27:37 GMT  
		Size: 8.5 MB (8494068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:f1ba32ea0cb772a7121c264c3233d6120270c204bead128577797010d3814a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220014334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4e8fb12d4d33566b3ee6578c9a57fcdd690e53220a48bef1af09e0cd725c80`
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
# Wed, 24 Oct 2018 10:42:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:42:23 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 27 Oct 2018 13:15:44 GMT
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
	-	`sha256:abe8bd9778d0f8f2713714f09d43e7f899c857169ffa5375bba38ed7463e84c2`  
		Last Modified: Wed, 24 Oct 2018 10:53:35 GMT  
		Size: 23.6 MB (23626835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b5752ec0bcf894a4056ebbb5b909950d66b97444225c6d52900974521f2720`  
		Last Modified: Wed, 24 Oct 2018 10:53:32 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d1506216790a7fa2eabebc33d41471a70bd992c0780fcaeee47a15d84cc57d`  
		Last Modified: Sat, 27 Oct 2018 13:19:44 GMT  
		Size: 8.7 MB (8668675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:b331a7650cea0a8210ecda4bfe4aadd3bab950f2386dccba62929b0b1d65de5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247381509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ad9b9807db4dc6b6b4d9755e4a7b23254ff22be73c4b81e52a930215ea9714`
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
# Sat, 03 Nov 2018 10:07:12 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:07:13 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 03 Nov 2018 10:07:26 GMT
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
	-	`sha256:d4957ffb9397a6130814f6e92161160b41b8cd5c80de24607d0b836dd1a8a055`  
		Last Modified: Sat, 03 Nov 2018 10:26:11 GMT  
		Size: 23.6 MB (23627677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af89f09e603ecf84666c3fe6e5688b78067e60780723485a9605f673b1652c0a`  
		Last Modified: Sat, 03 Nov 2018 10:26:07 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972c25c822dd099a09ebc397726b6c6abcdaf3a5e2f58c954b53d15f189f6345`  
		Last Modified: Sat, 03 Nov 2018 10:26:11 GMT  
		Size: 8.3 MB (8339126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:c0e56ef756cbab6debfa776064862808c7c40c285c1c361bbf4fcbdbdfee4a31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229259339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8a8fe44b2a947f9667c2a249118115eef3068b237be548c9cc84dff471f2c0`
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
# Wed, 24 Oct 2018 11:45:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:45:04 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 27 Oct 2018 12:25:00 GMT
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
	-	`sha256:785e4d38e591c881c66534cc015abfe71f7c7e5e0ece3cb0a0b2bf67059e3493`  
		Last Modified: Wed, 24 Oct 2018 11:55:15 GMT  
		Size: 23.6 MB (23626886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42abb507c813d7b046d3a9b133d11e71c683108bdad9c335b15a5302f9ce3243`  
		Last Modified: Wed, 24 Oct 2018 11:55:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa46631dba9cc1734731d8a985db4a8ddd4927996704d44a06a5e757a0969115`  
		Last Modified: Sat, 27 Oct 2018 12:27:45 GMT  
		Size: 8.4 MB (8351691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:springBoot2`

```console
$ docker pull websphere-liberty@sha256:93a142e06b8d9f29307fc7a96b3ea661fbad31ee89d4c928a95f64a6714abe2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:0734c1b54591549675e5574c14c44a1adc727fe767a8c642522028236466193c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231361375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:529a949c3cf53bf1c49e42a1b41ab5764ff8503891fcc5e71bf7dafe85ae7a1c`
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
# Fri, 02 Nov 2018 23:25:51 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:25:52 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Fri, 02 Nov 2018 23:25:59 GMT
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
	-	`sha256:617af841d0fb34d8b8e7b99c008f003b22d067fc68de124c3183d670417de9c6`  
		Last Modified: Fri, 02 Nov 2018 23:31:43 GMT  
		Size: 23.6 MB (23629287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e285d9267a11fb9a594c545546eb730ae6490168c504ab7a7c574faf9a441a07`  
		Last Modified: Fri, 02 Nov 2018 23:31:39 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d66f19da58d7cb88a6709b485147097843aae6ef201765f38a7abeb1783321`  
		Last Modified: Fri, 02 Nov 2018 23:31:42 GMT  
		Size: 8.4 MB (8405715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:6521dbf116f74a324cb33e91b280c985d90e2b7455ea22b24946bc1313e166b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (219955811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198c126e936354ad9e4aa65fe943df0c90e9e1bb5ad45efa4000a0c78de4251f`
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
# Wed, 24 Oct 2018 10:52:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:52:44 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 27 Oct 2018 13:18:57 GMT
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
	-	`sha256:201e91b61ce9bd5c62289c95ba2f17faee181824a57bfbf02cb61ceaa6507444`  
		Last Modified: Wed, 24 Oct 2018 10:57:29 GMT  
		Size: 23.6 MB (23629314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d46fe20304f4767188b6ffe27fa0b2828553bb8e1b1a569d36867ee3489be1`  
		Last Modified: Wed, 24 Oct 2018 10:57:25 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8433e79b5395ae855362ee870e2ea5001a68f5a9beda3dbddda640d6e860c3`  
		Last Modified: Sat, 27 Oct 2018 13:22:55 GMT  
		Size: 8.6 MB (8607672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:de7c158dff940850e92396f2f2e4dd51bd3435c3cc90f2062dcfbc1aed026150
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247376028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174649dda259dde9945c09ec5e3e688202df75937dd410520bf678deb12f7f95`
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
# Sat, 03 Nov 2018 10:24:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:24:14 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 03 Nov 2018 10:24:24 GMT
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
	-	`sha256:ae0f3d040eebb35a1a98e97577ada9fac3a0d72c6bd6f50f37ef68fefa8a514d`  
		Last Modified: Sat, 03 Nov 2018 10:31:36 GMT  
		Size: 23.6 MB (23630193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f6d923378429d182dd38a8939848ccce786e801128f450b31513def3df6c5`  
		Last Modified: Sat, 03 Nov 2018 10:31:33 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031a6e5aee327034a475ca5843c739eb1fcc3cd706ee3c52732dbd1c4cf6761e`  
		Last Modified: Sat, 03 Nov 2018 10:31:36 GMT  
		Size: 8.3 MB (8331128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2702fda9c37d0cb3d7b3e3282a9cd1d7e93004a8f63b34cbb8fa4e3596c5bd58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229345750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568b199a04222db0ff3eab1cb3bcdb3acc51481db742fdc47ba799ce896fed8d`
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
# Wed, 24 Oct 2018 11:54:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:54:45 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 27 Oct 2018 12:27:14 GMT
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
	-	`sha256:b833b11ba5503fc2ed3b1e0cae2edd3a37e76926dc2a7e2331ca2b5ef319d4d9`  
		Last Modified: Wed, 24 Oct 2018 11:57:04 GMT  
		Size: 23.6 MB (23629374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5800bb6e0ca03e1a7ff7dcb2062883a62b7037c6e6795bd55fdc2c073892a32`  
		Last Modified: Wed, 24 Oct 2018 11:57:02 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606266a238f9d8af5d3f43d2e9ba2fa62d8fb82b36d3483e1da74d11424db9ff`  
		Last Modified: Sat, 27 Oct 2018 12:29:11 GMT  
		Size: 8.4 MB (8435611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:6d6a52d68a64948741e675cb3cad07b3c4ae8256f4c761dc7ae8991ae2db0cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c57e45920efff9db5e5d755290e3049f04131bdcbe26b61bacb72a84e0ac3b28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291271460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9651de79e3520c46aaa689a5587a29ad48cac9ed30d27eb0c501100a11aa0f4`
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
# Fri, 02 Nov 2018 23:16:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:16:24 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 02 Nov 2018 23:16:40 GMT
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
	-	`sha256:bd1abd33a2f819e1d99b78506293dbf73fec0d27b2a95d16283bd424a1d77756`  
		Last Modified: Fri, 02 Nov 2018 23:28:08 GMT  
		Size: 80.6 MB (80577155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1001d6f5ec33064ab52af6e9ab701bf0c8d95033d950bb3902fe1ee66338ee8`  
		Last Modified: Fri, 02 Nov 2018 23:28:01 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8221d79d192566c2b4b6dcd74dec74fbe30d29b06c4091dad3ba098e8db34a88`  
		Last Modified: Fri, 02 Nov 2018 23:28:04 GMT  
		Size: 11.4 MB (11367918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:305a8987249f56bfbcf8e7dd2110366371871a9953b2ccf29f6a05dcbc645820
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279871731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d012ef3fd3981d6a6945cd175939e8bfd9a2752fd7cdfd3542624e19e6e7400f`
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
# Wed, 24 Oct 2018 10:43:53 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:43:54 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 27 Oct 2018 13:16:11 GMT
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
	-	`sha256:737392654d89c8151cc639fade3c07bdddedeecd836ebf6c8fa69be4fd446198`  
		Last Modified: Wed, 24 Oct 2018 10:54:09 GMT  
		Size: 80.6 MB (80577400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97aa3aae26e9b1b1aabca286769adf4093aad2e9098c79b0a03270944eb004a8`  
		Last Modified: Wed, 24 Oct 2018 10:54:00 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961f5ab371bf6d764f35b9abe59898ce52879fefa300be58cd4f885070026176`  
		Last Modified: Sat, 27 Oct 2018 13:20:08 GMT  
		Size: 11.6 MB (11575497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:02dea7856e437b9ed7033dee598b0dd6a067e796eb8c389a3b4321dfd73476e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307429491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c30d52e999004934e1f3abcbce93c69bacb8f36c1eef8fb02bdabcca382afa37`
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
# Sat, 03 Nov 2018 10:09:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:09:17 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 03 Nov 2018 10:09:41 GMT
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
	-	`sha256:b2656d11851e9c18c2253d63b40d5d1e38a6b1a2149b1d7ff48dfcea3a89e749`  
		Last Modified: Sat, 03 Nov 2018 10:27:00 GMT  
		Size: 80.6 MB (80581173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba655673f8fb491090bfdd104ed4806114285ac033e46229198edbe4996a20`  
		Last Modified: Sat, 03 Nov 2018 10:26:47 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad98bd66e84fc86dc13b2cbca02c20c7c3e96c53127a2dd6b091bd403652db39`  
		Last Modified: Sat, 03 Nov 2018 10:26:51 GMT  
		Size: 11.4 MB (11433601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:3e97f6bd4797520e0595a32733a75d6c3a8bad9d42237e849f50fa9d79a04ae7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289276139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef79b196b6ebf7af2326861f937cfa6e52a2ba002a8082a855d0b08e343b4e3`
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
# Wed, 24 Oct 2018 11:46:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:46:28 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 27 Oct 2018 12:25:19 GMT
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
	-	`sha256:b2db94f4d5f998e259120b3a29f7d43f00d6256570543536659a8607b7848da0`  
		Last Modified: Wed, 24 Oct 2018 11:55:30 GMT  
		Size: 80.6 MB (80577260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf4a7bf96fc416a3606971d6fdad9421d4ba58f5f772ed4f3e348c3321dbfe9`  
		Last Modified: Wed, 24 Oct 2018 11:55:23 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54ae953d53f953769672354823d672d8cfd39de161601f2c5a953293325264`  
		Last Modified: Sat, 27 Oct 2018 12:27:56 GMT  
		Size: 11.4 MB (11418104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile8`

```console
$ docker pull websphere-liberty@sha256:ff330fcd187652e5af279af8a4d5d3558730b2245505c433204189ecf6cc11ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:a6975c5a5016337944f1b98f900f7c6ae84627e98a943ce6b22009341746cb13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278141306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8479e4b322efe81708cf2d25d488f99207c3523a7c58b97b6ac13cef5932cc47`
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
# Fri, 02 Nov 2018 23:21:52 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 02 Nov 2018 23:21:52 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Fri, 02 Nov 2018 23:22:05 GMT
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
	-	`sha256:c10b456a9496fb9373d1de2ba829af4979fcb00066f04c87d02fb5a9c8c8d40a`  
		Last Modified: Fri, 02 Nov 2018 23:29:59 GMT  
		Size: 67.2 MB (67230882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a01464b600619a43df26e991aeb25199f972918b5b408445a68026c14d869c`  
		Last Modified: Fri, 02 Nov 2018 23:29:54 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ea9bbb1f7c8011d68294e6c9dbaceb1fcca88e2df27a3a41286425af3c7596`  
		Last Modified: Fri, 02 Nov 2018 23:29:57 GMT  
		Size: 11.6 MB (11584037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:7856a2de264b99a59fcb8ff5ee924c4b5feeb86f00eaf5de36226f6b36f82e66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266629280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc24eb3e22d1c99165e1845212ce7be7370a0b6e0e2d62be76bb2a85c7972fe`
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
# Wed, 24 Oct 2018 10:48:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 10:48:56 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 27 Oct 2018 13:17:41 GMT
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
	-	`sha256:2fd52ee4d425cc2df7272bb18a1480e2b7fdc40c831171c4ee8e00ef311a469b`  
		Last Modified: Wed, 24 Oct 2018 10:55:51 GMT  
		Size: 67.2 MB (67231131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3329441d249d8ef9d529aa35cf4b97af36eb662edfdeab2555a64afd03ecdeb2`  
		Last Modified: Wed, 24 Oct 2018 10:55:42 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e7b01aa696f70e3ed8b7b2db4f6146f50dc8ae2c0aef711ce05508ac56cf7e`  
		Last Modified: Sat, 27 Oct 2018 13:21:32 GMT  
		Size: 11.7 MB (11679314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:2b294d17b78357d333e4e97464d75abf1b64d5f8aee97067e7d35f4fe810b878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294122516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121face9e02bcb7c04863a229aebe92d56dd128696eafc8fe7937da1030ee243`
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
# Sat, 03 Nov 2018 10:17:46 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 03 Nov 2018 10:17:52 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 03 Nov 2018 10:18:09 GMT
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
	-	`sha256:a999a6ca4eee6d26ec4402ecf351d16e763a8141cce7c9f44ab11faeb06508b5`  
		Last Modified: Sat, 03 Nov 2018 10:29:28 GMT  
		Size: 67.2 MB (67233802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6cfeafb7c62b188f654fe51ab6c8d6697080e176ab111819006892ac57da4b`  
		Last Modified: Sat, 03 Nov 2018 10:29:19 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a524bf6d65a30045d323dcea30f0d765b18ad5355b35d51480eeccfd1fb62025`  
		Last Modified: Sat, 03 Nov 2018 10:29:24 GMT  
		Size: 11.5 MB (11473995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:dcffce3826bbe406e6bfed79859e924b1251c0fc7f8c96995de641ce26e5d542
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275947388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a03fab1d3b2dcab5331f72c4cb0acb2de7e443110f2b10f0c6b162ea3a3128`
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
# Wed, 24 Oct 2018 11:51:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 24 Oct 2018 11:51:20 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 27 Oct 2018 12:26:20 GMT
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
	-	`sha256:44b72d9a054523311901e6d5e50d1b3de1f224d7e783dd1da4759467113ecbb1`  
		Last Modified: Wed, 24 Oct 2018 11:56:20 GMT  
		Size: 67.2 MB (67230931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be7d2d45e8d31d95654424ad1a8724772cdb9145cbbd45dc434fcb8572f6445`  
		Last Modified: Wed, 24 Oct 2018 11:56:14 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3210591dadc4a5f6677b070d13d60674ce5c39446d8feccc9fdf604336e8e81a`  
		Last Modified: Sat, 27 Oct 2018 12:28:35 GMT  
		Size: 11.4 MB (11435680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
