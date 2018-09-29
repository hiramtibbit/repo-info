<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

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

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:1cfe3bf98b72e8503fb0034ef1801e50348bd6e08308ca6714bb201314406f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:088fedf6b14340adcbcbfd35ee9435d3df053f59b1f00918580c38a49b86e7cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277899400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e09015ec49df25ebeff9c97167b7b11052e4446bfbd4a4a0d2ab2b8b0ef529e`
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
# Fri, 28 Sep 2018 19:47:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 28 Sep 2018 19:47:12 GMT
ENV LIBERTY_VERSION=2018.8.0_1
# Fri, 28 Sep 2018 19:47:29 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 28 Sep 2018 19:47:29 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:47:29 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:47:30 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:47:32 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:47:32 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 28 Sep 2018 19:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:47:32 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:4b2575dc32b1b6ab6a26766d3e8089df9efc671d2ddb747f18934ef3b3229ba5`  
		Last Modified: Fri, 28 Sep 2018 19:59:54 GMT  
		Size: 422.0 KB (422010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6d6b8f6702a2230a3f8b94a127a4654ecf2237c377bbefa7da18005003b8c5`  
		Last Modified: Fri, 28 Sep 2018 20:00:03 GMT  
		Size: 103.8 MB (103795814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b09e48eda134db10c6078a7892b6b5ea3bbb439195b4ae16b44564ebb1dd6a`  
		Last Modified: Fri, 28 Sep 2018 19:59:54 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f60db5d410dd48a7eec75bff6dcf1676d6a1eb6d98c9d8999033bf339e1f2a`  
		Last Modified: Fri, 28 Sep 2018 19:59:55 GMT  
		Size: 1.6 KB (1603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb561ef145e78629b1bc3e3161b2e38e2f57b4845096bab009676eddbf0074b9`  
		Last Modified: Fri, 28 Sep 2018 19:59:54 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:7879767d5dab47c66a3309e973c9103cbebb883c89f91c1411b295af6ad65dd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266366599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:609efe876a603d2d2cc51738544d1019f9567771412f06b920b9e90a1cbcd9c3`
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
# Sat, 29 Sep 2018 11:17:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 11:17:50 GMT
ENV LIBERTY_VERSION=2018.8.0_1
# Sat, 29 Sep 2018 11:18:08 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 29 Sep 2018 11:18:08 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 11:18:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Sep 2018 11:18:09 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 29 Sep 2018 11:18:10 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Sep 2018 11:18:10 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 29 Sep 2018 11:18:11 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 11:18:11 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:cb454dd1c77b4e05869b6e8e72420be938a02222527660644456d02c8e658ba1`  
		Last Modified: Sat, 29 Sep 2018 11:29:05 GMT  
		Size: 420.8 KB (420781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe3e72786601ba579c1ef8598e71a5ef199884b007e6d77fb08461082806048`  
		Last Modified: Sat, 29 Sep 2018 11:29:15 GMT  
		Size: 103.8 MB (103795863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631d6940ca6733cb799c3218243fc7ba54b04a20651893c7e3b50d39a69c0454`  
		Last Modified: Sat, 29 Sep 2018 11:29:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acaae16c81eacf3d0cadd17ba8eccc5a115ff4b953dbba65182b45abb9bfaa3c`  
		Last Modified: Sat, 29 Sep 2018 11:29:06 GMT  
		Size: 1.6 KB (1605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb4ca98ef9bf825750fee725b6e0dec379aaad203e5da729af5196350112fd4`  
		Last Modified: Sat, 29 Sep 2018 11:29:05 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:71b21eea4dee8a872cfda10f260cb7ff6a5ddd3ff580c4a5f3dc9114dea1d55c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.0 MB (293972541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a3e99f0584d333d82fe38d6bd7ef2885a2c278f111a719efe0e0ca524a7719`
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
# Sat, 29 Sep 2018 09:07:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 09:07:17 GMT
ENV LIBERTY_VERSION=2018.8.0_1
# Sat, 29 Sep 2018 09:08:14 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 29 Sep 2018 09:08:15 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 09:08:16 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Sep 2018 09:08:18 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 29 Sep 2018 09:08:23 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Sep 2018 09:08:24 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 29 Sep 2018 09:08:34 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 09:08:35 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:6e11210d255f9f514189bb0a0f7bc154e5c9c4d3f54701e8d2bd014cf7415489`  
		Last Modified: Sat, 29 Sep 2018 09:27:12 GMT  
		Size: 453.0 KB (453046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452e23f54859d8622a01a98167bf5da396750ad036c158155aeaba1bd0f6e73`  
		Last Modified: Sat, 29 Sep 2018 09:27:28 GMT  
		Size: 103.8 MB (103795948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f2a48aaf309f46acf39a2c950812d646f755a8ae9f95de3ed7deddb8bf074a`  
		Last Modified: Sat, 29 Sep 2018 09:27:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcc67af29f93f7d8804f7626ef4061741552ad46afa5b665ba4cb4f368bb70e`  
		Last Modified: Sat, 29 Sep 2018 09:27:12 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ecf9b5be788fbc0eac2dcc6254c44b79a9f86376faa4ff2136a8376dc22553`  
		Last Modified: Sat, 29 Sep 2018 09:27:12 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f9e6d8c4445a34aec37db1f0550834f99b5f8c83beea8a8a0c3c94a85f20104d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275943267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c20e438fcd4f91b3743d1c38e4784c0ba9665ef36d7e3b9a7a09590ec340a3`
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
# Sat, 29 Sep 2018 12:32:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 12:32:13 GMT
ENV LIBERTY_VERSION=2018.8.0_1
# Sat, 29 Sep 2018 12:32:31 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 29 Sep 2018 12:32:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 12:32:45 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 29 Sep 2018 12:32:47 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 29 Sep 2018 12:32:58 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 29 Sep 2018 12:33:07 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 29 Sep 2018 12:33:07 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 12:33:08 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:b7be2acb4bf9fa5be4bbed3aa2fe25836814ef64881afd4cd01869ad3bdd7009`  
		Last Modified: Sat, 29 Sep 2018 12:46:27 GMT  
		Size: 427.6 KB (427562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a57f0d95fd50b436afc5b59f10e6ac346c78ceb475b2f95df2099ea68d927d`  
		Last Modified: Sat, 29 Sep 2018 12:46:34 GMT  
		Size: 103.8 MB (103795838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd23e694b2a500e0cf84ed1c865fa02cc6c1016c6df17a751c0ab653835c1280`  
		Last Modified: Sat, 29 Sep 2018 12:46:27 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c34f58644406d359b3ffb1f3fd95a752f8f85562661472191229ffa94e55e74`  
		Last Modified: Sat, 29 Sep 2018 12:46:27 GMT  
		Size: 1.6 KB (1622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8213920c816de21a9574e7b0db5b3492d0e3a0cd4328c9fe5d9ba401798d3b42`  
		Last Modified: Sat, 29 Sep 2018 12:46:27 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:fbe03554787fb1adfc23b956f1ea2584bb0d539b651b3995a30c025b1ad7434b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:dc50cdccf74cbb992642f89ef3ec825d5f96e3c8983ab153de743a3ecca38b94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.7 MB (303708453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316be0b87607766feea8ed4a4355ae40caaa4613dbb395ec126e2a3f215b6f21`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:51:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 sessionCache-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0 appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:51:34 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 28 Sep 2018 19:51:55 GMT
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b17611264b84a80e7241811dd958fc951784979cfa177e19f4471cfe888e19f`  
		Last Modified: Fri, 28 Sep 2018 20:01:18 GMT  
		Size: 101.2 MB (101174596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e843863bcab7d573841223199573b195a646ce2024c1ba1af0f72a8dd549647`  
		Last Modified: Fri, 28 Sep 2018 20:01:09 GMT  
		Size: 925.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3fa38760f0faa9d99eaae08b2e1046111996575f909212bd1242f3b6fb57e4`  
		Last Modified: Fri, 28 Sep 2018 20:01:13 GMT  
		Size: 15.9 MB (15869698 bytes)  
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

## `websphere-liberty:javaee8`

```console
$ docker pull websphere-liberty@sha256:e268b87184b37508c03a2b4bddc90b6334403005b36464d969334607c5215581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:javaee8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:7a3c90b3720f4e25d2109c545194c00d7c8a0b106027dbc1c73ca82ba1f8541d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.8 MB (300790803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b622c8c00aa58c2b0b89287b49bbbe8d430398767f59e001e4115cd72459464f`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:53:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:53:20 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Fri, 28 Sep 2018 19:53:42 GMT
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f87f435a03adaa4b771edd26ac10bb5c1f285f27d115ee00cc06d48a85327d`  
		Last Modified: Fri, 28 Sep 2018 20:01:41 GMT  
		Size: 98.1 MB (98138259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd246671c09029969a1e6316d7dbdda8ba412112b29847d055cf0d8d59219d0f`  
		Last Modified: Fri, 28 Sep 2018 20:01:31 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6dc661bb148f59c26ff98843b48c9176ee0a3c13a02a6a2bdcad12c6db61a0`  
		Last Modified: Fri, 28 Sep 2018 20:01:35 GMT  
		Size: 16.0 MB (15988384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:3c1bc28a24dfc8c4d23c041c5daf33b441a9d2b60e39ff1c6b24682f890d7d97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.5 MB (289521251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7ef607caf885b89197341bfe06c4b9fb468b84b6f604624c9982a369129524`
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
# Sat, 29 Sep 2018 11:23:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:23:36 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 29 Sep 2018 11:23:55 GMT
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
	-	`sha256:34aef6888f2d8b741283fd716dc55b1fa05c32450957200ff6ddff8ee7acf27c`  
		Last Modified: Sat, 29 Sep 2018 11:30:26 GMT  
		Size: 98.1 MB (98138682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c83caef9aea10d2b5f6202a87e6844309b34c644d0ad61f76080c9d60a91e87`  
		Last Modified: Sat, 29 Sep 2018 11:30:16 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5594e34f99d886086ed1a74a4b82bcecde3c2d147f38eb3cee6eff50c21efab`  
		Last Modified: Sat, 29 Sep 2018 11:30:21 GMT  
		Size: 16.3 MB (16251248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:27e3555dec1be1d83dfcb4eb15f0aac8b5bff8b91918dc338fd84b243fbb39ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316676337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48439bb241244515b7b03707982d425b91bb4b001041d2ed2887976fd9c5d8ba`
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
# Sat, 29 Sep 2018 09:17:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:17:45 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 29 Sep 2018 09:18:10 GMT
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
	-	`sha256:2715276cca94eb304cf93cd2caf9fbd5616cb2ea0a558c38575203e22ed5ef2a`  
		Last Modified: Sat, 29 Sep 2018 09:30:06 GMT  
		Size: 98.1 MB (98137865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7129f912c58cc49956f21cd122b7a0be5aeba097dbed04d8422a2bce129c71d4`  
		Last Modified: Sat, 29 Sep 2018 09:29:48 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fb0923dad63032bce51b92f54f3e21d9167adb90d7ef4b41b8534c49f128a1`  
		Last Modified: Sat, 29 Sep 2018 09:29:54 GMT  
		Size: 15.8 MB (15801226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:javaee8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:dd85c0f47fff5a2ca0fc037a998cea5a418a29ab8933acbb09838f04afb94e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298979942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e95030cb1630a49d03069c03dd2fe15a1aec998137d6426bcf36cd7386075cc`
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
# Sat, 29 Sep 2018 12:40:33 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:40:34 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 29 Sep 2018 12:41:06 GMT
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
	-	`sha256:7da2fcddd4b08e89169506eb92af0c5a7f1231d5d0234d591ba7c35d2ccc616f`  
		Last Modified: Sat, 29 Sep 2018 12:47:37 GMT  
		Size: 98.1 MB (98138432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63438d71b3c9fb9f3cd8408bdfb5908a48ee0f1f0cc017609743fb742fd9404e`  
		Last Modified: Sat, 29 Sep 2018 12:47:29 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d69311e50eb23354f0329dff769acba8eb7ef8af93600ae4ef8b2f6ccfe50`  
		Last Modified: Sat, 29 Sep 2018 12:47:32 GMT  
		Size: 16.1 MB (16133511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:c097907a367719170f1971456466267e6cc93239a445f70e78c77a391bc790f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:5bd13b9e0d2ce0bd7cf77773429bd429dcde81126751cd28e12f388334d37296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186663234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66b6627dbeb16f6d55c3751fea1d00d9de91d5342133b1ac5df9878b52a92d1`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:ad5d5df2f1048d91ef1b66ac96c6907fe2983e4dd0a8626bc65c874b220dc2c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175130392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28c260fac0a09984d1b8e5aa97385f9834bbee77be4f63d35b434179bcbc6124`
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

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:1a6fa3e8d4167343506bed12e7019aedc9875d17229c9ba969869cb7609fcecf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.7 MB (202736320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c906caf25f06acec9f4fb78be7bb045da3bd7c909b13a15eda429b1b3b3b27a2`
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

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f09bbc1a38304409a9958785292b67313044a556882cecfd70c195952dbb83d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184707071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c1b2b92efc810d6d6ca679d64e0503c053cb9da34ad0807d722353ed9ddbe3`
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

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:a593c9719b517627053da526d40b2317234fcfe5883e225918a88836d157f8bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:7a3c90b3720f4e25d2109c545194c00d7c8a0b106027dbc1c73ca82ba1f8541d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.8 MB (300790803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b622c8c00aa58c2b0b89287b49bbbe8d430398767f59e001e4115cd72459464f`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:53:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:53:20 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Fri, 28 Sep 2018 19:53:42 GMT
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f87f435a03adaa4b771edd26ac10bb5c1f285f27d115ee00cc06d48a85327d`  
		Last Modified: Fri, 28 Sep 2018 20:01:41 GMT  
		Size: 98.1 MB (98138259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd246671c09029969a1e6316d7dbdda8ba412112b29847d055cf0d8d59219d0f`  
		Last Modified: Fri, 28 Sep 2018 20:01:31 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6dc661bb148f59c26ff98843b48c9176ee0a3c13a02a6a2bdcad12c6db61a0`  
		Last Modified: Fri, 28 Sep 2018 20:01:35 GMT  
		Size: 16.0 MB (15988384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:3c1bc28a24dfc8c4d23c041c5daf33b441a9d2b60e39ff1c6b24682f890d7d97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.5 MB (289521251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7ef607caf885b89197341bfe06c4b9fb468b84b6f604624c9982a369129524`
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
# Sat, 29 Sep 2018 11:23:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:23:36 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 29 Sep 2018 11:23:55 GMT
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
	-	`sha256:34aef6888f2d8b741283fd716dc55b1fa05c32450957200ff6ddff8ee7acf27c`  
		Last Modified: Sat, 29 Sep 2018 11:30:26 GMT  
		Size: 98.1 MB (98138682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c83caef9aea10d2b5f6202a87e6844309b34c644d0ad61f76080c9d60a91e87`  
		Last Modified: Sat, 29 Sep 2018 11:30:16 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5594e34f99d886086ed1a74a4b82bcecde3c2d147f38eb3cee6eff50c21efab`  
		Last Modified: Sat, 29 Sep 2018 11:30:21 GMT  
		Size: 16.3 MB (16251248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:27e3555dec1be1d83dfcb4eb15f0aac8b5bff8b91918dc338fd84b243fbb39ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316676337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48439bb241244515b7b03707982d425b91bb4b001041d2ed2887976fd9c5d8ba`
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
# Sat, 29 Sep 2018 09:17:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:17:45 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 29 Sep 2018 09:18:10 GMT
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
	-	`sha256:2715276cca94eb304cf93cd2caf9fbd5616cb2ea0a558c38575203e22ed5ef2a`  
		Last Modified: Sat, 29 Sep 2018 09:30:06 GMT  
		Size: 98.1 MB (98137865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7129f912c58cc49956f21cd122b7a0be5aeba097dbed04d8422a2bce129c71d4`  
		Last Modified: Sat, 29 Sep 2018 09:29:48 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fb0923dad63032bce51b92f54f3e21d9167adb90d7ef4b41b8534c49f128a1`  
		Last Modified: Sat, 29 Sep 2018 09:29:54 GMT  
		Size: 15.8 MB (15801226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:5ddfc8e4f6b2f352771fef2a22ce816e18299526a66518912e1e469354ddced4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299182167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fee91997fe364dd5629115727b6567751b5e28fe5419c19b23e24233f533d8`
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
# Thu, 06 Sep 2018 11:41:39 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Thu, 06 Sep 2018 11:42:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c75f8368ba4256d2c5c644b109c5dce7150826155dea5fe398c779c9832f9ee9';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='50757bc7fa87c9ab490a2f9e90466791f49267c6caeeab5846b804221f465139';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='4c69eae82b13c9e7d9ef2f42c3e0ceb1ea1786548ffe74e1c985c35f0e201f8b';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='a1fd6921b75a5d3bfe7ca905c690af7edddbbb62d89ba73d4df128b8e24206f8';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='29147f37d75770f580debba21bad70c4a5bf9a8c349a3dc1d48a854797a6120c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 06 Sep 2018 11:42:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 06 Sep 2018 12:05:08 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 22 Sep 2018 11:56:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Sat, 22 Sep 2018 11:56:56 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Sat, 22 Sep 2018 11:56:56 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Sat, 22 Sep 2018 11:56:56 GMT
ARG LIBERTY_URL
# Sat, 22 Sep 2018 11:56:56 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 22 Sep 2018 11:57:00 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 22 Sep 2018 11:57:00 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 11:57:00 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Sat, 22 Sep 2018 11:57:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 22 Sep 2018 11:57:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Sat, 22 Sep 2018 11:57:02 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 22 Sep 2018 11:57:02 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Sat, 22 Sep 2018 11:57:03 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 22 Sep 2018 11:57:03 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 22 Sep 2018 11:57:03 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Sat, 22 Sep 2018 11:57:03 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Sat, 22 Sep 2018 11:57:22 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 22 Sep 2018 12:03:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0     appSecurityClient-1.0 javaee-8.0 javaeeClient-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 22 Sep 2018 12:03:09 GMT
COPY file:f4cac514955c255b36133cfe1191b08f01517de7405d8bd87d2a32324b7c8a39 in /config/ 
# Sat, 22 Sep 2018 12:03:24 GMT
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
	-	`sha256:58729f4faf073285a4ea581644f61daba7af520dd2198045c30c4b2df3b38805`  
		Last Modified: Thu, 06 Sep 2018 11:44:37 GMT  
		Size: 127.0 MB (126986111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c651b32be0efab27118ebb37f31b5e009c659b25689f7f0e86412c68d43e658c`  
		Last Modified: Sat, 22 Sep 2018 12:09:10 GMT  
		Size: 427.6 KB (427599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfd1332d02c62cfb7cd38a0a0116f54446d0e9b691a7655bbda7b6cc5d87f7b`  
		Last Modified: Sat, 22 Sep 2018 12:09:08 GMT  
		Size: 40.5 KB (40545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c745dc6c94b09a27d8680f444ac7d77ddefffe7241f2e3cf5f33f3c28c4ee10`  
		Last Modified: Sat, 22 Sep 2018 12:09:10 GMT  
		Size: 12.5 MB (12519472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c728137a0aa7ea8c09276fd045203c47980a628f3831103f6191377ee316c8bf`  
		Last Modified: Sat, 22 Sep 2018 12:09:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d62111275f9900e655fbeea4163fc2f1da46b094a9a2ab4c80a7610092478`  
		Last Modified: Sat, 22 Sep 2018 12:09:08 GMT  
		Size: 639.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f672428217158c65d3201a74ae2e7f81f04d11eaa30860d26a6291d9aed57`  
		Last Modified: Sat, 22 Sep 2018 12:09:08 GMT  
		Size: 977.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b991df0395db64d0c17698530bbbb35d80eec7cee773f956089d08778c4ed2`  
		Last Modified: Sat, 22 Sep 2018 12:10:14 GMT  
		Size: 98.1 MB (98138369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0068653002067b588e2a276c9ecf1ea89b46820289e81ccd6773f24540b0775d`  
		Last Modified: Sat, 22 Sep 2018 12:10:07 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8dc04c411ba3f528f60309305bb9615d22b40bc0e7258f0b7657781505a3a7`  
		Last Modified: Sat, 22 Sep 2018 12:10:10 GMT  
		Size: 16.0 MB (16046368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:9d0f03bb23878ce87d8199f9f4316a8023eb3bb7b7a06921cf95427edd10d860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:4569a00199f8a07f99c72e614d0b97de59ac915df661507c3469704b981dcf78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281268550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deae50fc1863f0eb98d6f71d5b83a5943d2dead26ff17716fb638bc08318e337`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:58:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:58:21 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Fri, 28 Sep 2018 19:58:35 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3e40c2f1ed1aac3dacd39acd71785ffab4a3d8343c62e01fcc60b71f4175eb`  
		Last Modified: Fri, 28 Sep 2018 20:02:46 GMT  
		Size: 82.5 MB (82529202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc96b911c7b5b58918da38e2c90e0116ebf6655a391d46357948d924fb338f`  
		Last Modified: Fri, 28 Sep 2018 20:02:37 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043c2dfa836fed7a908948fd1d93dcb68abab851a8a5aaf96e0a825014018a72`  
		Last Modified: Fri, 28 Sep 2018 20:02:41 GMT  
		Size: 12.1 MB (12075547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:f56aec8ed4b17831b6e035f935f10a39c2de4ea2fef77c3e89e7f6d4621ceb9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270035052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfc4589bccc58aa31116d9663645ea00f0f3ed820f5d2bfb809839cbfc82525`
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
# Sat, 29 Sep 2018 11:27:53 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:27:53 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 29 Sep 2018 11:28:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:63144cf4b23649a8b4c50b2b676c3c1883a6010e65697b289c2c370da61aae6c`  
		Last Modified: Sat, 29 Sep 2018 11:31:28 GMT  
		Size: 82.5 MB (82528991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90ebcd9dad45ee2903db23c145afdb2fb6d8e8d92bf407229c58f11d41a7d2f`  
		Last Modified: Sat, 29 Sep 2018 11:31:19 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b69b5f6bdddc9ed9d4ad93c188d4f8514c8016e011878fcbd1af930ca93949`  
		Last Modified: Sat, 29 Sep 2018 11:31:23 GMT  
		Size: 12.4 MB (12375102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:9e5f077e6247cf926fbbe2fbde5d65a88d373c8a2b329ea70328725128f872f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297495565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02f8bed503edc0baec458d52c8162c61b1ee5e9ed3db718bc820bb05b0918b2`
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
# Sat, 29 Sep 2018 09:25:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:25:12 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 29 Sep 2018 09:25:29 GMT
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
	-	`sha256:0fa48154b9ef3aeec6377f243a68ee659d06f6a8720cab65bfe6111dec9fbfa6`  
		Last Modified: Sat, 29 Sep 2018 09:32:24 GMT  
		Size: 82.5 MB (82533059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d11357e69ed7fe229e7aa90ebbdf98a957391f9aba1f31d173d29a8b3790efa`  
		Last Modified: Sat, 29 Sep 2018 09:32:04 GMT  
		Size: 565.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1143b7bb2a1b46ff645f5252dbd03a3d18cd2505affc6e7759a62d8b6dedb3`  
		Last Modified: Sat, 29 Sep 2018 09:32:10 GMT  
		Size: 12.2 MB (12225621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:146e79f1ac052d028e7d5e707f34d575d82dc86d4106f57a24005bc06b8a0374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279418222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fdbfae16041537b50e3b875ff8746c87330e27aa79bcbb642ec449a48110b`
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
# Sat, 29 Sep 2018 12:45:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:45:16 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 29 Sep 2018 12:45:29 GMT
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
	-	`sha256:538c2b68d2a6d0675e16b14508e4b23e9da84b4a3e3ff8bdb5f8c40b58d2045d`  
		Last Modified: Sat, 29 Sep 2018 12:48:34 GMT  
		Size: 82.5 MB (82529119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e033098b43300421e3c77e4720a1b961f10701ca9320ab53c0ae0f12438fdb9b`  
		Last Modified: Sat, 29 Sep 2018 12:48:27 GMT  
		Size: 564.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa5b3bc5137eac2d3912fa2325bbd2144aaed6cab3192800c6ce80b20c0ae1e`  
		Last Modified: Sat, 29 Sep 2018 12:48:30 GMT  
		Size: 12.2 MB (12181468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile1`

```console
$ docker pull websphere-liberty@sha256:d1473e211277dc44d8f968c76ab6567d6a7e0fc7657803fb38af60b572117045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:2955d266536548112629b9ac22a4362548c06edd46af55dcd1f10b8be9165a24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272501738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49deb6276b1a89a1908bcf46be6406ce84f72ee141868e1016833652dceb8141`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:56:37 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:56:37 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Fri, 28 Sep 2018 19:56:58 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffea59dade97f9c9c819f19a878b83abd5cded751c72d7e1b3e0110d45e240ab`  
		Last Modified: Fri, 28 Sep 2018 20:02:24 GMT  
		Size: 73.8 MB (73805621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc94fbe9c99b28ebbe5846bd451ad1330fbf59063d349d861027b0a48514d7bb`  
		Last Modified: Fri, 28 Sep 2018 20:02:16 GMT  
		Size: 565.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f5183f21fc36074ab2f0f00edc3ddd9f5af0346c39dd425070e6550050166a`  
		Last Modified: Fri, 28 Sep 2018 20:02:19 GMT  
		Size: 12.0 MB (12032318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:1e001b72c09784125985168dfd7cc25574d26cd1d6d3cf77a9c9010edba2bb6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261211613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7db78e6f14adbca465c7d558022c4d8b6594b0398cc50cb1e023f2dd3eff523`
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
# Sat, 29 Sep 2018 11:26:22 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:26:22 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Sat, 29 Sep 2018 11:26:36 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:7e437092b4dff60e9c7f6d0f5c36e4ff1b675502543abfffd85a41b140e510fb`  
		Last Modified: Sat, 29 Sep 2018 11:31:09 GMT  
		Size: 73.8 MB (73805790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a805329877dc917b0930cc9f6767b971a7c87258f2adf63f863f6976f237e9`  
		Last Modified: Sat, 29 Sep 2018 11:31:01 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f44ce035f2192da305ef14f6a7ff2672e5c2a0c20b890d7ca98cb0a41459acf`  
		Last Modified: Sat, 29 Sep 2018 11:31:05 GMT  
		Size: 12.3 MB (12274864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:11456c6cda6d3c6e74b8b14cfb2cb0133f52c612200780dbacf89fc88c8a161b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.8 MB (288761512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35661c1068c059fcadcfa1008a185071cde94f3d06a8fd39f8b5d4ce074b452a`
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
# Sat, 29 Sep 2018 09:22:23 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:22:24 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Sat, 29 Sep 2018 09:22:41 GMT
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
	-	`sha256:de1aed191c2c155a0bb46c1080371986d9aad9f0573c8f3dcd39da2e4f44218d`  
		Last Modified: Sat, 29 Sep 2018 09:31:44 GMT  
		Size: 73.8 MB (73809830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe46c4878b823ff667df66798da20f9e5e797dbebaf1b0ef1edbbcae8c0f672`  
		Last Modified: Sat, 29 Sep 2018 09:31:30 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9d01d216a3cdded2eda850dbba66d54ea7bd18557fdc08f03c705126b1ca04`  
		Last Modified: Sat, 29 Sep 2018 09:31:35 GMT  
		Size: 12.2 MB (12214800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:1d478120a3daa72639803fac168f724b289e6adcdf3da09b714c82c2e712febd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.9 MB (270929349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea063e46899d162294e66455233b623110225686f63358e925a9b448418505d0`
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
# Sat, 29 Sep 2018 12:43:42 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense      appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-1.0      microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0      requestTiming-1.0 restConnector-2.0 sessionCache-1.0 sessionDatabase-1.0      ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:43:42 GMT
COPY file:23644e3c10b3bdd139278cd7f641eb7947292e238e821d17fbf24b360f5250b1 in /config/ 
# Sat, 29 Sep 2018 12:43:56 GMT
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
	-	`sha256:af11aa40172f8777a999161b2a70465e7212f5f1bc2032a47bb0bbf3fdd9ee46`  
		Last Modified: Sat, 29 Sep 2018 12:48:18 GMT  
		Size: 73.8 MB (73805677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b7a9a24cdf37c829c06d2ebef9199c36432e4d56d088ef2d99661767f99561`  
		Last Modified: Sat, 29 Sep 2018 12:48:12 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb342c1c17453a39ae02ee8ca49f50e70b99a90b355de67c8b583fac8661145`  
		Last Modified: Sat, 29 Sep 2018 12:48:15 GMT  
		Size: 12.4 MB (12416035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile2`

```console
$ docker pull websphere-liberty@sha256:9d0f03bb23878ce87d8199f9f4316a8023eb3bb7b7a06921cf95427edd10d860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:4569a00199f8a07f99c72e614d0b97de59ac915df661507c3469704b981dcf78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281268550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deae50fc1863f0eb98d6f71d5b83a5943d2dead26ff17716fb638bc08318e337`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:58:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:58:21 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Fri, 28 Sep 2018 19:58:35 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3e40c2f1ed1aac3dacd39acd71785ffab4a3d8343c62e01fcc60b71f4175eb`  
		Last Modified: Fri, 28 Sep 2018 20:02:46 GMT  
		Size: 82.5 MB (82529202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc96b911c7b5b58918da38e2c90e0116ebf6655a391d46357948d924fb338f`  
		Last Modified: Fri, 28 Sep 2018 20:02:37 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043c2dfa836fed7a908948fd1d93dcb68abab851a8a5aaf96e0a825014018a72`  
		Last Modified: Fri, 28 Sep 2018 20:02:41 GMT  
		Size: 12.1 MB (12075547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:f56aec8ed4b17831b6e035f935f10a39c2de4ea2fef77c3e89e7f6d4621ceb9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270035052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfc4589bccc58aa31116d9663645ea00f0f3ed820f5d2bfb809839cbfc82525`
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
# Sat, 29 Sep 2018 11:27:53 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:27:53 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 29 Sep 2018 11:28:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:63144cf4b23649a8b4c50b2b676c3c1883a6010e65697b289c2c370da61aae6c`  
		Last Modified: Sat, 29 Sep 2018 11:31:28 GMT  
		Size: 82.5 MB (82528991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90ebcd9dad45ee2903db23c145afdb2fb6d8e8d92bf407229c58f11d41a7d2f`  
		Last Modified: Sat, 29 Sep 2018 11:31:19 GMT  
		Size: 567.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b69b5f6bdddc9ed9d4ad93c188d4f8514c8016e011878fcbd1af930ca93949`  
		Last Modified: Sat, 29 Sep 2018 11:31:23 GMT  
		Size: 12.4 MB (12375102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:9e5f077e6247cf926fbbe2fbde5d65a88d373c8a2b329ea70328725128f872f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297495565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02f8bed503edc0baec458d52c8162c61b1ee5e9ed3db718bc820bb05b0918b2`
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
# Sat, 29 Sep 2018 09:25:04 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:25:12 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 29 Sep 2018 09:25:29 GMT
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
	-	`sha256:0fa48154b9ef3aeec6377f243a68ee659d06f6a8720cab65bfe6111dec9fbfa6`  
		Last Modified: Sat, 29 Sep 2018 09:32:24 GMT  
		Size: 82.5 MB (82533059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d11357e69ed7fe229e7aa90ebbdf98a957391f9aba1f31d173d29a8b3790efa`  
		Last Modified: Sat, 29 Sep 2018 09:32:04 GMT  
		Size: 565.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1143b7bb2a1b46ff645f5252dbd03a3d18cd2505affc6e7759a62d8b6dedb3`  
		Last Modified: Sat, 29 Sep 2018 09:32:10 GMT  
		Size: 12.2 MB (12225621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:146e79f1ac052d028e7d5e707f34d575d82dc86d4106f57a24005bc06b8a0374
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279418222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fdbfae16041537b50e3b875ff8746c87330e27aa79bcbb642ec449a48110b`
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
# Sat, 29 Sep 2018 12:45:15 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0 localConnector-1.0 microProfile-2.0     monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0     webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:45:16 GMT
COPY file:666fba6d6d875ffd9c577e6b6db3cdf26501345f8b83aa07e9c5ecf3760ea4d9 in /config/ 
# Sat, 29 Sep 2018 12:45:29 GMT
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
	-	`sha256:538c2b68d2a6d0675e16b14508e4b23e9da84b4a3e3ff8bdb5f8c40b58d2045d`  
		Last Modified: Sat, 29 Sep 2018 12:48:34 GMT  
		Size: 82.5 MB (82529119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e033098b43300421e3c77e4720a1b961f10701ca9320ab53c0ae0f12438fdb9b`  
		Last Modified: Sat, 29 Sep 2018 12:48:27 GMT  
		Size: 564.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa5b3bc5137eac2d3912fa2325bbd2144aaed6cab3192800c6ce80b20c0ae1e`  
		Last Modified: Sat, 29 Sep 2018 12:48:30 GMT  
		Size: 12.2 MB (12181468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:springBoot1`

```console
$ docker pull websphere-liberty@sha256:a1729653081dbabcac444736d203ad31d907b7b638ee0202cabcf89514e3d92b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot1` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:23d7ae8c2a219327ac621cdfea0b9d5bf82bb3b8be13f7092904bc8809588239
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218735649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711a81adf896d01cd866b5a54255d312e3c81c868c2486b3bf7bf5ade3884f8a`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:48:06 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:48:07 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Fri, 28 Sep 2018 19:48:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bab1ebfd1cdbf1a5cb7e09ddf2c2ab168f699faf170160c425afe911d5718c`  
		Last Modified: Fri, 28 Sep 2018 20:00:39 GMT  
		Size: 23.6 MB (23626036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66c377ed5ed3e06e095607fa5c5c8af9f67d6e94caa8e6349776665f465bd00`  
		Last Modified: Fri, 28 Sep 2018 20:00:36 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f95e31a7b1c27cdd295ffdf05f0c1c683a4e4f640e87ca5099b309493bc0a41`  
		Last Modified: Fri, 28 Sep 2018 20:00:39 GMT  
		Size: 8.4 MB (8445831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; 386

```console
$ docker pull websphere-liberty@sha256:de2a560329f8f1f77503db05e5c1620582c6c5d1ca61c7236e463d329d42308d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207324791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d362fdb034843cbfd5f3fe11f4d343850f11761601527ecf769fe9b36ef0eb`
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
# Sat, 29 Sep 2018 11:18:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:18:39 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 29 Sep 2018 11:18:48 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:611e2c3c6e95bcf670a0e4484b62886b8a5e72ab9453bb1ce9b621ab7736082d`  
		Last Modified: Sat, 29 Sep 2018 11:29:29 GMT  
		Size: 23.6 MB (23625985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a23ce8ab4bae5b0bf40ad51b18df80d8e7b8076fa1206d165ee5d3847470f2`  
		Last Modified: Sat, 29 Sep 2018 11:29:26 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3340519b74598e3ee2ceaa4ecb3eb2fe0401c84e319861a620208ad1356a4bcf`  
		Last Modified: Sat, 29 Sep 2018 11:29:29 GMT  
		Size: 8.6 MB (8567865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:165448e8c767d79c5b5a490eaf1d2ec6a86582045d0edf4268ccfd30714078b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234624055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f4bf35ce5a6d86de6a47beeb536427e8aca68e05be474e8ae42f26c2af3a53`
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
# Sat, 29 Sep 2018 09:09:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:09:33 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 29 Sep 2018 09:09:45 GMT
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
	-	`sha256:1eab47873790de9f5d51901201269daaabf73ecc6218b769337a0fc6861abd28`  
		Last Modified: Sat, 29 Sep 2018 09:27:58 GMT  
		Size: 23.6 MB (23626919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1dacde6415d8c60566a27a091e25a9c98b82892d56f8b333c7c5d63fd7e2b0`  
		Last Modified: Sat, 29 Sep 2018 09:27:55 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4077b9f29a957731fe154fc23686982e757ef4dad7b14b966f4649c8182dc9`  
		Last Modified: Sat, 29 Sep 2018 09:27:57 GMT  
		Size: 8.3 MB (8260268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot1` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:62055d3cc4bb0235bf9795503f9b9a9f05d90f03225ef51d57638fe12d4e51da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216936089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:311117e644d8dd3e9c0055399c8d1d87ef76f2b85693ca0cfed4f8f87aefc4eb`
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
# Sat, 29 Sep 2018 12:33:53 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-1.5 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:33:56 GMT
COPY file:01d87f11d05fde398ec003f0aeae67fd944b6f2f7ca7d69b7d29cac22e0318e7 in /config/ 
# Sat, 29 Sep 2018 12:34:13 GMT
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
	-	`sha256:8fcfe9928b653c3333f7f0168a796bfc6dc3b790e8866a5b118badb78bb25d10`  
		Last Modified: Sat, 29 Sep 2018 12:46:46 GMT  
		Size: 23.6 MB (23626027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d2c5a9f88865bb15db6fdb7262a0da1c60139132ce02f6b07d06552a0e0ab`  
		Last Modified: Sat, 29 Sep 2018 12:46:44 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1483e39665abdd537e032144be53b1958ed8646602cbdf9ad6ffd9f60ba8b0`  
		Last Modified: Sat, 29 Sep 2018 12:46:46 GMT  
		Size: 8.6 MB (8602442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:springBoot2`

```console
$ docker pull websphere-liberty@sha256:ce6d445be8d9203b941a4af9217a0031a6235e05c562b31cbe9e26c8f8a1a70b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:springBoot2` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:26ee426c39a9e7a080e9b42979aa20f39e9aa39ea3517722bfa0f4dc28ceff84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218628706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266ae56bd72cb04f9f70f405d862129f4949bb4ef319977d96071e0fc5a06361`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:59:14 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:59:16 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Fri, 28 Sep 2018 19:59:24 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfa7fcbe4f3e7a2e5114a4f14963f263f5a738120cba04694f8e68b2c59cacd`  
		Last Modified: Fri, 28 Sep 2018 20:03:06 GMT  
		Size: 23.6 MB (23628382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd7dea95a966b4405b84367190d046693b071a5bb9742755e5a0fdae5249910`  
		Last Modified: Fri, 28 Sep 2018 20:03:03 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4330905fa1615f1bc974bc654eb13d2b02ff8078eb0b0e42c5de29c4d4bcde28`  
		Last Modified: Fri, 28 Sep 2018 20:03:06 GMT  
		Size: 8.3 MB (8336541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; 386

```console
$ docker pull websphere-liberty@sha256:557cea4282b47376fbdf90cd21f380274ee785e661bf45ee744c09abb36ad452
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207369171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266974eec47e72305cd102fe25333b044616ab4a5412c7d52bb3c68123206268`
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
# Sat, 29 Sep 2018 11:28:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:28:35 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 29 Sep 2018 11:28:43 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:2b0aaff36025849a831117daf7887bb7fab35658dec3124b150ce601a3a00b28`  
		Last Modified: Sat, 29 Sep 2018 11:31:47 GMT  
		Size: 23.6 MB (23628396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77d205de9f732f27eb93e4049bb18b842c8a93703b1047bfe5112555bfed713`  
		Last Modified: Sat, 29 Sep 2018 11:31:44 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ab3e518b149082b77ada7a262c44c17fecba16032dd6b3e425ee4e9275c04a`  
		Last Modified: Sat, 29 Sep 2018 11:31:47 GMT  
		Size: 8.6 MB (8609835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:275acf7e7080f6d93e4c5641ef6b7544fa1f463fc4d82df794ea10ad38a00032
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.7 MB (234692203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c61093efaa62bbb463594b4d7e2983dd889eb2efde34ed57c1391d38d1a9fb`
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
# Sat, 29 Sep 2018 09:26:18 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:26:19 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 29 Sep 2018 09:26:31 GMT
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
	-	`sha256:0665945a2486ef6bb86a52911499d4471e7a93bb976ae3d51b33552c8948f586`  
		Last Modified: Sat, 29 Sep 2018 09:33:18 GMT  
		Size: 23.6 MB (23629218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd368d6dfcecb4312c034e76d952163ad4a1b15c22734d83ccef1ffb36c47eb0`  
		Last Modified: Sat, 29 Sep 2018 09:33:08 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b794e5efcaa7a30c9df21cb4bbc8cf50a97654d3c7587da95a2f5ce288b8f912`  
		Last Modified: Sat, 29 Sep 2018 09:33:17 GMT  
		Size: 8.3 MB (8326117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:springBoot2` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0b87b6e9e09207baa1bc39bff8b3c803b831437b2af7d2bd56a5e08dd357ca35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216718705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3918fec6ccdfb9168394f5bcd4ba1fee453145c401801c0830de5bd9dc2f694`
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
# Sat, 29 Sep 2018 12:45:55 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     jsp-2.3 servlet-4.0 springBoot-2.0 transportSecurity-1.0 webSocket-1.1   && mkdir /opt/ibm/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:45:56 GMT
COPY file:9bd7671f14eb4dab5e8157daf2d04f397fe5fb91e12a88930e54b90e462cac3c in /config/ 
# Sat, 29 Sep 2018 12:46:02 GMT
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
	-	`sha256:824fb424aeb79deb18369d667b0bf9e61886dffd119e71d942f69aaef923c3cf`  
		Last Modified: Sat, 29 Sep 2018 12:48:56 GMT  
		Size: 23.6 MB (23628581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff77e3e8369778151f1890dfc09c3f227c15acd9e88b02c23ee63dccf6923c39`  
		Last Modified: Sat, 29 Sep 2018 12:48:54 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1731fb6669a8d130846fed5c6a1a8bade65d06416b5b7a5cdf5494b8088e47e4`  
		Last Modified: Sat, 29 Sep 2018 12:48:56 GMT  
		Size: 8.4 MB (8382504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:3bd86a3eb871a0586b3494c9602e324c25f96b6b476714499809dc6de2fabe46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:a79f408bc394db0290141afcb7e1de8fba7c76971478ceae15b28ba066d8962f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278596137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c55f52ec28b0a26a75f95d12343cc0a31d24a3ae20b5f7b27ba0a2c809609d`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:49:34 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:49:35 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 28 Sep 2018 19:49:50 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48aadd9226364a5f77890e494fd2ce4ed4236b1e299f8987eb8d28cabd4c68ef`  
		Last Modified: Fri, 28 Sep 2018 20:00:59 GMT  
		Size: 80.6 MB (80573736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7cc07afbc4b63338d3998782f254d9145c0316b0056ace882f8bcb79ade0dd`  
		Last Modified: Fri, 28 Sep 2018 20:00:51 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c33afaf8629351d32d3c0e3d966a15f26ee0d8e716bcd9c55821a4a8f6397d`  
		Last Modified: Fri, 28 Sep 2018 20:00:54 GMT  
		Size: 11.4 MB (11358608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:dcbbd363f1794f4258b706bde7a644c2c346f26d7ce9006c519ada574b9b9036
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.3 MB (267293505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee356b871479f8b738ef8bf29c27588d2c782e08c60a87d7668cea22db645ceb`
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
# Sat, 29 Sep 2018 11:20:07 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:20:07 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 29 Sep 2018 11:20:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:717020521e8aebad0a69d78b016881110ff50ad18735f26cb890c03cc14d61c8`  
		Last Modified: Sat, 29 Sep 2018 11:29:46 GMT  
		Size: 80.6 MB (80573912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a394565b5b716a664d8a8b60190e6f8c1e533776d63f6997569224400a4b4b`  
		Last Modified: Sat, 29 Sep 2018 11:29:38 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ce940b96f0ed8afc4747125e331c9080aa162306cac2e2389000e34a235325`  
		Last Modified: Sat, 29 Sep 2018 11:29:42 GMT  
		Size: 11.6 MB (11588641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:413bd90f4a480e5effd8acc4a5454f9544ae3aab297fd1a6e513f9110d48045a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294687169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024be6caecd16f63023124024ac24f4c2a054497522ceea0e397a2ea7388fd8c`
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
# Sat, 29 Sep 2018 09:11:46 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:11:50 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 29 Sep 2018 09:12:15 GMT
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
	-	`sha256:6fcd2c3dc167b573d152033505339d6b2d2e86eac11518885045a0e4dc362aea`  
		Last Modified: Sat, 29 Sep 2018 09:28:32 GMT  
		Size: 80.6 MB (80578542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63db5ae865ddf18d57a5d3ff8b390c758d9b4dab768e50b1ea7fbfea0ab80edd`  
		Last Modified: Sat, 29 Sep 2018 09:28:17 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aff326afb5bb05e268d6a1513091cbfc4e3d468e51a01765630fc95852e1444`  
		Last Modified: Sat, 29 Sep 2018 09:28:21 GMT  
		Size: 11.4 MB (11371749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f51fe8ccf1ae01986810117ef0dc6cbce8c0ad1746f2e1baeaed7f1082d5e126
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276846733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166a15ad8022f4e52db03d5ce0bbbed80ce9f9d986e215020bc78be001c056a4`
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
# Sat, 29 Sep 2018 12:35:59 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 sessionCache-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 microProfile-1.2 microProfile-1.3 microProfile-1.4 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:35:59 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 29 Sep 2018 12:36:13 GMT
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
	-	`sha256:b932b01fd60b736bbc862720e1c91e8d6cd85c7aabc98441b5f38f42000265dd`  
		Last Modified: Sat, 29 Sep 2018 12:47:02 GMT  
		Size: 80.6 MB (80573857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d60c30e05b517884d7f1e6b109465a2cac61e668ccc8a48869dd0877a63816`  
		Last Modified: Sat, 29 Sep 2018 12:46:55 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e391394eea0441728b316f66ec04a74c515662949427acee5c219d72bd3b4595`  
		Last Modified: Sat, 29 Sep 2018 12:46:57 GMT  
		Size: 11.6 MB (11565245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile8`

```console
$ docker pull websphere-liberty@sha256:cf747e6551d262bd7f8084fb0157fbf2436e683cdb656037d93305abe0e9526a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile8` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:b9ecba4a5e698d554a7a2490f18e20f6c27257ef6eb0815e36e0f52ec0e1e6a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265485780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8247edf44d9c45d5b312eb1ec6aa433478645e68376a1eba2d2c4d426d5944`
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
# Fri, 28 Sep 2018 19:46:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && mkdir /licenses/
# Fri, 28 Sep 2018 19:46:43 GMT
COPY multi:a307f219002426f5ffcaa6fb75adae646320923266aeb8e223556c75b255a52e in /licenses/ 
# Fri, 28 Sep 2018 19:46:44 GMT
ENV LIBERTY_VERSION=18.0.0_03
# Fri, 28 Sep 2018 19:46:44 GMT
ARG LIBERTY_URL
# Fri, 28 Sep 2018 19:46:44 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Sep 2018 19:46:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 28 Sep 2018 19:46:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 19:46:48 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=18.0.0.3
# Fri, 28 Sep 2018 19:46:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 28 Sep 2018 19:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty
# Fri, 28 Sep 2018 19:46:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 28 Sep 2018 19:46:51 GMT
COPY file:53f047a0843b4c62cdf567d9f85664b9b469d2bd77bc26302dd7040d7756a6b8 in /opt/ibm/docker/ 
# Fri, 28 Sep 2018 19:46:51 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:46:51 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 28 Sep 2018 19:46:52 GMT
ENTRYPOINT ["/opt/ibm/docker/docker-server"]
# Fri, 28 Sep 2018 19:46:52 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:47:47 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Sep 2018 19:54:48 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 28 Sep 2018 19:54:49 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Fri, 28 Sep 2018 19:55:03 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:074574fb283396e385f80425a90a51e826ba28bb027e30534fe0b18e26d55bdd`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 422.0 KB (422047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1e191ec0c36aa8b2aed6af8a5469f74a8cae4f526827fbb6ac1e82231ae11a`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa05b94be06f8bb2eb3292c1e8709007f73a7535b6c8e994f51ddea373297a5`  
		Last Modified: Fri, 28 Sep 2018 19:59:43 GMT  
		Size: 12.5 MB (12519468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a3cffb5fa41804a9ec64a55a7900f61baf782ce9fd071c7d4893c2bd5c6876`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb8e46dfda1c9800cbdd350818da15fc14fc82e2fd951ef5b88351d6e0eba62`  
		Last Modified: Fri, 28 Sep 2018 19:59:41 GMT  
		Size: 636.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f85dd0f3c2f0d951b927ff7e2f40cd7e1fc3e04c1c9fc9e6bd059f0e94f668a`  
		Last Modified: Fri, 28 Sep 2018 19:59:40 GMT  
		Size: 976.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af8a2e6d3a6243f3752e078ac55e723becefb6d72dbcd30d72bcd0b84cf8857`  
		Last Modified: Fri, 28 Sep 2018 20:02:05 GMT  
		Size: 67.2 MB (67228677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b8c06218eb79d74a9bfe44e0eca91436e3fb526ea5be983f9cf865b173972e`  
		Last Modified: Fri, 28 Sep 2018 20:01:58 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83bb1be7af59257320d693af7499512ce2133df0019e9880436a5b36b720e2e`  
		Last Modified: Fri, 28 Sep 2018 20:02:01 GMT  
		Size: 11.6 MB (11593310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; 386

```console
$ docker pull websphere-liberty@sha256:25b5fd8f820f6e4f0d517e65be18b73ad9c6e6828e4f8d43d22d9c0df1ae2246
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253944938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e593a04221c7a1bbb9fe76eb41d5b739666fbe9895ebdc67cc0b585cc37b0bf0`
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
# Sat, 29 Sep 2018 11:24:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 11:24:56 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 29 Sep 2018 11:25:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN server start && server stop && rm -rf /output/resources/security/
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
	-	`sha256:77ddd3a4752b874b931356381140ffa5173174fe30873338b4f2d139da508ca4`  
		Last Modified: Sat, 29 Sep 2018 11:30:52 GMT  
		Size: 67.2 MB (67228681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc0f1ebf731d190bfbcac366fc12ce54a5cbbb28751863b5d573dcc2fa4beab`  
		Last Modified: Sat, 29 Sep 2018 11:30:43 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e8822c88b7f50db147650988bd6be96fca2eb3d360abd90d066452873e6f0e`  
		Last Modified: Sat, 29 Sep 2018 11:30:48 GMT  
		Size: 11.6 MB (11585305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:54da4f9bdd0469aa68b3829503c3e116cc2c670208158638ee862104769b625e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281348033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960418f3a70bc7b20101d16324be0d764b1f79cbe6528390976ccefb772d4b22`
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
# Sat, 29 Sep 2018 09:20:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 09:20:10 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 29 Sep 2018 09:20:28 GMT
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
	-	`sha256:5527da62bceed4d4c85f511889c5616bec896522908acffc605e8ceee4c72ebd`  
		Last Modified: Sat, 29 Sep 2018 09:31:00 GMT  
		Size: 67.2 MB (67231643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c11424a19b694e5206aef9745467f78a1457ee54f0c100086d1e09e7e15c4d5`  
		Last Modified: Sat, 29 Sep 2018 09:30:48 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7244e921546e4b45f944ca7917eeca95d4468865bf1d06df16f76e574efeb602`  
		Last Modified: Sat, 29 Sep 2018 09:30:54 GMT  
		Size: 11.4 MB (11379511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile8` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:ab465c363e18fff15fb4afd90dcb4e04521743075e8c41bb79b5d559991b6560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.6 MB (263601734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1120e1e0a74d15ac15bd4579cf5f67855f7d8a6cc5eb63adda85d8acada5adf`
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
# Sat, 29 Sep 2018 12:42:11 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 ldapRegistry-3.0     localConnector-1.0 monitor-1.0 requestTiming-1.0 restConnector-2.0 sessionCache-1.0     sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0 webCache-1.0 webProfile-8.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sat, 29 Sep 2018 12:42:11 GMT
COPY file:2bacdb39d56c776a0d7ebecf922a9e9800e5a41f1ddc1d823ee04a029d580682 in /config/ 
# Sat, 29 Sep 2018 12:42:26 GMT
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
	-	`sha256:d2760900f81979474fab35ec85980064b834581abade4818332c00d6e28b11fa`  
		Last Modified: Sat, 29 Sep 2018 12:47:59 GMT  
		Size: 67.2 MB (67228716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b9987e09a589cb5e54a903a7009f29b3433ef017be52546058581c69805a0e`  
		Last Modified: Sat, 29 Sep 2018 12:47:53 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1f9342081919ebdfbc2bdecd87e9d5b2a3af716af4ab3b5f3238e10b4cfc90`  
		Last Modified: Sat, 29 Sep 2018 12:47:56 GMT  
		Size: 11.7 MB (11665387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
