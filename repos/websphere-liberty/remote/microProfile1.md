## `websphere-liberty:microProfile1`

```console
$ docker pull websphere-liberty@sha256:2049c2c726f1d2ece0b740b5bcbe377d74c5db2a7d84711e5504aa89481cde3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:6e6a895198bd3b3b43ed052faa0f7b62ee319f30795b14ae019192e842944847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279672278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85934c1ad7a1832859ecb9ff0008f8d7d9d3c58d48e34f86fdf1f72f45db0ed`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:41:49 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 00:41:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 02 Apr 2019 22:21:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Tue, 02 Apr 2019 22:22:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 02 Apr 2019 22:22:22 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 02 Apr 2019 23:05:04 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 02 Apr 2019 23:05:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Tue, 02 Apr 2019 23:05:41 GMT
ENV LIBERTY_VERSION=19.0.0_03
# Tue, 02 Apr 2019 23:05:41 GMT
ARG LIBERTY_URL
# Tue, 02 Apr 2019 23:05:41 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 02 Apr 2019 23:05:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Tue, 02 Apr 2019 23:05:45 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Apr 2019 23:05:45 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.3 BuildLabel=cl190320190321-1636
# Tue, 02 Apr 2019 23:05:45 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 02 Apr 2019 23:05:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 19 Apr 2019 23:20:04 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Fri, 19 Apr 2019 23:20:04 GMT
COPY dir:a3f75de77309e1a077bd8d5fb848078b9fe07331200b980974a9992573068f05 in /opt/ibm/fixes/ 
# Fri, 19 Apr 2019 23:20:05 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Fri, 19 Apr 2019 23:20:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Fri, 19 Apr 2019 23:20:07 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Fri, 19 Apr 2019 23:20:07 GMT
USER 1001
# Fri, 19 Apr 2019 23:20:08 GMT
EXPOSE 9080 9443
# Fri, 19 Apr 2019 23:20:08 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 19 Apr 2019 23:20:09 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 19 Apr 2019 23:20:09 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 19 Apr 2019 23:20:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 19 Apr 2019 23:26:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 19 Apr 2019 23:26:18 GMT
COPY --chown=1001:0file:90ee4bcbbba4ab370fb1c79c7599798b483fd02124222aece922c67829ce8e0f in /config/ 
# Fri, 19 Apr 2019 23:26:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ibm/wlp/output/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f573d025b2c12ddc00f52d4d32c0469d57f750bf9371a0a9839bacb6d8155fa8`  
		Last Modified: Tue, 12 Mar 2019 00:44:45 GMT  
		Size: 3.0 MB (3021295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ee82acb997bb0630fbb18a1b80258dd2ab9cb2bb961dc39f7e95970b245256`  
		Last Modified: Tue, 02 Apr 2019 22:27:43 GMT  
		Size: 129.3 MB (129336804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513b028d15b62103b74b42afb2f53d104a97a03f3271b59fed534c12f73ecbff`  
		Last Modified: Tue, 02 Apr 2019 23:39:23 GMT  
		Size: 424.7 KB (424652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac8d46279c3d23395d440ff63ef375c61b8de3d26ee7152fc025e4d5ec9510c`  
		Last Modified: Tue, 02 Apr 2019 23:39:25 GMT  
		Size: 12.9 MB (12899621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfae071f264784ab0a4be602207d834f6c658611bd1d0702c11b77686a9b03c`  
		Last Modified: Tue, 02 Apr 2019 23:39:23 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622f7008ba90ff74c3afbcf210f6413624aa106bf00d0b754da0ce6c9e429cc0`  
		Last Modified: Fri, 19 Apr 2019 23:50:12 GMT  
		Size: 3.0 KB (2992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c03582ddc4ad2bfc235a3cdac3270e5453288ea9c0075da9192fe75efd7016`  
		Last Modified: Fri, 19 Apr 2019 23:50:13 GMT  
		Size: 2.0 MB (2027092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5456d26d043077c103e91a00a5fcc6b5eb7a09ea0a788a0d01d1388aa02ce7c4`  
		Last Modified: Fri, 19 Apr 2019 23:50:13 GMT  
		Size: 40.9 KB (40879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91867ee9e9b787852f0c5d871efaeda4adf14ed6997b0dcb7654b60056f8344d`  
		Last Modified: Fri, 19 Apr 2019 23:50:13 GMT  
		Size: 2.0 MB (2031215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51217d27220c10264ba2d985327342c71a0d6dbd0e1c8cb64cbfaf39fffa5442`  
		Last Modified: Fri, 19 Apr 2019 23:51:07 GMT  
		Size: 79.4 MB (79356089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db794be42b640f817a2d570de24847b1b95df3714307be9fba08b57c88afdbb1`  
		Last Modified: Fri, 19 Apr 2019 23:50:57 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73005f5f05eeb4e159ea0be9a950b44a0556d9c6a89d4c6bd592f2135bfcfa57`  
		Last Modified: Fri, 19 Apr 2019 23:51:03 GMT  
		Size: 7.0 MB (6967354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:d6e3a28242826f0e8cc1386d3185fc08950d38a29b216936cb54d032d3a8761e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.6 MB (268585378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1606e4d0963728131c9d0ee211473cae6827e5a57b999da9c02dbfaee4b67f1`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 11:35:18 GMT
ADD file:1ba3cea4bf38cb3dc387648ad667cda3391bbc7c89c61f301f8bfac535791866 in / 
# Tue, 12 Mar 2019 11:35:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 11:35:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 11:35:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 11:35:21 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:15:52 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 12:16:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 11:30:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 11:30:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 11:30:56 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 03 Apr 2019 12:26:15 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 03 Apr 2019 12:26:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Wed, 03 Apr 2019 12:26:57 GMT
ENV LIBERTY_VERSION=19.0.0_03
# Wed, 03 Apr 2019 12:26:57 GMT
ARG LIBERTY_URL
# Wed, 03 Apr 2019 12:26:57 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 03 Apr 2019 12:27:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 03 Apr 2019 12:27:01 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Apr 2019 12:27:01 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.3 BuildLabel=cl190320190321-1636
# Wed, 03 Apr 2019 12:27:02 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 03 Apr 2019 12:27:03 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 20 Apr 2019 12:11:52 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Sat, 20 Apr 2019 12:11:52 GMT
COPY dir:a3f75de77309e1a077bd8d5fb848078b9fe07331200b980974a9992573068f05 in /opt/ibm/fixes/ 
# Sat, 20 Apr 2019 12:11:52 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Sat, 20 Apr 2019 12:11:53 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 20 Apr 2019 12:11:53 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Sat, 20 Apr 2019 12:11:53 GMT
USER 1001
# Sat, 20 Apr 2019 12:11:54 GMT
EXPOSE 9080 9443
# Sat, 20 Apr 2019 12:11:54 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 20 Apr 2019 12:11:54 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 20 Apr 2019 12:11:54 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 20 Apr 2019 12:11:57 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 20 Apr 2019 12:16:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 20 Apr 2019 12:16:33 GMT
COPY --chown=1001:0file:90ee4bcbbba4ab370fb1c79c7599798b483fd02124222aece922c67829ce8e0f in /config/ 
# Sat, 20 Apr 2019 12:16:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ibm/wlp/output/*
```

-	Layers:
	-	`sha256:0cffec7e6d2d3b65fa5c53ffb9033949713e7fa5f813e0d8ff84fec99866be56`  
		Last Modified: Mon, 25 Feb 2019 15:26:33 GMT  
		Size: 43.8 MB (43758574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eacc4c503443a80402aec13f1bc53f298e337b8e572e371c933f9b53c6a2c3`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f426864bc7c0b1dd6a9e435173f14ac7810e63364adf8b4d4e8283ce536140`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d721cf76afc58475ca7f96fb7224a6fe61996dc0c8ad6699cb8da12653a76e`  
		Last Modified: Tue, 12 Mar 2019 11:36:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1004f9d9a6a6c7d1ab647314cef927e8df101916e1ca212f8ea1ff42fa4bec`  
		Last Modified: Tue, 12 Mar 2019 12:19:21 GMT  
		Size: 2.9 MB (2876755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199b72cf004c7312bd331217e87e527d9d73a205d287b225d85401e93b84e130`  
		Last Modified: Wed, 03 Apr 2019 11:33:45 GMT  
		Size: 117.8 MB (117791397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdfe9bd3ae3cc8aba40db933a5d819e13a9cd67c242bde1e1606b47bb3c4f0d`  
		Last Modified: Wed, 03 Apr 2019 13:00:06 GMT  
		Size: 423.6 KB (423582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6377d806cf8d2971e975aa656afa0bfc0e77cbd1ac213ad7312a0a24321fe01a`  
		Last Modified: Wed, 03 Apr 2019 13:00:07 GMT  
		Size: 12.9 MB (12899599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874cd9647d31d1860c1f23188aefe1e81d78d7a6acf7a2457c70c49773fdbfe7`  
		Last Modified: Wed, 03 Apr 2019 13:00:05 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c813f1546ee21a74cdd1e799c28551131431522dd7538efe0b08ac7e8f1e9`  
		Last Modified: Sat, 20 Apr 2019 12:35:05 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed547c096663f28a1ebb0e0420a1bfb4ed5ffaac4a7a279160f715589dde4d6`  
		Last Modified: Sat, 20 Apr 2019 12:35:05 GMT  
		Size: 2.0 MB (2027096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53844b5b61925165b3d0e47bc53a14e414d7c81867ca2f62d448bd2c8a1f990`  
		Last Modified: Sat, 20 Apr 2019 12:35:05 GMT  
		Size: 40.9 KB (40881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7bf60fbb26843458514389b8adf284fd6a5cd21efa78137f945ed3f486da3c`  
		Last Modified: Sat, 20 Apr 2019 12:35:05 GMT  
		Size: 2.0 MB (2031223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d260ce6edc42b0b0dbb67d9490528c02d5d72d8e894b745610c4876c57b748`  
		Last Modified: Sat, 20 Apr 2019 12:35:46 GMT  
		Size: 79.2 MB (79240434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78f020f5671663edb4620497a5f291d196961488ff3ee59106ab49ba84fd640`  
		Last Modified: Sat, 20 Apr 2019 12:35:38 GMT  
		Size: 575.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64457b0f666d035dfb0c5e96cec771fc40e63713f810a2c3ed339cc10e2778c`  
		Last Modified: Sat, 20 Apr 2019 12:35:40 GMT  
		Size: 7.5 MB (7490052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:979f5730e888330f0051b3bcf04b4fb067341a736deb3ae7a4115109909a077d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.5 MB (293508097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d34962eff9a19ef941253d2a93cbe25949538e3105777dad3bf8212bd7527b`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 08:57:19 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 08:57:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 09:03:02 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 09:05:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 09:05:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 03 Apr 2019 09:40:48 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 03 Apr 2019 09:44:15 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Wed, 03 Apr 2019 09:44:18 GMT
ENV LIBERTY_VERSION=19.0.0_03
# Wed, 03 Apr 2019 09:44:20 GMT
ARG LIBERTY_URL
# Wed, 03 Apr 2019 09:44:23 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 03 Apr 2019 09:44:37 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 03 Apr 2019 09:44:40 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Apr 2019 09:44:42 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.3 BuildLabel=cl190320190321-1636
# Wed, 03 Apr 2019 09:44:45 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 03 Apr 2019 09:44:52 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 20 Apr 2019 08:23:39 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Sat, 20 Apr 2019 08:23:42 GMT
COPY dir:a3f75de77309e1a077bd8d5fb848078b9fe07331200b980974a9992573068f05 in /opt/ibm/fixes/ 
# Sat, 20 Apr 2019 08:23:44 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Sat, 20 Apr 2019 08:23:53 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 20 Apr 2019 08:23:58 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Sat, 20 Apr 2019 08:24:00 GMT
USER 1001
# Sat, 20 Apr 2019 08:24:04 GMT
EXPOSE 9080 9443
# Sat, 20 Apr 2019 08:24:07 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 20 Apr 2019 08:24:09 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 20 Apr 2019 08:24:12 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 20 Apr 2019 08:24:23 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 20 Apr 2019 08:33:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 20 Apr 2019 08:33:40 GMT
COPY --chown=1001:0file:90ee4bcbbba4ab370fb1c79c7599798b483fd02124222aece922c67829ce8e0f in /config/ 
# Sat, 20 Apr 2019 08:34:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ibm/wlp/output/*
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a054eea562f6cae140405e0353fc5bd3fac1508227e9b0d17fdf7adae55d6453`  
		Last Modified: Tue, 12 Mar 2019 09:06:21 GMT  
		Size: 2.9 MB (2881225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aa1657b52bc4e902eb6e30a179444dcb9a2e220ab151cbe4026e5ef374e4c`  
		Last Modified: Wed, 03 Apr 2019 09:10:21 GMT  
		Size: 142.2 MB (142179326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8476a624115a284f49d2120a293e5480e8c4097a54fef1e20ba40b49c699d7ae`  
		Last Modified: Wed, 03 Apr 2019 10:56:55 GMT  
		Size: 456.1 KB (456129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859acc4a6529d9dcd9ae3b1f7e724c74a5ecc16575db4e67fe2469b5186ff306`  
		Last Modified: Wed, 03 Apr 2019 10:56:59 GMT  
		Size: 12.9 MB (12899592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fc90debd88d2992e217548b7a585ec83d4db24b565e9a2efc58735a50a0fb1`  
		Last Modified: Wed, 03 Apr 2019 10:56:52 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b667922fe4edb5523b7baddc272a24ca36b264c96c86ac0cec2cdc56ad3de348`  
		Last Modified: Sat, 20 Apr 2019 09:15:22 GMT  
		Size: 3.0 KB (3031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae069f3a89daec434fcb4532a8f38fd5dba66fe6e90afaa62c8a1bc1aff3f650`  
		Last Modified: Sat, 20 Apr 2019 09:15:22 GMT  
		Size: 2.0 MB (2027142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c37ac7169c95591541196d18cdab7d1b79903da6cfc7478c5eabc4afd0934f`  
		Last Modified: Sat, 20 Apr 2019 09:15:22 GMT  
		Size: 40.9 KB (40880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e38ae58e81ef4c38df0452212b908d299a954a773fbe9f49fd69bbd8fef7801`  
		Last Modified: Sat, 20 Apr 2019 09:15:22 GMT  
		Size: 2.0 MB (2031325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2137e3f89db255f068c919a49de0c9add997088b070ef9cb3ad16e4a681d44fd`  
		Last Modified: Sat, 20 Apr 2019 09:17:51 GMT  
		Size: 78.2 MB (78229110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13a1f3d5afbaceb82fa64857d50c4ceb1f5ea807a6881617fef68cb2a0171674`  
		Last Modified: Sat, 20 Apr 2019 09:17:26 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedaefd4ba33ae430311f92456c8b1d343aa9111bc0c2c104a67cb9152f09868`  
		Last Modified: Sat, 20 Apr 2019 09:17:29 GMT  
		Size: 7.0 MB (6982498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:86f8eaeb7b77421b1af5e1d50d4764d7eacd997e38c62bc6037ff00a7eedc0fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271712328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f73db1c1a05d7177d627c91e56c93024db17115f7ef59f31dacf585b075852d`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 12 Mar 2019 12:09:33 GMT
ADD file:fb98977a7ac241ec53e1d889d1511a608713d16ed4ad8a408d5a1450d41eedad in / 
# Tue, 12 Mar 2019 12:09:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:09:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:09:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:09:39 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 12:28:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 12 Mar 2019 12:28:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 03 Apr 2019 11:55:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Wed, 03 Apr 2019 11:55:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 03 Apr 2019 11:55:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 03 Apr 2019 12:21:23 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Wed, 03 Apr 2019 12:22:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Wed, 03 Apr 2019 12:22:11 GMT
ENV LIBERTY_VERSION=19.0.0_03
# Wed, 03 Apr 2019 12:22:12 GMT
ARG LIBERTY_URL
# Wed, 03 Apr 2019 12:22:12 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 03 Apr 2019 12:22:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Wed, 03 Apr 2019 12:22:16 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 03 Apr 2019 12:22:16 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.3 BuildLabel=cl190320190321-1636
# Wed, 03 Apr 2019 12:22:16 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 03 Apr 2019 12:22:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 03 Apr 2019 12:22:18 GMT
COPY dir:6baca60b6f25f4b8b637b3d54b48e5063ae904b42afe94cf8db055a736cbe6ce in /opt/ibm/helpers/ 
# Wed, 03 Apr 2019 12:22:18 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Thu, 04 Apr 2019 12:47:29 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Thu, 04 Apr 2019 12:47:29 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Thu, 04 Apr 2019 12:47:30 GMT
USER 1001
# Thu, 04 Apr 2019 12:47:30 GMT
EXPOSE 9080 9443
# Thu, 04 Apr 2019 12:47:30 GMT
ENV KEYSTORE_REQUIRED=true
# Thu, 04 Apr 2019 12:47:31 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 04 Apr 2019 12:47:31 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 04 Apr 2019 12:47:36 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 04 Apr 2019 12:53:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 04 Apr 2019 12:53:19 GMT
COPY --chown=1001:0file:90ee4bcbbba4ab370fb1c79c7599798b483fd02124222aece922c67829ce8e0f in /config/ 
# Thu, 04 Apr 2019 12:53:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ibm/wlp/output/*
```

-	Layers:
	-	`sha256:6ef408a9cdfcbd0f83d7f6572df55c6996e16107389017db0407817059f5d367`  
		Last Modified: Mon, 25 Feb 2019 15:27:50 GMT  
		Size: 42.5 MB (42454255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e7fcd85b92bad19a70c77783f5d4726b6bf8e95f18efb312229d50de629ec6`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d734cc4d136f5d39f2257009118017ab21f14b4b0b7c24aeb1664b3643d72f35`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 472.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a0a7e0a5d7c031bf9353d8a2b1d290134dbd5508d6ff14813ef719ad99ffc6`  
		Last Modified: Tue, 12 Mar 2019 12:10:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05a577227b649ec9699bd853775bc2e2708d0fe7b92203c8c2aea4e1b8f7950`  
		Last Modified: Tue, 12 Mar 2019 12:31:15 GMT  
		Size: 2.8 MB (2766705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff490415debfb9f5d75189dae76704a07f9f0500f69d1aa2c7f5d233849b068`  
		Last Modified: Wed, 03 Apr 2019 11:58:16 GMT  
		Size: 126.9 MB (126949733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178a0eb3412e2d063b20290804d0df36050aad348bf12bf654703d5cdb7a0a44`  
		Last Modified: Wed, 03 Apr 2019 13:01:33 GMT  
		Size: 430.3 KB (430300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3f13644a1bc16049951aabb35fa57690d9a2c49d4bf5d07e752e89a7299fa2`  
		Last Modified: Wed, 03 Apr 2019 13:01:34 GMT  
		Size: 12.9 MB (12899580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bb5f80c500546ad3c9da414e15aff6ef67e2b57097683f7fbef53b77922bce`  
		Last Modified: Wed, 03 Apr 2019 13:01:32 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9284091c867e7a9864b7089a675a2335b07254cb6e474b322bc35ca2b8a3e90`  
		Last Modified: Wed, 03 Apr 2019 13:01:32 GMT  
		Size: 2.8 KB (2768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1315526294cbd7da4c7b184bb63ef18a10d87640e986d0fe14147ed10142bfc`  
		Last Modified: Wed, 03 Apr 2019 13:01:32 GMT  
		Size: 40.9 KB (40877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847e15ba30ff08b9d9461bbc776532b2dc39d25239956d5d796cd24645b6b1c5`  
		Last Modified: Thu, 04 Apr 2019 13:31:25 GMT  
		Size: 3.5 KB (3511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21de3d8f3f7de24495895e2f4f1c7c0574b3f71f5a21dee7eb3807624b81fb67`  
		Last Modified: Thu, 04 Apr 2019 13:32:16 GMT  
		Size: 79.3 MB (79274724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074391548221a906a25994ff33960cab5a840ee8eaa9c562037fd4d2b6906fc8`  
		Last Modified: Thu, 04 Apr 2019 13:32:07 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1665c3fae75c46796af7a362bcf6dc57ece41b134d1274a04376a706de294966`  
		Last Modified: Thu, 04 Apr 2019 13:32:08 GMT  
		Size: 6.9 MB (6887132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
