## `websphere-liberty:webProfile8`

```console
$ docker pull websphere-liberty@sha256:0e14a1f959a3cb4553e35eb248dee15b496bb763e4d61e8f2d1f645b7f2afa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:3ce88e391eea302e67743a7c6e51b158264abf6bb51e884b171740a3c062a3ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271212827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f71f5127b5ea5681f7f28d4df126e554e3542aba34d472ed733a81f419b7717`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 22 Aug 2018 17:31:28 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 22 Aug 2018 17:31:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:31:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:31:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:31:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:31:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:57:37 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 22 Aug 2018 18:57:51 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:57:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Wed, 22 Aug 2018 18:58:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 22 Aug 2018 18:58:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 04 Sep 2018 18:20:05 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 04 Sep 2018 18:20:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 18:20:16 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Tue, 04 Sep 2018 18:20:16 GMT
ARG LIBERTY_URL
# Tue, 04 Sep 2018 18:20:16 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 04 Sep 2018 18:20:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 04 Sep 2018 18:20:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 18:20:20 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Tue, 04 Sep 2018 18:20:21 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 04 Sep 2018 18:20:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Tue, 04 Sep 2018 18:20:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 04 Sep 2018 18:20:23 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 04 Sep 2018 18:20:23 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 04 Sep 2018 18:20:23 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 04 Sep 2018 18:20:23 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 04 Sep 2018 18:20:23 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 04 Sep 2018 18:20:51 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 04 Sep 2018 18:27:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 04 Sep 2018 18:27:37 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Tue, 04 Sep 2018 18:27:49 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba077e1ddb3aa8b95b2ecc5e58830800af4f5c06a5a37a3b7d7e0a67e178fb65`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83d2bc656952f573cee825d42e58622909b4be524b653f4f3df7464e57aa2`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b69b6e47437924b207458fe7fc8f66812622983ae5a5d84bfdd2d83a9581e1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f72e97e1f61face716660657e4df5f70c2008a0b8b89e35dc6a460124fe01d1`  
		Last Modified: Wed, 22 Aug 2018 17:37:07 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bd364eda0c79e5d78fe6142f70cfad2fbe6b2bda2f638c58b17d696ae6a41a`  
		Last Modified: Wed, 22 Aug 2018 19:02:02 GMT  
		Size: 3.0 MB (3020696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd16121031d9097441efa2f72a549cfa7d12ac262e3c60515f8b0dc6a900480`  
		Last Modified: Wed, 22 Aug 2018 19:02:25 GMT  
		Size: 127.7 MB (127680818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0aa7c95694a7216d71c43569d0d3a9c3c436228cfd9148bfaff334ee9ceda5`  
		Last Modified: Tue, 04 Sep 2018 18:29:58 GMT  
		Size: 422.0 KB (421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392ca19754ebf0c2e582a53f93677ab300b7458431fdf5a08936f18a2081193f`  
		Last Modified: Tue, 04 Sep 2018 18:29:59 GMT  
		Size: 12.5 MB (12494064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be709c6087639989a02d5ce4020bea2d76fd470a43bceddb45f21a00d035be3`  
		Last Modified: Tue, 04 Sep 2018 18:29:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f119728f7eda808370855437b1f617ca9770f3ecd9afc35358186edf4ea26b`  
		Last Modified: Tue, 04 Sep 2018 18:29:58 GMT  
		Size: 641.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ce459ae602ea4999ac142a5ee0758b3f72683f6bae02803a368e35ec8b04186`  
		Last Modified: Tue, 04 Sep 2018 18:29:58 GMT  
		Size: 978.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36aedf766a8b47a9c01adb595f541253751d64ea3ca3505516f260bc2856f01`  
		Last Modified: Tue, 04 Sep 2018 18:31:09 GMT  
		Size: 72.8 MB (72847878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4695cbdb0123a80bf2486317c3e50fc38563124bd41be23981d50a2f509f2701`  
		Last Modified: Tue, 04 Sep 2018 18:31:03 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ed6935796d6ed0ec75e067468e6e10d878bdcd34e8c19ba061a9c7e85e613a`  
		Last Modified: Tue, 04 Sep 2018 18:31:07 GMT  
		Size: 11.5 MB (11490012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:2e40734349d4fe529749d318aef6314fb4ec98e89bfd4c53ddcee0b587eab905
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259701183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8863a0412d86b41e9fa196637aa9b4b4c8603568a8d1cca27c2351f66bb9fe`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 15:55:56 GMT
ADD file:34ab8be3f140b862a66eb9106c2481df8aea201a24262ef4b529cfe572f6097c in / 
# Thu, 23 Aug 2018 15:56:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:56:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:56:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:56:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:56:08 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 18:41:34 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 18:42:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 18:42:08 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Thu, 23 Aug 2018 18:43:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 23 Aug 2018 18:43:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 23 Aug 2018 19:26:37 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 23 Aug 2018 19:26:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 19:26:47 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Thu, 23 Aug 2018 19:26:47 GMT
ARG LIBERTY_URL
# Thu, 23 Aug 2018 19:26:47 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 23 Aug 2018 19:26:52 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 23 Aug 2018 19:26:53 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Aug 2018 19:26:53 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Thu, 23 Aug 2018 19:26:53 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 23 Aug 2018 19:26:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Thu, 23 Aug 2018 19:26:56 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 23 Aug 2018 19:26:57 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Thu, 23 Aug 2018 19:26:57 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 23 Aug 2018 19:26:57 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 23 Aug 2018 19:26:58 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Thu, 23 Aug 2018 19:26:58 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 23 Aug 2018 19:28:41 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 23 Aug 2018 19:39:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 23 Aug 2018 19:39:35 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Thu, 23 Aug 2018 19:39:54 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:bd73c3089e08f76ef90cd0566c48e478d1a546126ac8b4155a9eb771001e4a41`  
		Last Modified: Thu, 23 Aug 2018 16:04:02 GMT  
		Size: 43.5 MB (43519933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908456bb100430678c2f5d49c9c216260c4b5dfe745a94c1ed92fe97b1a01771`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7186622ef44de7a2bec81893dfaf016b9b50afe37edabe298892670046190fec`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f510d815c12855dc5ea55f5d264ac661d788831749d8c17e18e556e3cf6096`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e211bdcc20115eb5109160072716547977bdfedbe96cc7887a0d0c4b65551`  
		Last Modified: Thu, 23 Aug 2018 16:03:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4245881f6189f4db2e8226c189c225079595810cd8a0018f86acb80374c519a6`  
		Last Modified: Thu, 23 Aug 2018 18:46:37 GMT  
		Size: 2.9 MB (2875840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd24cb338aea5df1fbe8e642fa03f9a544b9d16eb289fe7393d41922c3aa2372`  
		Last Modified: Thu, 23 Aug 2018 18:46:58 GMT  
		Size: 115.8 MB (115826032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84115301c307df08ab888133cdd59cea4a0a7b89defb638a3320fbb055acf95c`  
		Last Modified: Thu, 23 Aug 2018 19:43:55 GMT  
		Size: 420.8 KB (420773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2969b6f85a06841ed7ba3bee2a54836cf32fe1e99c048c9a25a6672f2d526ef`  
		Last Modified: Thu, 23 Aug 2018 19:43:58 GMT  
		Size: 12.5 MB (12494057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1971cb9f9d31a05c2bc198810ad3be4a639ad45a611b3900a3b9783c87fb86`  
		Last Modified: Thu, 23 Aug 2018 19:43:54 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e2025d089cabcfeac235c82898f7c151cff068d4d3f7a4cc5e60fb6ef94999`  
		Last Modified: Thu, 23 Aug 2018 19:43:54 GMT  
		Size: 645.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fadda10547fdc001dc290721c0387c6bb28170ee260d9d46fb3c8d89fd6b57d`  
		Last Modified: Thu, 23 Aug 2018 19:43:54 GMT  
		Size: 974.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dbf589fb53ba19ce09aca04a9c603b68ba109b3af6e2570c740d55df734d9c2`  
		Last Modified: Thu, 23 Aug 2018 19:48:17 GMT  
		Size: 72.8 MB (72848014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e4cf11bc9803d9366184ee625617c2ce631957fc041e9b0161b85e6d6769a6`  
		Last Modified: Thu, 23 Aug 2018 19:48:06 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518102e51e5e99dbf045602bf7bffbea34ec2eb3a483a5c7e5b1b4fc40f9b31a`  
		Last Modified: Thu, 23 Aug 2018 19:48:11 GMT  
		Size: 11.7 MB (11711717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:1116550b42f3dbcd26752a9a576df13c440554724a386a8796af6ade9275b52f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.7 MB (286704578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcf495733f18843679313fe18f0346a53bba1cfedd660d47a55cab93dfda3e6`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 23 Aug 2018 12:50:13 GMT
ADD file:b09779db95ed098d4ff481c60f9070c9855d49079531c872f7f306766b31a320 in / 
# Thu, 23 Aug 2018 12:50:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:50:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:50:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:50:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:50:31 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:23:06 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 23 Aug 2018 16:23:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:23:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Thu, 23 Aug 2018 16:25:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 23 Aug 2018 16:25:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 23 Aug 2018 16:50:23 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 23 Aug 2018 16:50:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:50:49 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Thu, 23 Aug 2018 16:50:52 GMT
ARG LIBERTY_URL
# Thu, 23 Aug 2018 16:50:55 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 23 Aug 2018 16:51:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 23 Aug 2018 16:51:10 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Aug 2018 16:51:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Thu, 23 Aug 2018 16:51:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 23 Aug 2018 16:51:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Thu, 23 Aug 2018 16:51:25 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 23 Aug 2018 16:51:26 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Thu, 23 Aug 2018 16:51:27 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 23 Aug 2018 16:51:29 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 23 Aug 2018 16:51:31 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Thu, 23 Aug 2018 16:51:32 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 23 Aug 2018 16:54:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 23 Aug 2018 17:07:24 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 23 Aug 2018 17:07:26 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Thu, 23 Aug 2018 17:07:42 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:0d0dbb9a021cbff2129dab2bc36f95d25c2bde53c72d61c87f45f4b14b810ebc`  
		Last Modified: Thu, 23 Aug 2018 12:53:07 GMT  
		Size: 45.6 MB (45595505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cb08b3a0bd0961e0ecbe16b6c544124a22f1beca9f3621f59e5cd5e2346d49`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10066c30deaec81ef942231f5f84b5782b7cf7bcf78c389453617b7265465be2`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d604dc40c1d1c57ec0ba6faed21bc3b4e8ea4fa54eb547fbc134e7c73d468203`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b9507f41bb4395530111a162394310249dfe8f51e0682c9c17747c09ff12f6`  
		Last Modified: Thu, 23 Aug 2018 12:52:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d43d6ba84f2c24c33f5e348c88ba6b90a2263c4c410262a1f188d2ad151a9f9`  
		Last Modified: Thu, 23 Aug 2018 16:32:27 GMT  
		Size: 2.9 MB (2880557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92cd229a04d34b53bf69609e4a9bd55e0f4d47a4acc4537d5ba433790b943c7`  
		Last Modified: Thu, 23 Aug 2018 16:32:58 GMT  
		Size: 141.0 MB (141049753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5c91240e0eb4d00d086fe71a5ca252883d8aad8a391541f1625edef5f81cfd`  
		Last Modified: Thu, 23 Aug 2018 17:11:43 GMT  
		Size: 453.0 KB (453023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71692b1e490d0d4a45436ef753eb895f7d4e670c007133a7ad4cfdbc1e474995`  
		Last Modified: Thu, 23 Aug 2018 17:11:45 GMT  
		Size: 12.5 MB (12494067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5afe815d2485a392e28dd9c3f4c2f23291ef196ece955803a2e70dd7998ab17`  
		Last Modified: Thu, 23 Aug 2018 17:11:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b2c09dab6bfb9b5d0108e0d885a29edfbea385d8a4939b3c9ce0d68d405ea1`  
		Last Modified: Thu, 23 Aug 2018 17:11:42 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7843f2e41c412c93644f46d40bb89d68135280d34b3069e70e5770ed51e9cf`  
		Last Modified: Thu, 23 Aug 2018 17:11:42 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427ae6feddce6695ed9458049519520650d1bac38f519561e27f6dc5a2b0457b`  
		Last Modified: Thu, 23 Aug 2018 17:14:23 GMT  
		Size: 72.9 MB (72851949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228bb97786a1ea240cd93265d092ee18a532c11830678ffffedfcc4ded20a95d`  
		Last Modified: Thu, 23 Aug 2018 17:14:12 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89a02d64b6b7f3a4fd2eda523f5364ec6b8bf4cab05f375e30a384b1ab099f7`  
		Last Modified: Thu, 23 Aug 2018 17:14:16 GMT  
		Size: 11.4 MB (11374800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:314d4065732ed9deab8ba1262993862f352d52fe7e87b1f0193f0d31505b5963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269365672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdff7fc6dfde2e7193b12648ddaf2379bbe5a8124bb2f67aad95c04a33e311b`
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
# Thu, 23 Aug 2018 15:35:25 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Thu, 23 Aug 2018 15:36:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b2dfbdac0fda3fd8ecea6d9d145da7d6f9fa79fe5cfc13dd3862fc331b8698de';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b4f525b885ca369b1ab626d552e3ed74f5c6ccc674fcaf5340ecbd9aa046c1eb';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf824a43250b64a85f86e43ee75543de235a4e768f5cc540d4e8b0f4fae2ff18';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f216bf12f094e48c3bf05a45d27669f047670e734d4be3f4015257d42a6b1990';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='24acc20c2487f2e3a3246c86a10b90b0d7ce6121d923bd7405a1c53e119094ac';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 23 Aug 2018 15:36:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 23 Aug 2018 16:20:22 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Thu, 23 Aug 2018 16:20:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:20:39 GMT
ENV LIBERTY_VERSION=18.0.0_02
# Thu, 23 Aug 2018 16:20:40 GMT
ARG LIBERTY_URL
# Thu, 23 Aug 2018 16:20:40 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 23 Aug 2018 16:20:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 23 Aug 2018 16:20:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Aug 2018 16:20:43 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.2
# Thu, 23 Aug 2018 16:20:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 23 Aug 2018 16:20:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Thu, 23 Aug 2018 16:20:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 23 Aug 2018 16:20:46 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Thu, 23 Aug 2018 16:20:46 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 23 Aug 2018 16:20:46 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 23 Aug 2018 16:20:46 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Thu, 23 Aug 2018 16:20:46 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 23 Aug 2018 16:21:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 23 Aug 2018 16:28:16 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 23 Aug 2018 16:28:19 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Thu, 23 Aug 2018 16:28:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:2c7759a777a40e8afacf1766f63e4e65cc5977625de817b31c5ec472a92bc67a`  
		Last Modified: Thu, 23 Aug 2018 15:39:02 GMT  
		Size: 127.0 MB (126957375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7ba60013e023637072bc65f899ff59afd15625b7c57ef6d3cb310d7a425ba4`  
		Last Modified: Thu, 23 Aug 2018 16:31:00 GMT  
		Size: 427.6 KB (427552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ae90c823dc873efaf653e061ff45c5cc7287c759e3b5f84fcd979abdb72769`  
		Last Modified: Thu, 23 Aug 2018 16:31:03 GMT  
		Size: 12.5 MB (12494053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c331db8a31415325839a65cb079dc5351c0caf0aaed4d3cc0dfc1908fb78fc7`  
		Last Modified: Thu, 23 Aug 2018 16:30:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bb2c68dcf3d59364934e0cf7c055cf15e2b0ccfb7dc84901d9ff9bf5f34714`  
		Last Modified: Thu, 23 Aug 2018 16:30:59 GMT  
		Size: 633.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426e8aa1b84f4e28504e3eb0632fc67e934c1f2d17dcebebb106993190e21d7f`  
		Last Modified: Thu, 23 Aug 2018 16:30:59 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7fb2159dca87f04dfd6fce82e0370afcd14eb61aedebaec03c7c075b7f1f15`  
		Last Modified: Thu, 23 Aug 2018 16:38:28 GMT  
		Size: 72.8 MB (72847929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b3e6006f3c5815dbea8664c615fd562222dc52753c9182aa19239bb71d8158`  
		Last Modified: Thu, 23 Aug 2018 16:37:50 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b895da5c6fedf7fbd80d80aab4b301762f0f5925461c6c89ae45cca3695bd1e`  
		Last Modified: Thu, 23 Aug 2018 16:37:58 GMT  
		Size: 11.6 MB (11615436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
