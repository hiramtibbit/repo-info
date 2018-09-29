## `open-liberty:microProfile2`

```console
$ docker pull open-liberty@sha256:fabdd84069bdb2c8ff6c8ccd92fb36f338f1d1669929ef6816a424a93cd9095e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile2` - linux; amd64

```console
$ docker pull open-liberty@sha256:9b2e5a19b98ac99cd968df2ddf0fe0879c3a56d30023f52ddd86b1dcc60c77d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.3 MB (310307229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de7b2cbfa28e54f1ba4222361a9fa76cc6880ad4929a5bfbc0b04d8e7bdaf19`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 28 Sep 2018 19:46:33 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 28 Sep 2018 19:49:09 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 28 Sep 2018 19:49:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 28 Sep 2018 19:49:21 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 28 Sep 2018 19:49:21 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 28 Sep 2018 19:49:23 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 28 Sep 2018 19:49:23 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 28 Sep 2018 19:49:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 28 Sep 2018 19:49:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 28 Sep 2018 19:52:55 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 28 Sep 2018 19:53:07 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
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
	-	`sha256:c84aca4aa624617f6e6e40d6fa5a5d647ca26265decc2ab5b085969db4d50266`  
		Last Modified: Fri, 28 Sep 2018 19:54:25 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4c5d33c8cbd409f22e62d97692207e45190f3924dd582aa4268996dbec32ae`  
		Last Modified: Fri, 28 Sep 2018 19:56:27 GMT  
		Size: 125.2 MB (125213248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da077063d7645cc5ac99a8d5a194c245180e55ca79c2b8f013a95b70b1238bc2`  
		Last Modified: Fri, 28 Sep 2018 19:56:17 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d53015c2bf402b93af47f3b465ebdfbc09ac6bb599dc945ab1b872c133064c5`  
		Last Modified: Fri, 28 Sep 2018 19:56:17 GMT  
		Size: 812.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5479e59bcbfd3c2d624bef62ada9562067b73024944e17e0f49135d802e6e4`  
		Last Modified: Fri, 28 Sep 2018 19:59:30 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fb31ec802e58b9e91e1445aaa6b65c938a975f654eb8fa82575fdabd99ea66`  
		Last Modified: Fri, 28 Sep 2018 19:59:33 GMT  
		Size: 11.4 MB (11412558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; 386

```console
$ docker pull open-liberty@sha256:66e4f629b6b12ba12c2ca0db3d8c627608799b6b4be03a61814858c35b3ef762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298989419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9efc3658ce982b31b8a70f9b5723ce215b330e7a2f935b5382b8d046d4d5811`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Sat, 29 Sep 2018 11:09:51 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 29 Sep 2018 11:09:51 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Sat, 29 Sep 2018 11:11:07 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Sat, 29 Sep 2018 11:11:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 11:11:20 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 29 Sep 2018 11:11:21 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 29 Sep 2018 11:11:22 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 29 Sep 2018 11:11:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 11:11:22 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 29 Sep 2018 11:11:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 29 Sep 2018 11:12:52 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Sat, 29 Sep 2018 11:13:05 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
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
	-	`sha256:f7e802d0efab62dc7eea7de06cb70333fded323cc1fa7fee3e8adff7729b6bbd`  
		Last Modified: Sat, 29 Sep 2018 11:13:33 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e5507d853f14a2a327e88fd656ff894f70fe1bcca90e7023813c0b13626276`  
		Last Modified: Sat, 29 Sep 2018 11:14:49 GMT  
		Size: 125.2 MB (125213099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3549af207c0571a552585415d1250bcd6cecd46e7ff762d2ecbb89637db6d41`  
		Last Modified: Sat, 29 Sep 2018 11:14:39 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee4a3446848b5222e23ada1b2a75b73e4b24fdf7d373e15af5b34babbc57d5`  
		Last Modified: Sat, 29 Sep 2018 11:14:39 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be653cb465de3f460568f2a5ba2fd5605a247f697b85139af7025a6276d8696e`  
		Last Modified: Sat, 29 Sep 2018 11:16:40 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642f6bb153beb79dde547e77e718524835d09abfb70beade028f21c1428df988`  
		Last Modified: Sat, 29 Sep 2018 11:16:43 GMT  
		Size: 11.6 MB (11626513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:34af52f5640cb0e6ec32bb0ba60a7111f957c2340008ed3fd48ed0369708ed13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.4 MB (326358876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7be970ac0d13d89c744d5e57986f4b67344302b1c6b18ed8fcea72e8a6686e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Sat, 29 Sep 2018 09:25:10 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 29 Sep 2018 09:25:13 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Sat, 29 Sep 2018 09:27:51 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Sat, 29 Sep 2018 09:28:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 09:28:19 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 29 Sep 2018 09:28:23 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 29 Sep 2018 09:28:30 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 29 Sep 2018 09:28:31 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 09:28:33 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 29 Sep 2018 09:28:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 29 Sep 2018 09:32:20 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Sat, 29 Sep 2018 09:32:38 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
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
	-	`sha256:d64f06f9448e3b3d4ca6ec586faf17599069c2018874c65c40dbf12d110c0136`  
		Last Modified: Sat, 29 Sep 2018 09:33:58 GMT  
		Size: 437.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fcada5c62e9db25de97f1fbffc0df14c9c3c5b20ad5e3abda79d6f12a557b3`  
		Last Modified: Sat, 29 Sep 2018 09:36:34 GMT  
		Size: 125.2 MB (125213099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e31d1935a54a32b1bcb88e39e3637e630fdc059d7386debb2ff04b0334250`  
		Last Modified: Sat, 29 Sep 2018 09:36:12 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3131366c9cb6579636dec96d83769d59dc161822a525002f643126494dad01f`  
		Last Modified: Sat, 29 Sep 2018 09:36:13 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c58d6be5d81f465368d4df98d0559c8728d184e6d8fb081ed539675a507e1cd`  
		Last Modified: Sat, 29 Sep 2018 09:39:45 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6618a223387f5721843708c299260c2356b5e23dfff3f63be626e78671f252`  
		Last Modified: Sat, 29 Sep 2018 09:39:49 GMT  
		Size: 11.4 MB (11422338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile2` - linux; s390x

```console
$ docker pull open-liberty@sha256:3344593ea42b39282c0bbb6b174792f8e0e9b42321f783bc4c0707c267bbee6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (309000891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4d4ec1296f7e9ee2a43a0429224eae80edb86f3032f483795b71e7779e66de`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Sat, 29 Sep 2018 12:13:24 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 29 Sep 2018 12:13:24 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Sat, 29 Sep 2018 12:16:30 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Sat, 29 Sep 2018 12:16:52 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 12:16:58 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Sat, 29 Sep 2018 12:16:59 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 29 Sep 2018 12:17:12 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 29 Sep 2018 12:17:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 29 Sep 2018 12:17:23 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 29 Sep 2018 12:17:34 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 29 Sep 2018 12:22:11 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Sat, 29 Sep 2018 12:22:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
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
	-	`sha256:9764161a7bcecc75aef6c9bde2752713eadfb61b0528486764219e9a2c744bc0`  
		Last Modified: Sat, 29 Sep 2018 12:24:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7e7ffb9646f1a20df9ed503b9c828fdbe152d92dff1b22846a798c44a1293c`  
		Last Modified: Sat, 29 Sep 2018 12:26:22 GMT  
		Size: 125.2 MB (125213030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70069d9963a09a56da1f1137d40725e12cfd524d6911ff40279299c3a2855dae`  
		Last Modified: Sat, 29 Sep 2018 12:26:05 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f803288e9e17413cb1edd8c75aeed6b86fce0dea868d3989406dd1aef415189a`  
		Last Modified: Sat, 29 Sep 2018 12:26:05 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b38648db0a0654e3667809bfa4345ef0d4b790c369c440d768343a459f3cc9`  
		Last Modified: Sat, 29 Sep 2018 12:29:41 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62525b66dd61a02b3b0e56128cceb7272a6d77a52ff61bc90b738df31a3d242b`  
		Last Modified: Sat, 29 Sep 2018 12:29:46 GMT  
		Size: 12.1 MB (12068159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
