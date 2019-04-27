## `websphere-liberty:springBoot1`

```console
$ docker pull websphere-liberty@sha256:f29511065b719502890860ef4155f6cf96be37bb93de7501dceb7bb87f75030b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:abd57525ad325db5bb9429f32a349022ae348b2f1ba51408e0402d020ea68321
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227582650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d246c738997a97c2d548fe946734962fba75449dc4b010ab5bcb73f2228f6cd3`
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
# Fri, 26 Apr 2019 23:31:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Fri, 26 Apr 2019 23:32:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 26 Apr 2019 23:32:35 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 01:06:24 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 27 Apr 2019 01:07:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Sat, 27 Apr 2019 01:07:02 GMT
ENV LIBERTY_VERSION=19.0.0_03
# Sat, 27 Apr 2019 01:07:02 GMT
ARG LIBERTY_URL
# Sat, 27 Apr 2019 01:07:03 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 27 Apr 2019 01:07:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 27 Apr 2019 01:07:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Apr 2019 01:07:07 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.3 BuildLabel=cl190320190321-1636
# Sat, 27 Apr 2019 01:07:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 27 Apr 2019 01:07:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 01:07:08 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Sat, 27 Apr 2019 01:07:09 GMT
COPY dir:a3f75de77309e1a077bd8d5fb848078b9fe07331200b980974a9992573068f05 in /opt/ibm/fixes/ 
# Sat, 27 Apr 2019 01:07:09 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Sat, 27 Apr 2019 01:07:10 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 27 Apr 2019 01:07:10 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Sat, 27 Apr 2019 01:07:10 GMT
USER 1001
# Sat, 27 Apr 2019 01:07:10 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 01:07:10 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 27 Apr 2019 01:07:10 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 01:07:11 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 27 Apr 2019 01:07:16 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 27 Apr 2019 01:15:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 27 Apr 2019 01:15:03 GMT
COPY --chown=1001:0file:b161907c284b3a66fd563181fa915ceeb5f014deeaba437c29935f12c1367ca9 in /config/ 
# Sat, 27 Apr 2019 01:15:08 GMT
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
	-	`sha256:9cafa9adbf1ad92e9b3b9eefb95e62cba403a85819eee21d8f5263f86eb99fc1`  
		Last Modified: Fri, 26 Apr 2019 23:34:52 GMT  
		Size: 129.3 MB (129336778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eaa3ab2b4daebbb6a0db5fa8f1d29ed059556da636105e5b6ee20ba65d0d693`  
		Last Modified: Sat, 27 Apr 2019 01:30:55 GMT  
		Size: 424.6 KB (424601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dceedb6ba7ba8b6dc0e729f448d8666a6c537ff4cec70f1322a85aa69eafd32`  
		Last Modified: Sat, 27 Apr 2019 01:30:56 GMT  
		Size: 12.9 MB (12899623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaecab9940cb36dca9917835a8b8bbe4d18d5c672c1e665f3aefd243997773b`  
		Last Modified: Sat, 27 Apr 2019 01:30:54 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f481afa64aced0adff38f3ff9daeae8f12eb4867c15e6f0f9413b0d07538c43d`  
		Last Modified: Sat, 27 Apr 2019 01:30:54 GMT  
		Size: 3.0 KB (2995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81424e8fe0ac859ade1f791311d29a41630cbd9dc47c465d9699a136430efdb`  
		Last Modified: Sat, 27 Apr 2019 01:30:54 GMT  
		Size: 2.0 MB (2027101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ccaee39915e0abbaf4c4afe4a25d6288666ed0609d36b2277686e6701c85c9`  
		Last Modified: Sat, 27 Apr 2019 01:30:54 GMT  
		Size: 40.9 KB (40879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1346cec0a29f6f15989e6334e4a339390ea0c4cfe341cb6903dc94b5cdcbabe`  
		Last Modified: Sat, 27 Apr 2019 01:30:54 GMT  
		Size: 2.0 MB (2031205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c5bdd5d3d9d0d0eac35bec65caf43e1c6c74d81c17156c5d1866c0e6cd910fc`  
		Last Modified: Sat, 27 Apr 2019 01:32:42 GMT  
		Size: 27.2 MB (27231159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df222a5b07b6533c1208bf0e8b8219c36772520038f2d76ac5c972e23d388130`  
		Last Modified: Sat, 27 Apr 2019 01:32:39 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb2bd5ae719fd59983d1f626237a32eb9bd2a9f0ddfec0d68c1cc5db61f63e4`  
		Last Modified: Sat, 27 Apr 2019 01:32:40 GMT  
		Size: 6.8 MB (6811864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:a4ac8fdeb67d9b420b8ed234000376884dc1bf82e43e3c3e8d5e476d7158b002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.0 MB (216046516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8efe93434e4d1ab4dc0ea16bb1831b3b05820b913e44b33347e5b2139ffc9b0`
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
# Sat, 20 Apr 2019 12:19:28 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 20 Apr 2019 12:19:28 GMT
COPY --chown=1001:0file:b161907c284b3a66fd563181fa915ceeb5f014deeaba437c29935f12c1367ca9 in /config/ 
# Sat, 20 Apr 2019 12:19:34 GMT
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
	-	`sha256:a2176198e050e78c36a1f151f4fea3a07086dda9b6e15544922bcabd2de2a010`  
		Last Modified: Sat, 20 Apr 2019 12:36:20 GMT  
		Size: 26.8 MB (26766316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a90f28e804441a4af1548b9389f7fd228b6709e929d2b2c96903f262f9d28d8`  
		Last Modified: Sat, 20 Apr 2019 12:36:16 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cffa77d1049cb72f98f6fb22e419f55a90c4edc7f3d463acc41dcec626de7b`  
		Last Modified: Sat, 20 Apr 2019 12:36:18 GMT  
		Size: 7.4 MB (7425326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:13c91954470e09b6075f9c74930cf39a2e7d5d3896bf8bc2dff1a0afe2e7d300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.3 MB (241251049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6fba5c617d2e9bc344101cec3967083e5033bed750d475462da924737a0119`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 27 Apr 2019 09:28:21 GMT
ADD file:3e448359ea1b7f0a4f4b69f4542cd08e7bface0c7e835f38b7cb9aff4351346d in / 
# Sat, 27 Apr 2019 09:28:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:28:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:28:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:28:43 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:47:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 27 Apr 2019 10:47:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:47:51 GMT
ENV JAVA_VERSION=1.8.0_sr5fp31
# Sat, 27 Apr 2019 10:50:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950c6a4d40d9d73a65f9f995f07add4d95315937fae9c11ec97a75369dc6a834';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='b31a5404181008a761631991827539f9c7c8140702393051c62300c648cc1af6';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1b669fe7429619c0b1dc278168e23fad9785881a64a8041f091e56a9c361bc54';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3552696fb870f7777cf5ab3317e756eef3720729483b6dc9c8ccf3e7482ab6cb';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b10ec022a1af888a778d2cfb446c3f1b8c8d949f4c79c9072f530a65533b6cda';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 27 Apr 2019 10:50:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 27 Apr 2019 11:12:36 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 27 Apr 2019 11:15:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default
# Sat, 27 Apr 2019 11:15:57 GMT
ENV LIBERTY_VERSION=19.0.0_03
# Sat, 27 Apr 2019 11:16:00 GMT
ARG LIBERTY_URL
# Sat, 27 Apr 2019 11:16:05 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 27 Apr 2019 11:16:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Sat, 27 Apr 2019 11:16:27 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 27 Apr 2019 11:16:30 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=19.0.0.3 BuildLabel=cl190320190321-1636
# Sat, 27 Apr 2019 11:16:35 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 27 Apr 2019 11:16:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 27 Apr 2019 11:16:45 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Sat, 27 Apr 2019 11:16:48 GMT
COPY dir:a3f75de77309e1a077bd8d5fb848078b9fe07331200b980974a9992573068f05 in /opt/ibm/fixes/ 
# Sat, 27 Apr 2019 11:16:50 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Sat, 27 Apr 2019 11:16:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 27 Apr 2019 11:17:04 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Sat, 27 Apr 2019 11:17:09 GMT
USER 1001
# Sat, 27 Apr 2019 11:17:11 GMT
EXPOSE 9080 9443
# Sat, 27 Apr 2019 11:17:13 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 27 Apr 2019 11:17:16 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 27 Apr 2019 11:17:18 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 27 Apr 2019 11:17:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 27 Apr 2019 11:30:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 27 Apr 2019 11:30:34 GMT
COPY --chown=1001:0file:b161907c284b3a66fd563181fa915ceeb5f014deeaba437c29935f12c1367ca9 in /config/ 
# Sat, 27 Apr 2019 11:30:49 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ibm/wlp/output/*
```

-	Layers:
	-	`sha256:abd5c019819de70ac57ed3f6553b5cb918700ea013051f9b5c34647068e1f358`  
		Last Modified: Sat, 27 Apr 2019 09:33:19 GMT  
		Size: 45.9 MB (45928636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb1e9f7f3b1c7c2b3164a88da4d80c35edd5e9c958d483ef7a5d3f1760bc574`  
		Last Modified: Sat, 27 Apr 2019 09:32:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19320290aeb9b108bf4f79b24b0ec8f8d136510f1d37e51c972a5cd0276e8a0`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354d5ed794e921901f7c634ba79e69add39da2a185fcf0defbdf90418b77a394`  
		Last Modified: Sat, 27 Apr 2019 09:32:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0692fe3a917e26f1e498d6c737ae2e24607565473260342457aa16331fd4b1c6`  
		Last Modified: Sat, 27 Apr 2019 10:55:18 GMT  
		Size: 2.9 MB (2881353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccc813908a7be4e1ecd2bdbf57e448cc06f0e3f67b70c0c84304f6d0dc59aab`  
		Last Modified: Sat, 27 Apr 2019 10:55:40 GMT  
		Size: 142.2 MB (142179282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2418786dedd19993c37dea485dbabcf42bd68ac5c3672b1386a15c7ca113b`  
		Last Modified: Sat, 27 Apr 2019 11:59:26 GMT  
		Size: 456.2 KB (456200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6f36f271b328ac58bb4990770a29227bfb480590afd09303799255a7b71509`  
		Last Modified: Sat, 27 Apr 2019 11:59:30 GMT  
		Size: 12.9 MB (12899594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175040638b3bd5a18d809a029ee0c42a318ba323b5ff5c7cd1daa4f4092ca41f`  
		Last Modified: Sat, 27 Apr 2019 11:59:19 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c6b8d47686d120b6cf41ed3799cd65ba5ea83a4bd230a087b962537a61ed55`  
		Last Modified: Sat, 27 Apr 2019 11:59:19 GMT  
		Size: 3.0 KB (3027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d4796571709b2e722d51a79e4b091ce017d78be69a2dc386af08c424242efa`  
		Last Modified: Sat, 27 Apr 2019 11:59:19 GMT  
		Size: 2.0 MB (2027147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccb4ed4e42ad4997389befce8cbfa2b07a5a52daff9b6d5d390caaa85836f3c`  
		Last Modified: Sat, 27 Apr 2019 11:59:19 GMT  
		Size: 40.9 KB (40882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad37cf919722236c38876b6c6e9867666e9c1f1b338f3781203ca0586d6859c2`  
		Last Modified: Sat, 27 Apr 2019 11:59:19 GMT  
		Size: 2.0 MB (2031334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728a17060a959334f18c4deb236d4ce02818e51a680ba7feed8cea850d9755d1`  
		Last Modified: Sat, 27 Apr 2019 12:03:08 GMT  
		Size: 25.8 MB (25845347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358ea0ece5d543515c2619af8d58eb6de98817683195167beb62537bb06360b2`  
		Last Modified: Sat, 27 Apr 2019 12:02:59 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a06c1cefe504127835088988e40e3ae24d2d8bbdd3b09bcf97b10e1d09ec8`  
		Last Modified: Sat, 27 Apr 2019 12:03:02 GMT  
		Size: 7.0 MB (6955473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:e8dacb5f9ef939e2c63bf003fc1963cd04dc69a845711386974aba144839bc36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.5 MB (223501577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db184dc4aa25bbbbcb010d3dcc4e4a86bea1063d8f08593ae9311062d32c4ce`
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
# Sat, 20 Apr 2019 12:38:49 GMT
COPY dir:d9884e15a45c6d8b0bc8dec211006ce83d87751ab8d31e28c9a93a956658d2ca in /opt/ibm/helpers/ 
# Sat, 20 Apr 2019 12:38:51 GMT
COPY dir:a3f75de77309e1a077bd8d5fb848078b9fe07331200b980974a9992573068f05 in /opt/ibm/fixes/ 
# Sat, 20 Apr 2019 12:38:52 GMT
COPY dir:9733a8fe1364ca4df62935a1020ee26dfe5ed1fd100714a628064f594f7b339e in /licenses/ 
# Sat, 20 Apr 2019 12:38:58 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Sat, 20 Apr 2019 12:38:59 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Sat, 20 Apr 2019 12:39:00 GMT
USER 1001
# Sat, 20 Apr 2019 12:39:01 GMT
EXPOSE 9080 9443
# Sat, 20 Apr 2019 12:39:02 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 20 Apr 2019 12:39:03 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Sat, 20 Apr 2019 12:39:04 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 20 Apr 2019 12:39:14 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 20 Apr 2019 13:01:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 20 Apr 2019 13:01:08 GMT
COPY --chown=1001:0file:b161907c284b3a66fd563181fa915ceeb5f014deeaba437c29935f12c1367ca9 in /config/ 
# Sat, 20 Apr 2019 13:01:30 GMT
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
	-	`sha256:0e0ae918fa244c3e3bd03de0b6e0f969e21b0e202fde745e107e57fab25e2ea1`  
		Last Modified: Sat, 20 Apr 2019 13:39:33 GMT  
		Size: 3.0 KB (2997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776c5056573838df44ebe686edee57cb42ed420acd6fda0ea395e62798620a86`  
		Last Modified: Sat, 20 Apr 2019 13:39:34 GMT  
		Size: 2.0 MB (2027100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fae0af58f3d88adb7a11d51f963719b596fa11e3c4584154df74f360c6f2597`  
		Last Modified: Sat, 20 Apr 2019 13:39:33 GMT  
		Size: 40.9 KB (40880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3a9673836eff485afacd425d5ecc4b176bbdc5049c19ac2d4188e300b8a5af`  
		Last Modified: Sat, 20 Apr 2019 13:39:34 GMT  
		Size: 2.0 MB (2031216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a947ea2c5dc79eca38120999262b0ad09dddfbafbd02feaea8611e9deadf21`  
		Last Modified: Sat, 20 Apr 2019 13:42:37 GMT  
		Size: 27.1 MB (27097948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d3267afa70975a661053a132c80db0f4d1bb15580244498f21a564f11f9a59`  
		Last Modified: Sat, 20 Apr 2019 13:42:27 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd43eedea1bec2a40825da9be8de280a0fd871aa13ec09b09b839597543f5ec8`  
		Last Modified: Sat, 20 Apr 2019 13:42:32 GMT  
		Size: 6.8 MB (6798134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
