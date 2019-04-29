## `websphere-liberty:springBoot2`

```console
$ docker pull websphere-liberty@sha256:848eb0cd52fe7c1e82b7f02152223745fb1cc01210de7a210b4c7868a491add9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `websphere-liberty:springBoot2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:9faac586d98d2f310ebc288b987539d0d6d3c5402e36f0eed8dd97caf68aa92d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223391420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c466f25ecf537a564db7a3802f2aa2ad7f0f6f278abdcba87c5ba7e19404fcaa`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:31:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Apr 2019 23:31:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 29 Apr 2019 17:19:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Mon, 29 Apr 2019 17:20:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 29 Apr 2019 17:20:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 29 Apr 2019 17:41:54 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Mon, 29 Apr 2019 18:21:52 GMT
ENV LIBERTY_VERSION=19.0.0_04
# Mon, 29 Apr 2019 18:21:52 GMT
ARG LIBERTY_URL
# Mon, 29 Apr 2019 18:21:53 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 29 Apr 2019 18:22:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/*
# Mon, 29 Apr 2019 18:22:05 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Apr 2019 18:22:05 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.4 BuildLabel=cl190420190419-0642
# Mon, 29 Apr 2019 18:22:05 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 29 Apr 2019 18:22:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 29 Apr 2019 18:22:07 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Mon, 29 Apr 2019 18:22:07 GMT
COPY dir:1cf5cc2663c6235241a5228340a9c566587fe27b3e434a313debbf75dacd7a4b in /opt/ibm/fixes/ 
# Mon, 29 Apr 2019 18:22:07 GMT
COPY dir:fa68d22abfb2fa5f9bc33c6a4b88873ea136c5715046037c45273daac98d022b in /licenses/ 
# Mon, 29 Apr 2019 18:22:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Mon, 29 Apr 2019 18:22:08 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Mon, 29 Apr 2019 18:22:08 GMT
USER 1001
# Mon, 29 Apr 2019 18:22:08 GMT
EXPOSE 9080 9443
# Mon, 29 Apr 2019 18:22:09 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 29 Apr 2019 18:22:09 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 29 Apr 2019 18:22:09 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 29 Apr 2019 18:22:12 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 29 Apr 2019 18:30:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 29 Apr 2019 18:30:07 GMT
COPY --chown=1001:0file:3dbc7012596d01298b61adec3a50686ea3c8a1d1ac8b3161e2ede589a9f1c2c0 in /config/ 
# Mon, 29 Apr 2019 18:30:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ibm/wlp/output/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da5732a982b2ae8bd17a3fac70acc8f0e115496804646f67d3b29dec4ee78c6`  
		Last Modified: Fri, 26 Apr 2019 23:34:41 GMT  
		Size: 3.0 MB (3021162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05785f3f4417f4f2a926d9cb89d4dfbb85ac56e0feb01423da0fd7c7e3e01afb`  
		Last Modified: Mon, 29 Apr 2019 17:25:06 GMT  
		Size: 129.9 MB (129946943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58999f704c44d32ce682ca4b21ce8589d88851c4459fbc088f73ff1b11efabed`  
		Last Modified: Mon, 29 Apr 2019 19:01:52 GMT  
		Size: 13.1 MB (13088247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfda743be853779c594e66faac11f1e3344824ef8c2d3f5a6a2c3b1a882ebf82`  
		Last Modified: Mon, 29 Apr 2019 19:01:49 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90bf3bd5fb80581d6b2d4f5382f3340933131a096e50d352c635cee1e1841bf`  
		Last Modified: Mon, 29 Apr 2019 19:01:49 GMT  
		Size: 3.0 KB (2996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac37dd359ac82411721a401441293704cfee3733063a88cfaa7f53e6678f5b9`  
		Last Modified: Mon, 29 Apr 2019 19:01:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c592661b6f2cc4f08897c72a95fb1e5a7fbff990691ac91d45fba3e0a9421b99`  
		Last Modified: Mon, 29 Apr 2019 19:01:49 GMT  
		Size: 41.2 KB (41223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cd5131145f5fcfc1cea9bb7126bdb0c43bdef5b4be3eb75fe281f15e7e09d6`  
		Last Modified: Mon, 29 Apr 2019 19:01:49 GMT  
		Size: 3.9 KB (3851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9bd522efad1c2b3b364a67cebe4f1d7001e44a2b0b09a18976e9d0953acc7f`  
		Last Modified: Mon, 29 Apr 2019 19:03:10 GMT  
		Size: 26.9 MB (26891257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb8a99f3dae99305a18d24c949b7b6bd7e670233786731fd19fe87082c07106`  
		Last Modified: Mon, 29 Apr 2019 19:03:04 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ae62bc8da58f13f57e907d7e9bbcd94ceb1616dfa2e7e20b07413295369186`  
		Last Modified: Mon, 29 Apr 2019 19:03:06 GMT  
		Size: 6.6 MB (6640208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
