## `open-liberty:webProfile8-java8-ibm`

```console
$ docker pull open-liberty@sha256:e4146d7850859008b89ef4091b998cd0a2b3414e0ccf8551f79233f92961c42a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:4e78e782a89408ca71b9883f253692c1a42777ca477a88f8f40b67636ec848e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274262119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586cd6b6c01332522c79db26207daf7ef405eae4eb665eeca06f1f12079fbb88`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:42:28 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 21:42:38 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:21:33 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:22:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:22:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:44:36 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:45:35 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:45:35 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:45:35 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:45:35 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:45:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:45:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:45:46 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:45:46 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:46:33 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:46:34 GMT
USER 1001
# Fri, 24 May 2019 22:46:34 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:46:34 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:46:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:46:35 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:650bbdf50d184239cb7011b4229c679933b5d993e16667c26e34eba922afda32`  
		Last Modified: Wed, 15 May 2019 21:45:29 GMT  
		Size: 3.0 MB (3021337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016c8f81cbb110c35be1457e994631878f42b43d96cf75c36e15ffd2c71f652c`  
		Last Modified: Fri, 24 May 2019 22:27:29 GMT  
		Size: 130.0 MB (129984751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab74ec377e8b58ea18936f416b95649113ef0f30fe7518f213a466474635c0ad`  
		Last Modified: Fri, 24 May 2019 22:59:09 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1cfff479d491068fee00c7a8d6a919dd2d711159e76590b4920e8152fa70de`  
		Last Modified: Fri, 24 May 2019 22:59:16 GMT  
		Size: 82.4 MB (82362024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89dace55d260fc89d8005ac814925586dc9ca79c101263ea8e1bb34ab312927`  
		Last Modified: Fri, 24 May 2019 22:59:09 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8710c3fc3fc092d11b63cae4eded27bf3c03f9d2b3364ada0fcf860467a66963`  
		Last Modified: Fri, 24 May 2019 22:59:13 GMT  
		Size: 15.1 MB (15121452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:48401435d0039f048025a5ce56ae65d506467137a5d39d9bc004530d52b40b21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262361934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf662d1ad07c396d07341f4fbd8bef60daf31583ba278a5e4de24fa7fd1a367b`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:40:36 GMT
ADD file:5d74a053a0ad56b64841a77df9f90db692d915a4fabc63801978cb859609f04a in / 
# Wed, 15 May 2019 21:40:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:40:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:40:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:40:39 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:23:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:23:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:40:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:41:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 22:41:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:59:59 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 23:00:26 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 23:00:26 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 23:00:27 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 23:00:27 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 23:00:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 23:00:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 23:00:38 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 23:00:39 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 23:01:05 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 23:01:05 GMT
USER 1001
# Fri, 24 May 2019 23:01:05 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 23:01:06 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 23:01:06 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 23:01:06 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:fb5d673f940c89b7f361f32fed8d4cfd614fc9ea9f4b97bcd32b0b71bfe2a7b1`  
		Last Modified: Wed, 15 May 2019 21:42:42 GMT  
		Size: 43.9 MB (43924500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b70ce3711c6f532b489a432e5bdb47030e7a4885023de73a2f5ef9e2c5a6450`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efa4ef849b45754041d226a2b65e40b5316e8d62c025ee96e66cedb057e77a1`  
		Last Modified: Wed, 15 May 2019 21:42:28 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4845034610f1952bc72a60f257235c6f86a5d31e628e4f0370cc326ebc9b27f1`  
		Last Modified: Wed, 15 May 2019 21:42:27 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf3b3b5907db90e415cf33ed626d7530ba7b117fd22d9fe9df01635a6c39b2`  
		Last Modified: Wed, 15 May 2019 22:26:41 GMT  
		Size: 2.9 MB (2876742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fef2d9d8d19208b712ed791ed44d6fe76d484fb3223c891f0763653127788`  
		Last Modified: Fri, 24 May 2019 22:43:21 GMT  
		Size: 118.4 MB (118383298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ea342a7563ba8a252027b2f5f9c7703f374228b23a8ac7abbc7738ac73bf9b`  
		Last Modified: Fri, 24 May 2019 23:05:53 GMT  
		Size: 2.2 KB (2165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8ea96f4e5c4dfb8e8be7286bb57311041818f7798ce0986005db2bbbbf6a53`  
		Last Modified: Fri, 24 May 2019 23:06:06 GMT  
		Size: 82.4 MB (82361980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb328510ea24a83fa833adca746228d9b570e93ab092da3f96eca24585bee6b`  
		Last Modified: Fri, 24 May 2019 23:05:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2cc8c16d118c0a30dd57f181e42ce6e259060d12a59703261e9221cf303ec7`  
		Last Modified: Fri, 24 May 2019 23:06:02 GMT  
		Size: 14.8 MB (14810864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b7b433d6063ab5df76d1f8a1d69ec22b358a6f8d4f05839831257deda2e3d276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280820749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f90cdbb002c2f4dbffbee875cc9a4e3567884fe06811fd744fbb6812c4769`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 22:27:01 GMT
ADD file:9d4838c8f6b80c71fd2b6ee69668522e0220d33c06524ed6d4546415bf96231b in / 
# Wed, 15 May 2019 22:27:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:27:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:27:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:59:55 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 23:00:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:31 GMT
ENV JAVA_VERSION=1.8.0_sr5fp35
# Wed, 15 May 2019 23:02:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='33a90fc56ed10589ba69a24868576a2a4c2a5b6a15e4f67406c980fe22078473';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='0d47cdfd886ca1549ed728bdc9c5f53aa714013be9ed7990c4bc4d054024a55f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6d78772e7064dab48c2a3b2efd2c9139783f8c2de355d319594e0e3b844e3d1d';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='af6f03d4fc2c64d84a6d6f8d61e1f067be8a55d30bbd1bfaf915a4b3794401f5';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='43628b869f3acdb9be05fe47a9e10d6a1df23fe9f6bc2defeda05f398c14399e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 15 May 2019 23:02:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 15 May 2019 23:54:25 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Wed, 15 May 2019 23:55:50 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Wed, 15 May 2019 23:55:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Wed, 15 May 2019 23:55:53 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Wed, 15 May 2019 23:55:54 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Wed, 15 May 2019 23:56:50 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 15 May 2019 23:56:54 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 15 May 2019 23:56:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 15 May 2019 23:57:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 15 May 2019 23:57:23 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Wed, 15 May 2019 23:57:25 GMT
USER 1001
# Wed, 15 May 2019 23:57:27 GMT
EXPOSE 9080 9443
# Wed, 15 May 2019 23:57:29 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 15 May 2019 23:57:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 15 May 2019 23:57:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:48b4fcc4742b2659b452cd2d0a3b89dc12891ae0aa424fc9fce7179298315b4b`  
		Last Modified: Wed, 15 May 2019 22:32:33 GMT  
		Size: 45.9 MB (45936033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e33376aa23f451e1e03b4bad007f39ad36d0dc8c1ebf1f1de6c439b80cb002`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98261938469e872d9f95badb312ee9129686ec82cfd1c76517f93eec1fa998b`  
		Last Modified: Wed, 15 May 2019 22:32:07 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d251f8e4b04fe916995343424e04af19be0654f0d73445d94e8cdf4ed8a94`  
		Last Modified: Wed, 15 May 2019 22:32:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ae4c0a256c0666754d0748d100698e3f91a5d7fa322adb43d19042ec75fd4f`  
		Last Modified: Wed, 15 May 2019 23:08:41 GMT  
		Size: 2.9 MB (2881246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac956c06a9a41604cff329680d509e7d3c14adf315689bee98f45417bfa5745b`  
		Last Modified: Wed, 15 May 2019 23:09:03 GMT  
		Size: 142.7 MB (142712700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f4e9cad2e3f2f53b13699727c9da6f83efe2c63d1bbdd5a2a684ef7bf0eacc`  
		Last Modified: Thu, 16 May 2019 00:04:16 GMT  
		Size: 2.2 KB (2200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565d65a19b28b26414fd6b1e260219f636a6a05afcea033a7b1d978b531e5362`  
		Last Modified: Thu, 16 May 2019 00:04:31 GMT  
		Size: 82.4 MB (82361985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbec852d3bbe446c48a67b88b0a8aa48c80ec7e72684fbd27d4123de7ccbe1f4`  
		Last Modified: Thu, 16 May 2019 00:04:16 GMT  
		Size: 908.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771f069b9c00157f7184a4a470498611a78da9392d5f05cb5f8b0cd172c08ab7`  
		Last Modified: Thu, 16 May 2019 00:04:18 GMT  
		Size: 6.9 MB (6924191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:0b543e342bca9cc60510f249835a09bbd8d4b60387b4b4299dcf39f14855caed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.2 MB (268182893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b6896e0c5e31d66d8916764472ccf448283fbda6f25216b628e209a8c7ceea`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:45:33 GMT
ADD file:d7a233874816671d3297c11fa1530f1f10d6dbdaf60bf5feb414ff98ef1beae0 in / 
# Wed, 15 May 2019 21:45:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:45:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:45:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:45:44 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:25:24 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 15 May 2019 22:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 21:41:27 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 21:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a002fedd653ab1eafc87a32b48c0afbc6ce4c87782b9784e0515a611e2cac01c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='91ad8d9774a2130cbe63d4e0b01d5c3afef5ad8d69787cbfba6d21354a926854';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7a735879ae1d99807c5b7ca6c9dddceadd933e4775165003cccf13416e024f35';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='63f3f37a8fe6a40e3ed63415395609241adc7f0c23e82e17b4c75b03594d172c';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7d6ca19295fa1ba0afa29f417fefeb8033ce16a6ea7a46c68fa1126562364345';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 24 May 2019 21:42:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:15 GMT
ARG LIBERTY_VERSION=19.0.0.4
# Fri, 24 May 2019 22:00:33 GMT
ARG LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4
# Fri, 24 May 2019 22:00:33 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip
# Fri, 24 May 2019 22:00:33 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 24 May 2019 22:00:33 GMT
COPY dir:a8ac11fa95b1b02a888b9fbd7bbe66e13a54740ac55ee2fd8cfcb98939769c33 in /opt/ol/helpers 
# Fri, 24 May 2019 22:00:43 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Fri, 24 May 2019 22:00:43 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 24 May 2019 22:00:44 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 24 May 2019 22:00:44 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Fri, 24 May 2019 22:00:59 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.4/openliberty-webProfile8-19.0.0.4.zip LIBERTY_SHA=64c39d499297823ff2b56f8a7108b57da3a13fc4 LIBERTY_VERSION=19.0.0.4
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
# Fri, 24 May 2019 22:00:59 GMT
USER 1001
# Fri, 24 May 2019 22:01:00 GMT
EXPOSE 9080 9443
# Fri, 24 May 2019 22:01:00 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 24 May 2019 22:01:00 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 24 May 2019 22:01:00 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:a39cfce7a60d9d727586a3e6453c7c96ac717c01bc191465c06b93d8998be0f1`  
		Last Modified: Wed, 15 May 2019 21:48:36 GMT  
		Size: 42.6 MB (42609666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e699efbddb6397d0d4104adc13a9ebe0f50f3dff99fab55f119c9bd390004ee`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3ffeac441227351387321f7ca872e95bf4a67c57ff6331ed441114fcbee117`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c5a080fd6dd58e471f678450dfdb9501e014e4a451138b17794d6b01b57da0`  
		Last Modified: Wed, 15 May 2019 21:48:18 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0d27faa63aa3334a817c125795713be37824a5c133762d976f3131be00e445`  
		Last Modified: Wed, 15 May 2019 22:30:43 GMT  
		Size: 2.8 MB (2766903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2be39943b91df8086d636d39c49c5059283c17b646afcfdcb17cba1546c0e0`  
		Last Modified: Fri, 24 May 2019 21:44:10 GMT  
		Size: 127.3 MB (127258977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120cfa5df8009f3891beb73998c1956066b8da720bd504cd6a651b6fd5d79909`  
		Last Modified: Fri, 24 May 2019 22:03:31 GMT  
		Size: 2.2 KB (2168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc192750724f8c7f2833c8da6bb7e5a972ca3c28150e65e6fd458024cf298ad`  
		Last Modified: Fri, 24 May 2019 22:03:38 GMT  
		Size: 82.4 MB (82361771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31baf5d83d5ac5f55eff3b2d00f2a76e787206765d1f29be2c270d8e62651ff2`  
		Last Modified: Fri, 24 May 2019 22:03:30 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baeb6cc3f14c3cca3395b5f7f95d957293355d8d43bdf6ae7c97167b504c575a`  
		Last Modified: Fri, 24 May 2019 22:03:33 GMT  
		Size: 13.2 MB (13181067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
