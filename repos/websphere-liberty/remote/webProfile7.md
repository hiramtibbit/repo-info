## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:a122d32e8d26a4041cb857ac8faa47fb7388464c16bb2036c80dbed1bd2948e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:e454c44bf08aab1948edee5a3709f1b6e518bfe4c4785b4231546f3cfe6c1987
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256424753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d1431987acbd56a964223d072fc6035f3447cb390e5803ff9c6145c700f84d`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 03:33:57 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 03:34:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 19:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Fri, 06 Apr 2018 19:22:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 06 Apr 2018 19:22:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Apr 2018 22:27:40 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 06 Apr 2018 22:27:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 06 Apr 2018 22:27:51 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Fri, 06 Apr 2018 22:27:51 GMT
ARG LIBERTY_URL
# Fri, 06 Apr 2018 22:27:51 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 06 Apr 2018 22:27:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 06 Apr 2018 22:27:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Apr 2018 22:27:55 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Fri, 06 Apr 2018 22:27:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 06 Apr 2018 22:27:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 06 Apr 2018 22:28:00 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 06 Apr 2018 22:28:01 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Fri, 06 Apr 2018 22:28:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 06 Apr 2018 22:28:02 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 06 Apr 2018 22:28:02 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 06 Apr 2018 22:28:20 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 06 Apr 2018 22:29:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 06 Apr 2018 22:34:56 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f51c84437412aefdd5b57f02dc9974d4abcf492373dc15b5daeae44f1eca05`  
		Last Modified: Wed, 07 Mar 2018 03:37:19 GMT  
		Size: 3.0 MB (3021321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76927ff5ab089484d76ae230391128d1433e510045db7d5376227a68f3ffc759`  
		Last Modified: Fri, 06 Apr 2018 20:11:32 GMT  
		Size: 127.2 MB (127235928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d5a9ac15394f8df4741dd4484cfb2ad54ac4aaa8887aba27e95392833a9790`  
		Last Modified: Fri, 06 Apr 2018 22:36:41 GMT  
		Size: 422.6 KB (422589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f917ffd92a05341b3d36077a8b9a2c646efbc4a3f116a8ec43090b6f2e55dc9`  
		Last Modified: Fri, 06 Apr 2018 22:36:42 GMT  
		Size: 12.0 MB (12025340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd9237e2ff14f62f24cda2b386898e18d69b47b13ec48fde40c8050312b8be`  
		Last Modified: Fri, 06 Apr 2018 22:36:42 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f263741ee4aafcfbb081e54833855dac46b800b8f00d0ede79a79259dd85d766`  
		Last Modified: Fri, 06 Apr 2018 22:36:41 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7323e673a1552e509d137d16dfab95a0352f0136f00f5d1cf5da536487b5d8`  
		Last Modified: Fri, 06 Apr 2018 22:36:41 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62cf6215d814f74cb11eb05cd0b977cbacf00cb8747e96934f4a38d84e5c7f1`  
		Last Modified: Fri, 06 Apr 2018 22:37:11 GMT  
		Size: 70.8 MB (70751111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aecd0eecb122b09b85aac196b1ff93347d6edcbf7ccb058f3a1fac1e152d811`  
		Last Modified: Fri, 06 Apr 2018 22:53:53 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:a9d4f2be483c341a7aaa8f267d8d7516cbf32e90000d5302e9d16ef3b19ebd38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244964169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa43789622486d164f71de85413e87809dcdd84357421982ff3ec3f02df81b1`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 13 Apr 2018 22:38:50 GMT
ADD file:d71c060722440734cc20cbe246e3f45d5c038db6a20e3762d82e1a49d30d20da in / 
# Fri, 13 Apr 2018 22:38:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 22:38:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:38:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 22:38:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 22:38:53 GMT
CMD ["/bin/bash"]
# Sat, 14 Apr 2018 05:15:36 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 14 Apr 2018 05:15:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:15:49 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Sat, 14 Apr 2018 05:16:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 14 Apr 2018 05:16:26 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 07:22:18 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 14 Apr 2018 07:22:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 07:22:26 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Sat, 14 Apr 2018 07:22:26 GMT
ARG LIBERTY_URL
# Sat, 14 Apr 2018 07:22:26 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 14 Apr 2018 07:22:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 14 Apr 2018 07:22:30 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 07:22:30 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Sat, 14 Apr 2018 07:22:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 14 Apr 2018 07:22:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 14 Apr 2018 07:22:32 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 14 Apr 2018 07:22:32 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Sat, 14 Apr 2018 07:22:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 14 Apr 2018 07:22:32 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 14 Apr 2018 07:22:32 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 14 Apr 2018 07:22:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 14 Apr 2018 07:23:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 14 Apr 2018 07:24:24 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
```

-	Layers:
	-	`sha256:8e19c51a559879a2a39933c98850c8577d2172b903d0758906b1b8619d25fd67`  
		Last Modified: Fri, 13 Apr 2018 14:48:08 GMT  
		Size: 43.3 MB (43332037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6840605d3ccd0f332070cce5e89e79ff2caa2b70ad3f171bf0b4791901aa3ed1`  
		Last Modified: Fri, 13 Apr 2018 22:40:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55865af19fc535a568dbe9010567f2bc1a88f1726ac1d732685f6b0c73738c4c`  
		Last Modified: Fri, 13 Apr 2018 22:40:10 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f246529ed3f530096a5d59b28e4f21bbd18f22eb9598cb02ea7a8e3382c5c3b4`  
		Last Modified: Fri, 13 Apr 2018 22:40:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8b8e94a5301d2fe3de5142a9b754c31202623de5d4ca40e4a7416c2ec943ee`  
		Last Modified: Fri, 13 Apr 2018 22:40:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e3ee967f17cee199cdb3f655d89a6d17a0e9825801e26bbfbcf85584e79ad7`  
		Last Modified: Sat, 14 Apr 2018 05:18:02 GMT  
		Size: 2.9 MB (2877446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2fb67ec519a5e16ca7e59877ef07f3b868fd60bf93f2e526db70cc8a21bd4b`  
		Last Modified: Sat, 14 Apr 2018 05:18:59 GMT  
		Size: 115.6 MB (115552104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d076cb65185f72247f36cb6d293d7953dbe765b86c4eebbaa03efd49bc69d6e2`  
		Last Modified: Sat, 14 Apr 2018 07:25:30 GMT  
		Size: 421.6 KB (421557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae11a91539a4285bbf195277742d093eab687956b132eb06945f1e61d810b2`  
		Last Modified: Sat, 14 Apr 2018 07:25:31 GMT  
		Size: 12.0 MB (12025332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5166aec4e3a950c91c23f79f2c81b4df5542eafc8f7855bb096169ee10cb16`  
		Last Modified: Sat, 14 Apr 2018 07:25:30 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f01ff0f085085ab2339e5662c0401c037c8b7f9e7c306cd97865a223dec3d31`  
		Last Modified: Sat, 14 Apr 2018 07:25:31 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddad06ffa808bfcfd5107c817b3261f0e1cb3f4fb1f92e650241779299b40af`  
		Last Modified: Sat, 14 Apr 2018 07:25:30 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff501834f1c17c28741a224d8702bccd9ff456c6ff8ac29de612222192b44efd`  
		Last Modified: Sat, 14 Apr 2018 07:25:45 GMT  
		Size: 70.8 MB (70751054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8485f5ce4155145e22557fd2f654c5444fed4216639014bafe1a6bbc9f440efd`  
		Last Modified: Sat, 14 Apr 2018 07:26:08 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:3914a7bf8d5f1cb4c04c4a03c3d08ed8253af6517ed5de8f92b54d0b4569c6de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272185601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc3e50f205db6daca6970b1b84907f31101742a1442bd2228056c2c2d7ebbc9e`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 07 Mar 2018 03:42:20 GMT
ADD file:4ef9de52677adcdeef035215e1a5d7e4be4f21ff43f32e729cbda321b19eb41a in / 
# Wed, 07 Mar 2018 03:42:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 03:42:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 03:42:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 03:42:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 03:42:37 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:00:32 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 07 Mar 2018 04:01:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Apr 2018 02:18:49 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Tue, 10 Apr 2018 02:20:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 10 Apr 2018 02:21:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 03:09:13 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 10 Apr 2018 03:09:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Apr 2018 03:09:39 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Tue, 10 Apr 2018 03:09:42 GMT
ARG LIBERTY_URL
# Tue, 10 Apr 2018 03:09:46 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 10 Apr 2018 03:09:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 10 Apr 2018 03:10:00 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Apr 2018 03:10:03 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Tue, 10 Apr 2018 03:10:06 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 10 Apr 2018 03:10:11 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 10 Apr 2018 03:10:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 10 Apr 2018 03:10:19 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Tue, 10 Apr 2018 03:10:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 10 Apr 2018 03:10:24 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 10 Apr 2018 03:10:27 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 10 Apr 2018 03:10:44 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 10 Apr 2018 03:12:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 10 Apr 2018 03:14:47 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
```

-	Layers:
	-	`sha256:d2081f6d30078f08bc14fa8f4ecae796f33fc3eef73c3ecb4569c9c72483ceb4`  
		Last Modified: Wed, 07 Mar 2018 03:44:48 GMT  
		Size: 45.4 MB (45370254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0b7b79b9819de696c49e6a5340a1c6855f63594f0a4ab4f110c1e777b78031`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9129e3a4ef8ba31c6c43561a0fc1b0d83da1405bb2ada2970a6dfbb6713f0c24`  
		Last Modified: Wed, 07 Mar 2018 03:44:36 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a881ad53304753c07c7a5eb3a78432b387c6a79564b58974e62703af2bbf8`  
		Last Modified: Wed, 07 Mar 2018 03:44:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2879d728317e4d31ee80537a0a174de5d6ef7c4897a6ae6f4ada0273b1b78d6`  
		Last Modified: Wed, 07 Mar 2018 03:44:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ab4870ad4ee97d4e32d496b63cc7373fd7f11d549efb2263394978effb7eac`  
		Last Modified: Wed, 07 Mar 2018 04:08:42 GMT  
		Size: 2.9 MB (2878547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb6447c27f065a302e9e2204574f8311113f63580a564e2735f4be53a5bf4bc`  
		Last Modified: Tue, 10 Apr 2018 02:26:53 GMT  
		Size: 140.7 MB (140692973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a11ccfa6137982abd2066dda2ef4d0a293654cc2f9492bbf3a1c4415965b39e`  
		Last Modified: Tue, 10 Apr 2018 03:21:08 GMT  
		Size: 454.0 KB (453961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e26c6eb478cda6b1b6ababb364287a6b48914927a8ffb885e073f8ca6063535`  
		Last Modified: Tue, 10 Apr 2018 03:21:10 GMT  
		Size: 12.0 MB (12025390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f1d0b13822a346db0e9641c674afd8f5d828c30dfa35638211d2fbd49f471d`  
		Last Modified: Tue, 10 Apr 2018 03:21:07 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6fd517d81f0198c9e4c35e92d497665563f99404dc75ffa057e80563e068d1`  
		Last Modified: Tue, 10 Apr 2018 03:21:08 GMT  
		Size: 643.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27cfdfa0682ec29937c3aa2fa496c5dad8ae93b3bed46242fa85fb9905bf5d2b`  
		Last Modified: Tue, 10 Apr 2018 03:21:09 GMT  
		Size: 888.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c771a5f002098b52bc2519d9a394ace9934a6d687df79909804b0ea0da00755e`  
		Last Modified: Tue, 10 Apr 2018 03:21:33 GMT  
		Size: 70.8 MB (70759658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2754469b97bc60e5b948966bfb05bed85c5060e15971ab358c8cfb1e6bbfa79f`  
		Last Modified: Tue, 10 Apr 2018 03:22:24 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:18360abd886cc4c7f67187a2b3125e4ac9653f455ab813961a97a5fc58d785c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254731494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a2541cf419c5d15694337d57cc7e24e0fc62544dd1183d79599ef22be15a50`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:37 GMT
ADD file:267bade06e21f4da617dbdfb7d865d1ae457c377d5c0371a040acfd822e4bf70 in / 
# Fri, 13 Apr 2018 12:00:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:40 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 13:46:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 13 Apr 2018 13:46:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 13:46:52 GMT
ENV JAVA_VERSION=1.8.0_sr5fp11
# Fri, 13 Apr 2018 13:47:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3e925759a6369ec9f15dda164a2e5ff77d5155669f244be0f82b95d2372102ed';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='03ad2e92623ea00312b37fef0b3d57886381c8cec4ce40d38a0080dace88f792';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='edd6214233c0164bc1425e9258cecc4e85fa69fefd582602ae4a445500c93340';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='51a4c97867cae68474de2921e97ae07e97662ec7f083eb206602428cd9726ac5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='686c6875520ea85582acde780feb3a21b4919ab1081eb42518226faad5fee3ba';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 13 Apr 2018 13:47:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 15:19:07 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 13 Apr 2018 15:19:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 15:19:14 GMT
ENV LIBERTY_VERSION=18.0.0_01
# Fri, 13 Apr 2018 15:19:14 GMT
ARG LIBERTY_URL
# Fri, 13 Apr 2018 15:19:14 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 13 Apr 2018 15:19:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 13 Apr 2018 15:19:18 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Apr 2018 15:19:18 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.1
# Fri, 13 Apr 2018 15:19:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 13 Apr 2018 15:19:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 13 Apr 2018 15:19:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 13 Apr 2018 15:19:20 GMT
COPY file:dd18e2d58f3840eaf6ab59b02d1250e6e302795adec103c5d1e172c8f709120e in /opt/ibm/docker/ 
# Fri, 13 Apr 2018 15:19:21 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 13 Apr 2018 15:19:21 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 13 Apr 2018 15:19:21 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 13 Apr 2018 15:19:31 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 13 Apr 2018 15:20:47 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 13 Apr 2018 15:22:04 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
```

-	Layers:
	-	`sha256:abc96355933bb2323ea723ca02a7cc1e3174ac67c75ee385f625868bf29bf280`  
		Last Modified: Fri, 13 Apr 2018 12:01:59 GMT  
		Size: 42.1 MB (42086981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b922c1085ea26ea9dadf76648fc7eb2e03b89192bb48c16326e615a4f4e347`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864a2c357402126daa233f6cddc3ee7ce99be4831e99dcc3650d87c35216571`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2a28f1966a2d48d23fef2c2b6e1a9ef8bc8b7399d5b033936c39fb7724f7c`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317a797e9f44610a21b839bcb58b50acb2d427eb7a4a01129089d9db336c4f9`  
		Last Modified: Fri, 13 Apr 2018 12:01:52 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58485c70a5edf34477a9565000d10b5425e7cc7009d64a13b09d12057c3995f5`  
		Last Modified: Fri, 13 Apr 2018 13:49:41 GMT  
		Size: 2.8 MB (2765787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7068edd2f4406912f991bc591072b02becba7acf70afcf9aef526aa566c15fc9`  
		Last Modified: Fri, 13 Apr 2018 13:49:53 GMT  
		Size: 126.7 MB (126668738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf60dd121d5848eaf86b0e0dd040b2b8287786bf85a0d6a3e01926ee3f27d2f6`  
		Last Modified: Fri, 13 Apr 2018 15:24:02 GMT  
		Size: 428.3 KB (428286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5df35e53af23b1a87b038f4ca46a9ca3f417f2f1d766c6abf30e4efe0b6f6e`  
		Last Modified: Fri, 13 Apr 2018 15:24:06 GMT  
		Size: 12.0 MB (12025337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba5af94f4a8538a1a9758381f7bf31fd995ff5d2f624f033ba4a29629d8a233`  
		Last Modified: Fri, 13 Apr 2018 15:24:02 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928a0dbdb15fa19027938e8d0f0af1ff527655cf6b08ff865fa7675ac8c27fd4`  
		Last Modified: Fri, 13 Apr 2018 15:24:03 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d4a2662b8cd5900876574c11f54d347c810173123d40aaeb5267ddc4480dbc`  
		Last Modified: Fri, 13 Apr 2018 15:24:02 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30032595b74835578bdc40eebfab7b2669092b3a254dfe65bbe1d9e5829a7c6`  
		Last Modified: Fri, 13 Apr 2018 15:24:23 GMT  
		Size: 70.8 MB (70751693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6fd317e5e3dc4d0128e90bf3a7f2dac1809ff33e8159a21fb50c313094af73`  
		Last Modified: Fri, 13 Apr 2018 15:24:47 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
