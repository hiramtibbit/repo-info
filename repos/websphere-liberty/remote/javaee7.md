## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:b7b077d389c77bdc834f693e4e23bee69b9939561490b772447986b619dd1d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:0b00abd1490ce2b26ec879e713c6c1405f6ff167fba4007167d12535afc9f35d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316265221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034434a396b83182e5e5544b586a857fd3ae742a6a533133baf2db5d2765f744`
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
# Fri, 19 Oct 2018 01:31:08 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 19 Oct 2018 01:31:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 19 Oct 2018 01:31:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 19 Oct 2018 02:59:06 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 19 Oct 2018 02:59:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Fri, 19 Oct 2018 02:59:12 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 19 Oct 2018 02:59:12 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 19 Oct 2018 02:59:12 GMT
ARG LIBERTY_URL
# Fri, 19 Oct 2018 02:59:12 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 19 Oct 2018 02:59:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Fri, 19 Oct 2018 02:59:17 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 02:59:17 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 19 Oct 2018 02:59:18 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 19 Oct 2018 02:59:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 19 Oct 2018 02:59:20 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 19 Oct 2018 02:59:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 19 Oct 2018 02:59:22 GMT
USER [1001]
# Fri, 19 Oct 2018 02:59:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 19 Oct 2018 02:59:22 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 19 Oct 2018 02:59:23 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 19 Oct 2018 02:59:23 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 19 Oct 2018 03:00:38 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 19 Oct 2018 03:04:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 19 Oct 2018 03:05:02 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 19 Oct 2018 03:05:22 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:f4b7f9cac3ffa1a5f2f1e6f97f20a792f1fbb0d8c5b3f565753d0ba3e841f539`  
		Last Modified: Fri, 19 Oct 2018 01:34:24 GMT  
		Size: 127.4 MB (127403746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19e501afcfb29b203f43befdf12e5d8dc59737c94de245186695e4914efe866`  
		Last Modified: Fri, 19 Oct 2018 03:13:38 GMT  
		Size: 425.5 KB (425461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eaff1f0bfcb5079bca06ab9e2af136ef62a4156b1924c397900e1975f18ff1f`  
		Last Modified: Fri, 19 Oct 2018 03:13:37 GMT  
		Size: 40.5 KB (40544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f114fc65736d3b6e2899a35090537c106f531d2ec8814cdc55878995a5777009`  
		Last Modified: Fri, 19 Oct 2018 03:13:38 GMT  
		Size: 12.5 MB (12520525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238ac6f1201b91bc37a2693f7a163541b735528b5b185946baacf2ec89ee668`  
		Last Modified: Fri, 19 Oct 2018 03:13:35 GMT  
		Size: 683.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b835e71e9417d18930819c0be5ba38f1a3c38b60b566dff0ee8e88a63b6981`  
		Last Modified: Fri, 19 Oct 2018 03:13:35 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b43cad607dd6127f4ca45ac48c1a3bd96b0064abecd07f4b4c3cd4698e3272`  
		Last Modified: Fri, 19 Oct 2018 03:13:38 GMT  
		Size: 12.5 MB (12521882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90e7de32aaf7a5b990491d8af398db9e63cc9b24d7cb2bc8beb2634beaa8fab`  
		Last Modified: Fri, 19 Oct 2018 03:15:46 GMT  
		Size: 101.2 MB (101178425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af705f059a4474e64d4ff5bc91de645048447ed6960bc13b5d4ae4f7ba9858af`  
		Last Modified: Fri, 19 Oct 2018 03:15:08 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3e02e697c8822572431d1760083006c59e5865f98c6ed1faee37e9b57ae065`  
		Last Modified: Fri, 19 Oct 2018 03:15:12 GMT  
		Size: 15.8 MB (15796292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:622948e25a41248cad6a903dce8cca065bb28a0f25856f0ddb750240daed53cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.0 MB (304999955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50a6d83bc8a9b8b91303a9ac093d25258840f02d238a560313831717b2a1f16`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:27 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Fri, 07 Sep 2018 06:07:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:30 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:20:46 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 07 Sep 2018 09:20:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 10:38:41 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Sat, 29 Sep 2018 10:39:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 29 Sep 2018 10:39:26 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 29 Sep 2018 11:17:23 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 17 Oct 2018 11:14:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 17 Oct 2018 11:14:17 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Wed, 17 Oct 2018 11:14:17 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Wed, 17 Oct 2018 11:14:17 GMT
ARG LIBERTY_URL
# Wed, 17 Oct 2018 11:14:18 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 17 Oct 2018 11:14:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 17 Oct 2018 11:14:22 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 11:14:22 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Wed, 17 Oct 2018 11:14:22 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 17 Oct 2018 11:14:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 17 Oct 2018 11:14:24 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Wed, 17 Oct 2018 11:14:26 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 17 Oct 2018 11:14:26 GMT
USER [1001]
# Wed, 17 Oct 2018 11:14:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 17 Oct 2018 11:14:27 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 17 Oct 2018 11:14:27 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 17 Oct 2018 11:14:27 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 17 Oct 2018 11:15:19 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 17 Oct 2018 11:19:00 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 17 Oct 2018 11:19:00 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 17 Oct 2018 11:19:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839ee2f9fdcbd67fae6cf9fbf80e54167fd9c3e969f5b5f018497fc59ea46fb`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b307f0cf3f293790442e6f41a551fa7fa3b23f10db002a01c9d6764ebe61fdbe`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9eaf2dd9c42658303b379504b7895d6acc109613f98eeddbad03b40c995194`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e5700f14185525a8e6cb377be1ac83c2a77de2ecabd6b54401e64d3fef3946`  
		Last Modified: Fri, 07 Sep 2018 06:08:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fab6840bc89753f4f834a873592e965b85f52f4c7eba3c1de1dfce2df54238`  
		Last Modified: Fri, 07 Sep 2018 09:23:31 GMT  
		Size: 2.9 MB (2875851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4846112b5ecd9c0b3eb343c0a3bf3f2c0f5014c1f6a6f86fbbe03483a4aeeb3`  
		Last Modified: Sat, 29 Sep 2018 10:41:31 GMT  
		Size: 115.7 MB (115749502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47093563872845b06ef53fb4a52b8c8b155514a0c7468061320c31422950024b`  
		Last Modified: Wed, 17 Oct 2018 11:26:15 GMT  
		Size: 423.6 KB (423591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f097c07054488038c8df74219a508054ae855108a76968f093dff09f5831e`  
		Last Modified: Wed, 17 Oct 2018 11:26:13 GMT  
		Size: 40.5 KB (40549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5434c1eaf53b3fc208f4431ad671c53eb49965eb50e9d86ae78f1d78d6007383`  
		Last Modified: Wed, 17 Oct 2018 11:26:17 GMT  
		Size: 12.5 MB (12520547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59bbd8f76199f5295c9158e248cb5bb0d4fc0a546a92625e04c4c118ac394a`  
		Last Modified: Wed, 17 Oct 2018 11:26:13 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e17e9efd0877ad49dd0482a6b5a161bb2a5088af4dfe027936348002d3385b8`  
		Last Modified: Wed, 17 Oct 2018 11:26:13 GMT  
		Size: 978.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b20ef7c9afe9db737cd3527133cf8a158cafa23c985cbba551697cf8174e7a`  
		Last Modified: Wed, 17 Oct 2018 11:26:17 GMT  
		Size: 12.5 MB (12521893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb954a48081b1b266f8d1590368a69cc13eb15e986e55d1a6d1d84b1a61efdf`  
		Last Modified: Wed, 17 Oct 2018 11:27:57 GMT  
		Size: 101.2 MB (101178447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7559313e0875e5dbb69ac4c2263b5f4c056c1809ad413bc98814d356ccef4f37`  
		Last Modified: Wed, 17 Oct 2018 11:27:44 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b81283bc96bf5ccccfc57bf3d2b98821af11519df763f88dbe7412dda820b`  
		Last Modified: Wed, 17 Oct 2018 11:27:49 GMT  
		Size: 16.2 MB (16164581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:6cb499d964f5ff6fc3d56efd8d4a505989ff438584e6c601a49fb506c98622ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332146655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3feef78666ad0d9a0e93a7d171e90347e2dd8effa8fbe36d0a0d4522f6c2430`
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
# Fri, 19 Oct 2018 11:04:13 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 19 Oct 2018 11:04:15 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 19 Oct 2018 11:04:17 GMT
ARG LIBERTY_URL
# Fri, 19 Oct 2018 11:04:18 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 19 Oct 2018 11:04:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Fri, 19 Oct 2018 11:04:33 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 Oct 2018 11:04:36 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 19 Oct 2018 11:04:37 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 19 Oct 2018 11:04:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 19 Oct 2018 11:04:50 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 19 Oct 2018 11:05:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 19 Oct 2018 11:05:23 GMT
USER [1001]
# Fri, 19 Oct 2018 11:05:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 19 Oct 2018 11:05:26 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 19 Oct 2018 11:05:28 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 19 Oct 2018 11:05:29 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 19 Oct 2018 11:09:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 19 Oct 2018 11:15:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 19 Oct 2018 11:15:32 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 19 Oct 2018 11:15:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:bb7642c7f1dc97ea920f4a23f5636af1ac3d6ca581d381d9811c51e3d0e90087`  
		Last Modified: Fri, 19 Oct 2018 11:26:37 GMT  
		Size: 40.5 KB (40546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b18ea9fd7bdadb003cc4245b9fb7645bad4c1e262e1e54fbacfd488d0e438`  
		Last Modified: Fri, 19 Oct 2018 11:26:41 GMT  
		Size: 12.5 MB (12520600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f75a20f0d100bfdefb0746b304af9c98165a1fa7ee94e7ad486f28c656c66ce`  
		Last Modified: Fri, 19 Oct 2018 11:26:37 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb489a3f66f06316da3250a8b89bef8ffb8443236bbc7755c04e1598443ae3ae`  
		Last Modified: Fri, 19 Oct 2018 11:26:37 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89ab269057fccfc0aba25bb448a0db26e479135d81fc2f876960cb23f9698d3`  
		Last Modified: Fri, 19 Oct 2018 11:26:40 GMT  
		Size: 12.5 MB (12522016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2704cb0a698e2c8662230717492eece1f425274158191693f44897eafa2cea2c`  
		Last Modified: Fri, 19 Oct 2018 11:28:57 GMT  
		Size: 101.2 MB (101182791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3c80d1b2df8a3c2d25ad38439e1176a925e86b6fca7eab6fe0ab8b665f1bb`  
		Last Modified: Fri, 19 Oct 2018 11:28:26 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac883955294001574f4525345122941b7ec73a1b110a0a17295bde0d6b775eb`  
		Last Modified: Fri, 19 Oct 2018 11:28:32 GMT  
		Size: 15.7 MB (15650145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0a1b2ef56039fd5e54b08d919e44ff2df0e69b232f968e826d2c973a8c75b2dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314262250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3912ef0cdcf5851ee9879dc65836a742c28b81c6b124632fe092c565dbc9d85`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 14:49:17 GMT
ADD file:94740559815ae2a4f5e95bd0d7fd560cc9a934cfd754a24cf0aadec470a78096 in / 
# Thu, 23 Aug 2018 14:49:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:49:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:49:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:49:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:49:20 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:34:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 15:35:24 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 11:41:49 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Sat, 29 Sep 2018 11:42:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 29 Sep 2018 11:42:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 29 Sep 2018 12:31:11 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 17 Oct 2018 11:50:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Wed, 17 Oct 2018 11:50:03 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Wed, 17 Oct 2018 11:50:03 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Wed, 17 Oct 2018 11:50:04 GMT
ARG LIBERTY_URL
# Wed, 17 Oct 2018 11:50:04 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 17 Oct 2018 11:50:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 17 Oct 2018 11:50:09 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 11:50:09 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Wed, 17 Oct 2018 11:50:09 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 17 Oct 2018 11:50:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 17 Oct 2018 11:50:12 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Wed, 17 Oct 2018 11:50:15 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Wed, 17 Oct 2018 11:50:15 GMT
USER [1001]
# Wed, 17 Oct 2018 11:50:15 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 17 Oct 2018 11:50:15 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 17 Oct 2018 11:50:16 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Wed, 17 Oct 2018 11:50:16 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 17 Oct 2018 11:50:58 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 17 Oct 2018 11:54:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Wed, 17 Oct 2018 11:54:44 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Wed, 17 Oct 2018 11:54:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:471a4c1f3afec0f7170a0ef60b95447c8ccfccdded51e3c29b28a96741a05c29`  
		Last Modified: Thu, 23 Aug 2018 14:51:33 GMT  
		Size: 42.3 MB (42253615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f1b921c0f85f239afe44fe32aec1484822dc0ecee5dae4144ef99df661928e`  
		Last Modified: Thu, 23 Aug 2018 14:51:11 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026a9618114b42f3e98d2474b9bffcf0f3b394b837f4c531a60338e25e111112`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759772c425b56c1dc191c452852f0a201e52965b83e9d0e972ac43f6fba9ee56`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed895562017a99eebcf1de58efac03ab7a73322a695cb83067ee480f0e563d0d`  
		Last Modified: Thu, 23 Aug 2018 14:51:10 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb6d3e4e20e448d04a38b8a82c151223f51d101a507ae30fad4706893514dda`  
		Last Modified: Thu, 23 Aug 2018 15:38:01 GMT  
		Size: 2.8 MB (2764946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7337e5fcc63fca4cdd0732ae18f449595d17393dcaa8122264bc7d0177544406`  
		Last Modified: Sat, 29 Sep 2018 11:47:03 GMT  
		Size: 126.7 MB (126696662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fada15a865d53c28973f1b4dc72b955c49889413327d438159c538df970d95`  
		Last Modified: Wed, 17 Oct 2018 12:01:44 GMT  
		Size: 430.3 KB (430303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e0d37f35ca4c71f0359ea52cdbabb716370468e67b17f4da476ebd4be0cc2e`  
		Last Modified: Wed, 17 Oct 2018 12:01:42 GMT  
		Size: 40.5 KB (40548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79756708990b61a93eef67d0686ba0220490749f0696d5c7313591fc2828961d`  
		Last Modified: Wed, 17 Oct 2018 12:01:44 GMT  
		Size: 12.5 MB (12520538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8dae2c6a5812245bd411c9d1a4c707609b72852fe1785e189c476e26c665d3`  
		Last Modified: Wed, 17 Oct 2018 12:01:42 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66557bf14cde7176f711a211f3e27380a95a84636d8de5b8479a3dcd42f31bcf`  
		Last Modified: Wed, 17 Oct 2018 12:01:43 GMT  
		Size: 975.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f049dfb44af70e74f2e62d9ad4311a227aaebad0a84176d8f8e49f4eee215ab`  
		Last Modified: Wed, 17 Oct 2018 12:01:44 GMT  
		Size: 12.5 MB (12521895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ca1d22d7a33bfebb7099df7f4789b4be2dc10f529c5d8408c59925db2437b6`  
		Last Modified: Wed, 17 Oct 2018 12:02:54 GMT  
		Size: 101.2 MB (101178411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2d8a1879eb964eddcdbdb81b777e52e940e4fd4807bb577896630293afc807`  
		Last Modified: Wed, 17 Oct 2018 12:02:44 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca882d237e8bbd4d265fe23b9e8d62659f2981b8133389334312df48d3e547`  
		Last Modified: Wed, 17 Oct 2018 12:02:49 GMT  
		Size: 15.9 MB (15850316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
