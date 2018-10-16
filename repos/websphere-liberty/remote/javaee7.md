## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:f1e6a0f26c2d537e05a30eecbd9ed2b044cf92dcf630f48eef63d1d4ea105a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c4138c2aabe974b1ed60d0f512dd958e220c5b19dc4ddbfc6c2454113ec353e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316459695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d3efc735ad6d426d469b033514edbe05429fb73ee7dad999b103b12f99121bb`
-	Entrypoint: `["\/opt\/ibm\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:55:58 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 22:56:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 28 Sep 2018 19:20:42 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Fri, 28 Sep 2018 19:22:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 28 Sep 2018 19:22:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Sep 2018 19:46:32 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Tue, 16 Oct 2018 21:46:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/     && useradd -u 1001 -r -g 0 -s /sbin/nologin default
# Tue, 16 Oct 2018 21:46:19 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Tue, 16 Oct 2018 21:46:19 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Tue, 16 Oct 2018 21:46:19 GMT
ARG LIBERTY_URL
# Tue, 16 Oct 2018 21:46:29 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 16 Oct 2018 21:46:33 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp
# Tue, 16 Oct 2018 21:46:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 21:46:34 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Tue, 16 Oct 2018 21:46:34 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 16 Oct 2018 21:46:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 16 Oct 2018 21:46:37 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Tue, 16 Oct 2018 21:46:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir /lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && mkdir -p /config/configDropins/defaults     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/docker/docker-server     && chmod -R g+rwx /opt/ibm/docker/docker-server     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Tue, 16 Oct 2018 21:46:39 GMT
USER [1001]
# Tue, 16 Oct 2018 21:46:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 16 Oct 2018 21:46:40 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 16 Oct 2018 21:46:40 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Tue, 16 Oct 2018 21:46:40 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 16 Oct 2018 21:48:01 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 16 Oct 2018 21:53:12 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 16 Oct 2018 21:53:16 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 16 Oct 2018 21:53:47 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834c0f8b6bda956ac2d3065514d734c7d5fc1d90ca9f2addb9f9f6cb19114e45`  
		Last Modified: Wed, 05 Sep 2018 22:58:40 GMT  
		Size: 3.0 MB (3020578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965a840d718fc9757fc73cd0d6987771ddbe356efb90e17c261db1e76c17c5bb`  
		Last Modified: Fri, 28 Sep 2018 19:28:02 GMT  
		Size: 127.4 MB (127403800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e7c3c626caab77cf056cebd4d1bbf7f7bcd5a361148a891f4b103584207e01`  
		Last Modified: Tue, 16 Oct 2018 22:03:40 GMT  
		Size: 424.8 KB (424777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a005b0a1723e908ef7a970e31b3885fd8f7364a432410515aeb1b550d279d319`  
		Last Modified: Tue, 16 Oct 2018 22:03:39 GMT  
		Size: 40.5 KB (40545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11388379c08b5ed7584227361533a551529c9e96a81e321d9d0a9ab462b9508e`  
		Last Modified: Tue, 16 Oct 2018 22:03:41 GMT  
		Size: 12.5 MB (12520534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cfa7a1bf9b40baaab62cd8d0d395c0b33d57792c90d9f44708d4a3e7dab7508`  
		Last Modified: Tue, 16 Oct 2018 22:03:39 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f28664c59ce26fdc8ef8d317ff11e3895154bced0ee0c128e40fc64bab94129`  
		Last Modified: Tue, 16 Oct 2018 22:03:39 GMT  
		Size: 980.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0477e45ec58df4aeff5997b70b7eb600bbb27d8ba69905f9f3351d8f7426f12`  
		Last Modified: Tue, 16 Oct 2018 22:03:41 GMT  
		Size: 12.5 MB (12521897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77ef9786f7eddf86af246cbe5084e9cf5c6225b41937115a8db6fd746f473bb`  
		Last Modified: Tue, 16 Oct 2018 22:05:14 GMT  
		Size: 101.2 MB (101178543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a2e5ced77c280cba36581b2eef42ee6e5b3df8823b9ae8c516315581d428fa`  
		Last Modified: Tue, 16 Oct 2018 22:05:02 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b306bf538b4cf2efc953735b3e78d54d6eb604297f3987bec6cf368a3a97db36`  
		Last Modified: Tue, 16 Oct 2018 22:05:07 GMT  
		Size: 16.1 MB (16091434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:29ed64937ada5568b66afaa5600383a1574cf9fc0690faa4c371a79669eab5cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292485583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751ec552c35d7914316b70edca12242ea4034766fd0b5e117f242b84fb754f5d`
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
# Sat, 29 Sep 2018 11:17:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Sat, 29 Sep 2018 11:17:29 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Sat, 29 Sep 2018 11:17:29 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Sat, 29 Sep 2018 11:17:29 GMT
ARG LIBERTY_URL
# Sat, 29 Sep 2018 11:17:30 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 29 Sep 2018 11:17:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 29 Sep 2018 11:17:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 11:17:34 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Sat, 29 Sep 2018 11:17:34 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Sep 2018 11:17:35 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 29 Sep 2018 11:17:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Sep 2018 11:17:36 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Sat, 29 Sep 2018 11:17:37 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 11:17:37 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 29 Sep 2018 11:17:37 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 29 Sep 2018 11:17:37 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 29 Sep 2018 11:18:18 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 29 Sep 2018 11:21:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:21:56 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 29 Sep 2018 11:22:13 GMT
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
	-	`sha256:6738bfafbaa434882b1ca59718469c5349937ae43509c595cace462713e6523c`  
		Last Modified: Sat, 29 Sep 2018 11:28:56 GMT  
		Size: 420.8 KB (420821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d5f948d7d1b890a97351d0cb44c1bb29b8c679b777ffa6b46383766f0f7fb`  
		Last Modified: Sat, 29 Sep 2018 11:28:55 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48b5b0eee7a555386df834a1ec9f5c21e68afc135269b8d06bc837dfb1f2c4a`  
		Last Modified: Sat, 29 Sep 2018 11:28:57 GMT  
		Size: 12.5 MB (12519472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09966dd1a9e49156f2dbcdf8c9cc5fe891a9462365a6b09d5d3ee7bb669c656e`  
		Last Modified: Sat, 29 Sep 2018 11:28:55 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e590b7efcdd6c64ba7df4597a62266cd4ce7538e9708cd7df243253625e981a2`  
		Last Modified: Sat, 29 Sep 2018 11:28:55 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225fd8c619ec296b51a7b2b5934ca2240bb978503d663f734661dcc6345008c5`  
		Last Modified: Sat, 29 Sep 2018 11:28:55 GMT  
		Size: 973.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e9ce6392a43e04d13c96ed51780d6684cfbec480923bddccd498ff2eb94509`  
		Last Modified: Sat, 29 Sep 2018 11:30:06 GMT  
		Size: 101.2 MB (101174681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dec79bb2d197b3ac54a6c07fca8fd1df1f9f13885661a9442fafb6f779576b`  
		Last Modified: Sat, 29 Sep 2018 11:29:55 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9902b0f11a50a89a9720e40eb4e415691365fc184373ab2bbcdbf94e0e5ed123`  
		Last Modified: Sat, 29 Sep 2018 11:30:00 GMT  
		Size: 16.2 MB (16179581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:7406d98dfc2b37e945384e2be461dafd7dfa245e6e15c4f5139737ef2edfbf19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319604045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c6c6b87e508c691f1658be1162f93cc6a9de340a1a83c39e37f17af30ae6d2`
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
# Sat, 29 Sep 2018 08:17:44 GMT
ENV JAVA_VERSION=1.8.0_sr5fp22
# Sat, 29 Sep 2018 08:19:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e8debbf6ce880c5b2792283a3e3162d5ce8bdd80f98b6f24f38e08d4774c331c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='7b0b974147d5301c7d4622ee4946f45407018bbadb2ca6f8cacb25aac290e63b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='7025b86b9fafc9c4586cf07e46c02b51267b3e3cdc1b5ad2122c6d378d6b3466';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='535d37c66db76a846422720659781c9f950fcb25c36a580abe283879eb0a252e';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='70a42483ef89959ace0bf168ec1795875ac98d9bee5f7a4c300c6dc03968e34e';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 29 Sep 2018 08:19:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 29 Sep 2018 09:05:25 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 29 Sep 2018 09:05:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Sat, 29 Sep 2018 09:05:53 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Sat, 29 Sep 2018 09:05:54 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Sat, 29 Sep 2018 09:06:05 GMT
ARG LIBERTY_URL
# Sat, 29 Sep 2018 09:06:05 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 29 Sep 2018 09:06:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 29 Sep 2018 09:06:31 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 09:06:32 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Sat, 29 Sep 2018 09:06:32 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Sep 2018 09:06:35 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 29 Sep 2018 09:06:42 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Sep 2018 09:06:43 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Sat, 29 Sep 2018 09:06:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 09:06:45 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 29 Sep 2018 09:06:45 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 29 Sep 2018 09:06:46 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 29 Sep 2018 09:08:57 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 29 Sep 2018 09:14:49 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:14:56 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 29 Sep 2018 09:15:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
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
	-	`sha256:e3e2fe389ce9f0d21f68d3a1b23c13ae64ef1bab74c0d44844f740c32b4b11ea`  
		Last Modified: Sat, 29 Sep 2018 08:28:41 GMT  
		Size: 141.2 MB (141242732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751e91befdfd3a534f170dc29c4a98d844edef819b4883b5dbc14f0a4fa6e2ca`  
		Last Modified: Sat, 29 Sep 2018 09:26:54 GMT  
		Size: 453.1 KB (453116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e917e8980c2a0656ddb8389962349005bb4134ce2b98bbecdc78fa864a767a`  
		Last Modified: Sat, 29 Sep 2018 09:26:51 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353ed661f7e49f96510db501a9ae79acfcf759d631fc915c73f08dc75ffb3e8e`  
		Last Modified: Sat, 29 Sep 2018 09:26:53 GMT  
		Size: 12.5 MB (12519497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278fc3d7698daf96ac07b4410fafa936e6cff4581889807200401a7ff6ef9c05`  
		Last Modified: Sat, 29 Sep 2018 09:26:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e966cb0f8e000f71f924e56694522603268d85546238c8f3523fc4ca5f4c4ea`  
		Last Modified: Sat, 29 Sep 2018 09:26:51 GMT  
		Size: 683.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12bf3fc2320447f5fee6f7b1dff4c298264cedb1d3150e256fa7f65244749ce0`  
		Last Modified: Sat, 29 Sep 2018 09:26:51 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e747c7de50feebc2657ff4f268278256c2b5a14b3b69ed74ebca1424eb7a7e`  
		Last Modified: Sat, 29 Sep 2018 09:29:20 GMT  
		Size: 101.2 MB (101180675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31332c1753980f5a0c11bc29b81cf8e777a9d8819a703e67ca25d04430a37c67`  
		Last Modified: Sat, 29 Sep 2018 09:28:59 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c9da90174f453c5f0d5dfd0a407b6c5cbf2498565f094f73b5d8621cb75b0a`  
		Last Modified: Sat, 29 Sep 2018 09:29:05 GMT  
		Size: 15.7 MB (15686127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:5a66d5a4dcec51363400b4ce3a645c023e8c94600fae87972adcd8304bed40d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301939387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4812219af634dc3310db7187f8123e95899842136c4c6426ce663146e364f88a`
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
# Sat, 29 Sep 2018 12:31:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Sat, 29 Sep 2018 12:31:24 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Sat, 29 Sep 2018 12:31:24 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Sat, 29 Sep 2018 12:31:25 GMT
ARG LIBERTY_URL
# Sat, 29 Sep 2018 12:31:25 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 29 Sep 2018 12:31:31 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 29 Sep 2018 12:31:31 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 12:31:32 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Sat, 29 Sep 2018 12:31:32 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Sep 2018 12:31:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 29 Sep 2018 12:31:37 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Sep 2018 12:31:38 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Sat, 29 Sep 2018 12:31:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 12:31:39 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 29 Sep 2018 12:31:40 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 29 Sep 2018 12:31:40 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 29 Sep 2018 12:33:28 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 29 Sep 2018 12:38:06 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:38:07 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sat, 29 Sep 2018 12:38:36 GMT
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
	-	`sha256:d66fc2e1bdcb582742454a6c5edeca041e56f94b23a2632cf99ea3b7816e3e28`  
		Last Modified: Sat, 29 Sep 2018 12:46:17 GMT  
		Size: 427.6 KB (427612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ec3eb357a66c752f40aa8f5301adfa8fd5f24bda9db0d2970d41220af400a0`  
		Last Modified: Sat, 29 Sep 2018 12:46:15 GMT  
		Size: 40.5 KB (40544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c75203b9f57ca5cd027cefbc2a0c1eb4d74d06cc71f836a8d4a87af1fe03659`  
		Last Modified: Sat, 29 Sep 2018 12:46:17 GMT  
		Size: 12.5 MB (12519474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9845db4871d367641367113532fb2fca84a94537bf2311a4f47de127f127b166`  
		Last Modified: Sat, 29 Sep 2018 12:46:16 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56fb4e3d3826fac5c181809f1c5c005ef57727d5597d437500caa5473caac8`  
		Last Modified: Sat, 29 Sep 2018 12:46:16 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d414e0f1111b4b9a951d079b6eec6bb04a91dddf39343b8110f436211225ec`  
		Last Modified: Sat, 29 Sep 2018 12:46:15 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142d122494cc77133802e3a6e3a7cd7e04dfece663680ad418af39dd49061ab1`  
		Last Modified: Sat, 29 Sep 2018 12:47:20 GMT  
		Size: 101.2 MB (101175117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7531fe0235275e44f4d64223ca4ab779c0a20118a862e24e1b166b6eb5371a27`  
		Last Modified: Sat, 29 Sep 2018 12:47:11 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d04883f3a348a7b0740e8ec97d450906fbee9bde9aa38e8762ee07c6aaf5a1a`  
		Last Modified: Sat, 29 Sep 2018 12:47:16 GMT  
		Size: 16.1 MB (16056274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
