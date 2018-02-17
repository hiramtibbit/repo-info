## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:3ea76ade254c199059d4c852b6a9cfc1617183d6d2ffba288e98afb5c1901ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:809da7a38fe2455c87ed484333966a21b2fb3480c90fef1e246009e3594e4147
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299162222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f98e465385fcb0d3fbd9fe4f8ef659a9eb98cf885d41bc9309cfc705cdc5c4`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 23:25:30 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 25 Jan 2018 23:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 23:25:53 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 25 Jan 2018 23:26:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 25 Jan 2018 23:26:28 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 23:55:43 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Fri, 16 Feb 2018 23:55:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 00:31:14 GMT
ENV LIBERTY_VERSION=2018.2.0_0
# Sat, 17 Feb 2018 00:31:26 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 17 Feb 2018 00:31:27 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 00:31:27 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 17 Feb 2018 00:31:28 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 17 Feb 2018 00:31:29 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 17 Feb 2018 00:31:29 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 17 Feb 2018 00:31:30 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 17 Feb 2018 00:31:30 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5f9cfd3999c1db10b50cfaa3dc0325484be91e61b306f9e9296a08c4bf9eea`  
		Last Modified: Thu, 25 Jan 2018 23:29:31 GMT  
		Size: 3.0 MB (3021186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88de4e0023e254a8eada624cc8eb5469ec681eb8d467a3f36f55ca3e9be95b6`  
		Last Modified: Thu, 25 Jan 2018 23:29:41 GMT  
		Size: 124.6 MB (124580689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e748c83cad2c1d66a750c12c956fce038111435837a469a772de16b9f87baa08`  
		Last Modified: Sat, 17 Feb 2018 00:32:21 GMT  
		Size: 422.4 KB (422429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6fca39c5363b5bcbc0d718745e2d035dddac375a66857b390fc10f40990a49`  
		Last Modified: Sat, 17 Feb 2018 00:49:34 GMT  
		Size: 128.3 MB (128269424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d2cc3578f00fe95385b04ae39618811e56967d21f5240f625ef8c9dba0cdf`  
		Last Modified: Sat, 17 Feb 2018 00:49:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe5ad78c18e1dba608065543a20d5f501479b14842f715daf4fca87626c1238`  
		Last Modified: Sat, 17 Feb 2018 00:49:21 GMT  
		Size: 1.9 KB (1912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74090b7c3f2e9a8b21326883c8e957944199eaecfe66ebef1d3a615acbb174a`  
		Last Modified: Sat, 17 Feb 2018 00:49:21 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:0b05b3b5d42ecb51643d8f00707a7b73a8237bed141c2fc16fc8cbf3a1e8c547
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.6 MB (289569627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e781e3ec8e8bc885518fc71df4f4fe03224a6c71cc513511815967e01127e05`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Jan 2018 05:28:53 GMT
ADD file:a2fdeed58b54171aafdc4d0d63bbc2233b05616df11ca447de69925eb2544458 in / 
# Fri, 26 Jan 2018 05:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 05:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 05:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 05:28:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 05:28:57 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 06:45:56 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Jan 2018 06:48:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 06:54:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Fri, 26 Jan 2018 06:55:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 26 Jan 2018 06:55:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 11:47:14 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Fri, 26 Jan 2018 11:47:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 11:53:25 GMT
ENV LIBERTY_VERSION=2018.1.0_0
# Fri, 26 Jan 2018 11:53:44 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 26 Jan 2018 11:54:38 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 11:54:38 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 26 Jan 2018 11:54:39 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 26 Jan 2018 12:02:04 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 26 Jan 2018 12:04:04 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 26 Jan 2018 12:04:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 26 Jan 2018 12:04:04 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:69bfba48bfd5dab360bc002520a76059d75c25a05130328fdd48cc9a6661c6bd`  
		Last Modified: Fri, 26 Jan 2018 06:02:06 GMT  
		Size: 43.2 MB (43189118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4135ad7a18f392f5676d43b00b3662be9c56308b19ffbbe5dac1cd4ce13c3386`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ac84c4380a8c58145cd5563c2edecb0894b6a269bf9e88282cb1280fe4fe57`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e68e48a9a4dc516c724d5aca5ea687dddfca2426ba5bd53edd733f8de37790`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e7a06bcfb60f6c102866e83fb5998ef9b99f2baa2497da175df01f2a3bf03`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ec7589bebfa4e2385a1270bcef098c95f1e6a04d81308f5df3d5c97332c536`  
		Last Modified: Fri, 26 Jan 2018 07:36:16 GMT  
		Size: 2.9 MB (2877317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b2dbd5a7bc16af051c5e8c93a2e7ede819508f46f993a69ed3713f0cbcaf6e`  
		Last Modified: Fri, 26 Jan 2018 07:36:31 GMT  
		Size: 113.3 MB (113344218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed64f438cc75d1752b8ac770ed83792bd31b7d88d3d00bef68de465f6d5555`  
		Last Modified: Fri, 26 Jan 2018 12:37:13 GMT  
		Size: 421.3 KB (421346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944285e878a7a9d16f301ad1680a22e04ba8aa0c4529d06d9f3fdc1984b65b2b`  
		Last Modified: Fri, 26 Jan 2018 12:37:33 GMT  
		Size: 129.7 MB (129732660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6fae08aa98eeca2cb2e8dc1f746921b444e7a394bcc1d5f7a62797216843b5`  
		Last Modified: Fri, 26 Jan 2018 12:37:12 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc626e9407dbcaed01f06896a65f0efbddcea05b857cc0f516b7ece4b3371db`  
		Last Modified: Fri, 26 Jan 2018 12:37:12 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907e6247f7f8694bfc25afab918492e8016e63b5aabebb16918a8d985b8273c7`  
		Last Modified: Fri, 26 Jan 2018 12:37:13 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:2a5d85b2ab1e7b6438c539dd81ba0f593fbf247e73cd022fa75a9304fbfc46bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315063026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091e876e837f3ff27b9451bdbb12c48279cd2946890369edbcb5109b22ace841`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Jan 2018 03:41:19 GMT
ADD file:7bb1badf2ddc010aa8511773b3116d31f6c0e7752d9a5fb4d51d3239ac648013 in / 
# Fri, 26 Jan 2018 03:41:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 03:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 03:41:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 03:41:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 03:41:34 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 03:59:26 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Jan 2018 03:59:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:00:01 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Fri, 26 Jan 2018 04:02:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 26 Jan 2018 04:02:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 06:29:22 GMT
LABEL maintainer=Arthur De Magalhaes <arthurdm@ca.ibm.com> (@arthurdm)
# Sat, 17 Feb 2018 06:30:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 06:38:16 GMT
ENV LIBERTY_VERSION=2018.2.0_0
# Sat, 17 Feb 2018 06:39:38 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Sat, 17 Feb 2018 06:39:39 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 06:39:40 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 17 Feb 2018 06:39:47 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 17 Feb 2018 06:39:50 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 17 Feb 2018 06:39:51 GMT
COPY file:3b23d7d17672e2c49786942609f319a90591738e9dfd67f95b1df374561c29ce in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Sat, 17 Feb 2018 06:39:52 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 17 Feb 2018 06:39:53 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0ee828c1a6b9931787bac2eb1e3d18afb13755be0354a6d602bd7113a54bf77b`  
		Last Modified: Fri, 26 Jan 2018 03:43:47 GMT  
		Size: 45.3 MB (45288935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8729e11c4446b648e4410135637565cce4779fc24e3f0580f7dfe06121ac40ee`  
		Last Modified: Fri, 26 Jan 2018 03:43:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2409d39f3293be5f0d6732e6f078aaaf34adeaffd20d3d424229f7d1d63d8e2b`  
		Last Modified: Fri, 26 Jan 2018 03:43:34 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4098a4920a587b4d23814c5ad76a2876ddf59ed187558b9a55b577df2a365ec8`  
		Last Modified: Fri, 26 Jan 2018 03:43:34 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aafbe2bba3c8b964fab243e2c86b4ab84fc06465267d79d4e817b47e33d4b10`  
		Last Modified: Fri, 26 Jan 2018 03:43:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a24ec9d559ffc7dd59bc649cb749aedaca91d9a2a530dc2ee75c2cc5d7884d5`  
		Last Modified: Fri, 26 Jan 2018 04:07:37 GMT  
		Size: 2.9 MB (2878295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f192a83bd42731d61133ebd80e4b43b7e400d310460f7870979726ae36385676`  
		Last Modified: Fri, 26 Jan 2018 04:07:55 GMT  
		Size: 138.2 MB (138167524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a465bcb29cafe26aeeae8df674056de18be9a5085015737cb6bc2db3005b30e`  
		Last Modified: Sat, 17 Feb 2018 06:40:05 GMT  
		Size: 453.7 KB (453655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3a04de470081645f93494f323261c3e83cc38d0be1e5603cb26939bea4274a`  
		Last Modified: Sat, 17 Feb 2018 06:41:56 GMT  
		Size: 128.3 MB (128269514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215a0fea257d15fddc079964beeec6546f412ab5389802088fbce222916947ed`  
		Last Modified: Sat, 17 Feb 2018 06:41:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c7811c514c3226f36214318bb83923a53e99ead1d8d053f75e45bc7f364da`  
		Last Modified: Sat, 17 Feb 2018 06:41:41 GMT  
		Size: 1.9 KB (1949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc0809fc3539e5211a7d45713b95c0fc0ea95d655855f630ad1f905fafaecc1`  
		Last Modified: Sat, 17 Feb 2018 06:41:41 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:ec395306c392e2c0232b5ca23e393aff50e4d3ec3af0de935da78c98009a0f28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299003266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2936d0d2a888977a2fef23e1896587c96949e84e71511471f6bbe7c689ed51d2`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 26 Jan 2018 14:15:44 GMT
ADD file:f981fcb775310ce0cf30f037ab72494e51ec03ee704617f95f2f2d324a5075fa in / 
# Fri, 26 Jan 2018 14:15:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 14:15:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 14:15:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 14:15:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:32:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 26 Jan 2018 14:32:23 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:32:23 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Fri, 26 Jan 2018 14:33:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 26 Jan 2018 14:33:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 14:55:24 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Fri, 26 Jan 2018 14:55:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:55:30 GMT
ENV LIBERTY_VERSION=2018.1.0_0
# Fri, 26 Jan 2018 14:55:48 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 26 Jan 2018 14:55:48 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 14:55:48 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 26 Jan 2018 14:55:48 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 26 Jan 2018 14:55:49 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 26 Jan 2018 14:55:49 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 26 Jan 2018 14:55:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 26 Jan 2018 14:55:50 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:43b18e89cbaed260beaf040713aeb6dffcd9863f30ae9aceb3e07dfe2c08d0f7`  
		Last Modified: Fri, 26 Jan 2018 14:16:45 GMT  
		Size: 42.0 MB (41952249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7bf346a9767979d87f9cbc89e6c6f896a0aa6cdf7e4e40aa10408a7cc70fd2`  
		Last Modified: Fri, 26 Jan 2018 14:16:37 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cba14c7fd1df11ef843ea83e937accf9351d5e0f413bbdfb88f4adea42b2847`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b3be61aa5dc1c2132b4a5dfddeb3fe0e0e49521c64565f9c0f3662850afd12`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ecf42732558b6296cc0450a556d0af95c831d12ee437da72f718bfecdcfce7`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3330a7f6c695c134d16dbfc3207a1f59a5f4127958fe419c3ebe931930f79b6`  
		Last Modified: Fri, 26 Jan 2018 14:35:02 GMT  
		Size: 2.8 MB (2765610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b0307796f291d465f73edda89ae92ce7d0043c12860f7e3bcb4dba920a9d38`  
		Last Modified: Fri, 26 Jan 2018 14:35:14 GMT  
		Size: 124.1 MB (124119797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075172e1914812cd22f933e1006ca4c31c7b3c41416853ddf610b5a15499d105`  
		Last Modified: Fri, 26 Jan 2018 14:56:50 GMT  
		Size: 427.9 KB (427943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f0ba75d7ba889434edda38b60be0dcf068a8579b55ec599fe5363461390f6b`  
		Last Modified: Fri, 26 Jan 2018 14:56:59 GMT  
		Size: 129.7 MB (129732694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f38554fcb60d854e10830fb39dd399bd975f0ba464b2177a6c694c3cc4f4ff8`  
		Last Modified: Fri, 26 Jan 2018 14:56:49 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53241298a7a804490ff4387d144140343c428c658afdfce2aded4dc9846cb4db`  
		Last Modified: Fri, 26 Jan 2018 14:56:49 GMT  
		Size: 1.9 KB (1901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f614f0de425b5de8a6b8cacb1f2511ed1fd8185ea4af44f7beaf48cac9da91`  
		Last Modified: Fri, 26 Jan 2018 14:56:49 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
